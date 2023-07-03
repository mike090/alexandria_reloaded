# frozen_string_literal: true

class ApplicationController < ActionController::API
  rescue_from QueryBuilderError, with: :query_builder_error

  protected

  def query_builder_error(error)
    render status: 422, json: {
      error: {
        message: error.message,
        invalid_params: error.invalid_params
      }
    }
  end

  def paginate(scope)
    @paginator ||= Paginator.new(scope, request.query_parameters)
    response.headers['Links'] = navigation_links
    @paginator.paginate
  end

  def current_url
    "#{request.base_url}#{request.path}"
  end

  private

  def navigation_links
    @navigation_links ||= @paginator.navigation_params.each_with_object([]) do |(k, v), links|
      query_params = request.query_parameters.merge(v).to_param
      links << "<#{current_url}?#{query_params}>; rel=\"#{k}\""
    end.join(', ')
  end
end
