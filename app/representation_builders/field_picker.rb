# frozen_string_literal: true

class FieldPicker
  def initialize(presenter)
    @presenter = presenter
    @fields = @presenter.params['fields'].blank? ? pickable : validate_fields(@presenter.params['fields'])
  end

  def pick
    @fields.each do |field|
      value = @presenter.send(field)
      @presenter.data[field] = value
    end
    @presenter
  end

  private

  def validate_fields(fields)
    verifiable = fields.split(',')
    invalid = verifiable - pickable
    error!(invalid) unless invalid.empty?
    verifiable
  end

  def pickable
    @presenter.class.build_attributes
  end

  def error!(fields)
    raise RepresentationBuilderError.new("fields=#{fields.join(',')}"),
          "Invalid Field Pick. Allowed fields: #{@presenter.class.build_attributes.join(',')}"
  end
end
