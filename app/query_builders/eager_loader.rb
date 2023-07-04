# frozen_string_literal: true

class EagerLoader
  def initialize(scope, params)
    @scope = scope
    @presenter = "#{@scope.model}Presenter".constantize
    @embed = params['embed'] ? params['embed'].split(',') : []
    @include = params['include'] ? params['include'].split(',') : []
  end

  def load
    return @scope unless @embed.any? || @include.any?

    validate!('embed', @embed)
    validate!('include', @include)

    @scope.includes(*(@embed + @include).uniq)
  end

  private

  def validate!(param_name, params)
    params.each do |param|
      unless @presenter.relations.include?(param)
        raise QueryBuilderError.new("#{param_name}=#{param}"),
              "Invalid #{param_name}. Allowed relations: #{@presenter.relations.join(', ')}"
      end
    end
  end
end
