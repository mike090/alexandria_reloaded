# frozen_string_literal: true

module Helpers
  def json_body
    JSON.parse(response.body)
  end

  def response_data
    json_body['data']
  end

  def authenticate_client(api_key: nil)
    unless respond_to? :headers
      raise NoMethodError,
            "'headers' are not defined. Please, add line 'include_context \"request headers\" in example group"
    end

    api_key ||= default_api_key
    api_key = create(api_key) if api_key.is_a?(Symbol)
    headers['HTTP_AUTHORIZATION'] << 'Alexandria-Token'
    headers['HTTP_AUTHORIZATION'] << { api_key: "#{api_key.id}:#{api_key.key}" }
  end

  def authenticate_user(api_key: nil, user: nil, access_token: nil)
    unless respond_to? :headers
      raise NoMethodError,
            "'headers' are not defined. Please, add line 'include_context \"request headers\" in example group"
    end

    access_token ||= try(:access_token) || create_access_token(api_key:, user:)
    headers['HTTP_AUTHORIZATION'] << "access_token=#{access_token.user_id}:#{access_token.generate_token}"
  end

  RSpec.configure do |conf|
    conf.include Helpers
  end

  private

  def create_access_token(api_key:, user:)
    api_key ||= default_api_key
    api_key = create(api_key) if api_key.is_a?(Symbol)
    user ||= default_user
    user = create(user) if user.is_a?(Symbol)
    AccessToken.create(user:, api_key:)
  end

  def default_api_key
    try(:api_key) || ApiKey.first || :api_key
  end

  def default_user
    try(:user) || User.first || :user
  end
end
