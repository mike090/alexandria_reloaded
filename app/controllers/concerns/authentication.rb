# frozen_string_literal: true

module Authentication
  include ActiveSupport::SecurityUtils
  extend ActiveSupport::Concern

  AUTH_SCHEME = 'Alexandria-Token'
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

  included do
    before_action :validate_auth_scheme
    before_action :authenticate_client
  end

  private

  def validate_auth_scheme
    return if authorization_request.match(/^#{AUTH_SCHEME} /)

    unauthorized!('Client Relam')
  end

  def authenticate_client
    unauthorized!('Client Relam') unless api_key
  end

  def unauthorized!(relam)
    headers['WWW-Authenticate'] = %(#{AUTH_SCHEME} relam="#{relam}")
    render(status: 401)
  end

  def authorization_request
    @authorization_request ||= request.authorization.to_s
  end

  def credentials
    @credentials ||= NIL_CREDENTIALS.deep_merge(request_credentials)
  end

  def request_credentials
    authorization_request.scan(/(\w+)[:=] ?"?([\w|:]+)"?/).to_h.slice(*NIL_CREDENTIALS.keys).to_h do |key, values|
      [key, NIL_CREDENTIALS[key].keys.zip(values.split(':')).to_h]
    end
  end

  def api_key
    @api_key ||= compute_api_key
  end

  def compute_api_key
    return nil unless credentials['api_key']&.all?

    id = credentials.dig('api_key', 'id')
    api_key = ApiKey.activated.find_by(id:)
    api_key if api_key && secure_compare_with_hashing(api_key.key, credentials.dig('api_key', 'key'))
  end

  def secure_compare_with_hashing(val_a, val_b)
    secure_compare(Digest::SHA1.hexdigest(val_a), Digest::SHA1.hexdigest(val_b))
  end
end
