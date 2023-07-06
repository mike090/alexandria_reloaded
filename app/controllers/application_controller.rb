# frozen_string_literal: true

class ApplicationController < ActionController::API
  rescue_from QueryBuilderError, with: :builder_error
  rescue_from RepresentationBuilderError, with: :builder_error

  protected

  def builder_error(error)
    render status: 422, json: {
      error: {
        type: error.class,
        message: error.message,
        invalid_params: error.invalid_params
      }
    }
  end

  def orchestrate_query(scope, actions = :all)
    QueryOrchestrator.new(
      scope:,
      params: request.query_parameters,
      actions:
    ).run
  end

  def embed_page_navigation(scope)
    page_navigator = PageNavigationService.new(scope)
    navigation_links = page_navigator.navigation.each_with_object([]) do |(k, v), links|
      query_params = request.query_parameters.merge(v).to_param
      links << "<#{current_url}?#{query_params}>; rel=\"#{k}\""
    end.join(', ')
    response.headers['Links'] = navigation_links unless navigation_links.blank?
  end

  private

  def current_url
    "#{request.base_url}#{request.path}"
  end
end
