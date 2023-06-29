# frozen_string_literal: true

class BasePresenter
  @build_attributes = []

  class << self
    attr_reader :build_attributes

    def build_with(*build_attrs)
      @build_attributes = build_attrs
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
