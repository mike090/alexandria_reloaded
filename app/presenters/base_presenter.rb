# frozen_string_literal: true

class BasePresenter
  include Rails.application.routes.url_helpers

  CLASS_METHODS = {
    build_with: :build_attributes,
    related_to: :relations,
    sort_by: :sort_attributes,
    filter_by: :filter_attributes
  }.freeze

  class << self
    CLASS_METHODS.each_value do |attr_name|
      define_method attr_name do
        instance_variable_set("@#{attr_name}", []) unless instance_variable_defined?("@#{attr_name}")
        instance_variable_get("@#{attr_name}")
      end
    end

    CLASS_METHODS.except(:build_with, :related_to).each do |method_name, variable|
      define_method method_name do |*args|
        instance_variable_set("@#{variable}", args.map(&:to_s))
      end
    end

    %i[build_with related_to].each do |method_name|
      define_method method_name do |*args|
        attr_name = CLASS_METHODS[method_name]
        instance_variable_set("@#{attr_name}", args.map(&:to_s))
        args.each do |attribute|
          define_method(attribute.to_sym) { @model.send(attribute) }
        end
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

  protected

  attr_reader :model
end
