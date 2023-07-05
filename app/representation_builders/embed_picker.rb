# frozen_string_literal: true

class EmbedPicker
  def initialize(presenter)
    @presenter = presenter
    raw_embeds = (@presenter.params['embed'].to_s.split(',') + @presenter.params['include'].to_s.split(',')).uniq
    @embeds = validate_embeds(raw_embeds)
  end

  def embed
    return @presenter if @embeds.empty?

    @embeds.each { |embed| @presenter.data[embed] = build_embed(embed) }
    @presenter
  end

  private

  def build_embed(embed)
    entity = @presenter.send(embed)
    relation = @presenter.relations[embed]
    embed_presenter_class = "#{relation.class_name}Presenter".constantize
    if relation.collection?
      entity.order(:id).map { |entity_item| embed_presenter_class.new(entity_item, {}).pick_fields.data }
    else
      entity ? embed_presenter_class.new(entity, {}).pick_fields.data : {}
    end
  end

  def validate_embeds(embeds)
    invalid_embeds = embeds - @presenter.class.relations
    error!(invalid_embeds) unless invalid_embeds.empty?
    embeds
  end

  def error!(embeds)
    raise RepresentationBuilderError.new("embed=#{embeds.join(',')}"),
          "Invalid Embed. Allowed relations: (#{@presenter.class.relations.join(',')})"
  end
end
