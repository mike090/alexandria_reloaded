# frozen_string_literal: true

module ResourceHelpers
  def pluralized_name
    @pluralized_name ||= resource_name.to_s.pluralize
  end

  def model
    @model ||= resource_name.to_s.classify.constantize
  end

  def presenter
    @presenter ||= "#{resource_name}_presenter".classify.constantize
  end

  def invalid_resource_params
    @invalid_resource_params ||= attributes_for(resource_name).merge(invalid_attributes)
  end
end
