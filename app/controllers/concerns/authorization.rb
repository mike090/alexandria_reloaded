# frozen_string_literal: true

module Authorization
  extend ActiveSupport::Concern
  include Pundit::Authorization

  included do
    rescue_from Pundit::NotAuthorizedError, with: :forbidden
  end

  def authorize_action
    return authorize(controller_name.classify.constantize) if action_name.in? %w[index create]

    authorize resource
  end

  def forbidden
    render status: 403
  end
end
