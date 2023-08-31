# frozen_string_literal: true

class Authenticator
  include ActiveSupport::SecurityUtils

  NIL_CREDENTIALS = {
    'api_key' => {
      'id' => nil,
      'key' => nil
    },
    'access_token' => {
      'user_id' => nil,
      'token' => nil
    }
  }.freeze

  def initialize(authorization)
    @authorization = authorization
  end

  def api_key
    @api_key ||= compute_api_key
  end

  def access_token
    @access_token ||= compute_access_token
  end

  private

  def compute_api_key
    return nil unless credentials['api_key']&.all?

    id = credentials.dig('api_key', 'id')
    api_key = ApiKey.activated.find_by(id:)
    api_key if api_key && secure_compare_with_hashing(api_key.key, credentials.dig('api_key', 'key'))
  end

  def compute_access_token
    return nil unless credentials['access_token']&.all?

    user_id = credentials.dig('access_token', 'user_id')
    token = credentials.dig('access_token', 'token')

    access_token = AccessToken.find_by(user_id:, api_key:)

    return nil unless access_token

    if access_token.expired?
      access_token.destroy
      return nil
    end

    return access_token if access_token.authenticate(token)
  end

  def credentials
    @credentials ||= NIL_CREDENTIALS.deep_merge(request_credentials)
  end

  def request_credentials
    @authorization.scan(/(\w+)[:=] ?"?([\w|:]+)"?/).to_h.slice(*NIL_CREDENTIALS.keys).to_h do |key, values|
      [key, NIL_CREDENTIALS[key].keys.zip(values.split(':')).to_h]
    end
  end

  def secure_compare_with_hashing(val_a, val_b)
    secure_compare(Digest::SHA1.hexdigest(val_a), Digest::SHA1.hexdigest(val_b))
  end
end
