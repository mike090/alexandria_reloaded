# frozen_string_literal: true

class ApplicationController < ActionController::API
  rescue_from QueryBuilderError, with: :builder_error
  rescue_from RepresentationBuilderError, with: :builder_error
  rescue_from ActiveRecord::RecordNotFound, with: :resource_not_found

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

  def resource_not_found
    render status: 404
  end

  def unprocessable_entity!(resource)
    render status: :unprocessable_entity, json: {
      error: {
        message: "Invalid parameters for resource #{resource.class}.",
        invalid_params: resource.errors
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
    page_navigator = PageNavigationService.new(scope, current_url, request.query_parameters)
    navigation_links = page_navigator.navigation.each_with_object([]) do |(rel, link), links|
      links << "<#{link}>; rel=\"#{rel}\""
    end.join(', ')
    response.headers['Links'] = navigation_links unless navigation_links.blank?
  end

  def serialize(data)
    {
      json: Alexandria::Serializer.new(
        data:,
        params:,
        actions: %i[pick_fields pick_embeds]
      )
    }
  end

  private

  def current_url
    "#{request.base_url}#{request.path}"
  end
end
