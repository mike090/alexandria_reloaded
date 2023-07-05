# frozen_string_literal: true

class QueryOrchestrator
  ACTIONS = %i[paginate sort filter eager_load].freeze

  def initialize(scope:, params:, request:, response:, actions: :all)
    @initial_scope = scope
    @params = params
    @request = request
    @response = response
    @actions = actions == :all ? ACTIONS : actions
  end

  def run
    return @scope if @scope

    @scope = @initial_scope
    @actions.each do |action|
      raise InvalidBuilderAction, "#{action} not permitted." unless ACTIONS.include? action

      @scope = send(action)
    end
    @scope
  end

  private

  def paginate
    current_url = "#{@request.base_url}#{@request.path}"
    paginator = Paginator.new(@scope, @params)
    navigation_links = paginator.navigation_params.each_with_object([]) do |(k, v), links|
      query_params = @params.merge(v).to_param
      links << "<#{current_url}?#{query_params}>; rel=\"#{k}\""
    end.join(', ')
    @response.headers['Links'] = navigation_links
    paginator.paginate
  end

  def sort
    Sorter.new(@scope, @params).sort
  end

  def filter
    Filter.new(@scope, @params).filter
  end

  def eager_load
    EagerLoader.new(@scope, @params).load
  end
end
