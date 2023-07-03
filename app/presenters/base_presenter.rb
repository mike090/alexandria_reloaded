# frozen_string_literal: true

class BasePresenter
  CLASS_ATTRIBUTES = {
    build_with: :build_attributes,
    related_to: :relations,
    sort_by: :sort_attributes,
    filter_by: :filter_attributes
  }.freeze

  CLASS_ATTRIBUTES.each_value { |variable| instance_variable_set("@#{variable}", []) }

  class << self
    attr_reader(*CLASS_ATTRIBUTES.values)

    CLASS_ATTRIBUTES.except(:build_with).each do |method_name, variable|
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
  end

  attr_reader :data

  def initialize(model, options = {})
    @model = model
    @options = options
    @data = HashWithIndifferentAccess.new
  end

  def as_json(*)
    @data
  end
end
