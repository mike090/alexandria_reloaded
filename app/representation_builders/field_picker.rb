# frozen_string_literal: true

class FieldPicker
  def initialize(presenter, fields = '')
    @presenter = presenter
    @fields = fields
  end

  def pick
    (validated_fields || pickable).each do |field|
      value = @presenter.send(field)
      @presenter.data[field] = value
    end
    @presenter
  end

  private

  def validated_fields
    return nil if @fields.blank?

    validated = @fields.split(',').map(&:to_sym) & pickable
    validated.any? ? validated : nil
  end

  def pickable
    @presenter.class.build_attributes
  end
end
