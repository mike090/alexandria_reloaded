# frozen_string_literal: true

module Helpers
  def json_body
    JSON.parse(response.body)
  end

  def response_data
    json_body['data']
  end

  RSpec.configure do |conf|
    conf.include Helpers
  end
end
