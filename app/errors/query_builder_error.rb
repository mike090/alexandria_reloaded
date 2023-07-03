# frozen_string_literal: true

class QueryBuilderError < StandardError
  attr_reader :invalid_params

  def initialize(invalid_params)
    @invalid_params = invalid_params
    super
  end
end
