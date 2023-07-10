# frozen_string_literal: true

class BasePresenter
  include Rails.application.routes.url_helpers

  CLASS_ATTRIBUTES = {
    build_with: :build_attributes,
    related_to: :relations,
    sort_by: :sort_attributes,
    filter_by: :filter_attributes
  }.freeze

  CLASS_ATTRIBUTES.each_value { |variable| instance_variable_set("@#{variable}", []) }

  class << self
    attr_reader(*CLASS_ATTRIBUTES.values)

    CLASS_ATTRIBUTES.except(:build_with, :related_to).each do |method_name, variable|
      define_method method_name do |*args|
        instance_variable_set("@#{variable}", args.map(&:to_s))
      end
    end

    def build_with(*args)
      @build_attributes = args.map(&:to_s)
      @build_attributes.each do |attribute|
        define_method(attribute.to_sym) { @model.send(attribute) }
      end
    end

    def related_to(*args)
      @relations = args.map(&:to_s)
      @relations.each do |relation|
        define_method(relation.to_sym) { @model.send(relation) }
      end
    end
  end

  attr_reader :params, :data

  def initialize(model, params, options = {})
    @model = model
    @params = params
    @options = options
    @data = HashWithIndifferentAccess.new
  end

  def relations
    @relations ||= @model.class.reflect_on_all_associations.to_h do |association|
      [association.name.to_s, association]
    end.slice(*self.class.relations)
  end

  def build(actions)
    actions.each { |action| send(action) }
    self
  end

  def pick_fields
    FieldPicker.new(self).pick
  end

  def pick_embeds
    EmbedPicker.new(self).embed
  end

  def as_json(*)
    @data
  end
end
