# frozen_string_literal: true

module Authentication
  include ActiveSupport::SecurityUtils
  extend ActiveSupport::Concern

  AUTH_SCHEME = 'Alexandria-Token'

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
    @credentials ||= begin
      nil_cedentials =
        { 'api_key' => { 'id' => nil, 'key' => nil }, 'access_token' => { 'user_id' => nil, 'token' => nil } }
      nil_cedentials.deep_merge(
        authorization_request.scan(/(\w+)[:=] ?"?([\w|:]+)"?/).to_h.slice(*nil_cedentials.keys).to_h do |key, values|
          [key, nil_cedentials[key].keys.zip(values.split(':')).to_h]
        end
      )
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
