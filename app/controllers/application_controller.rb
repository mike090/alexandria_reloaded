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
    QueryOrchestrator.new(scope:,
                          params: request.query_parameters,
                          request:,
                          response:,
                          actions:).run
  end

  def eager_load(scope)
    EagerLoader.new(scope, request.query_parameters).load
  end

  def filter(scope)
    Filter.new(scope, request.query_parameters).filter
  end

  def paginate(scope)
    @paginator ||= Paginator.new(scope, request.query_parameters)
    response.headers['Links'] = navigation_links
    @paginator.paginate
  end

  def sort(scope)
    Sorter.new(scope, request.query_parameters).sort
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
