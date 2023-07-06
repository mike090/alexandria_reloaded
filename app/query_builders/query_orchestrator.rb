# frozen_string_literal: true

class QueryOrchestrator
  ACTIONS = %i[paginate sort filter eager_load].freeze

  def initialize(scope:, params:, actions: :all)
    @initial_scope = scope
    @params = params
    @actions = actions == :all ? ACTIONS : actions
  end

  def run
    return @scope if @scope

    @scope = @initial_scope
    @actions.each do |action|
      raise InvalidBuilderAction, "#{action} not permitted." unless ACTIONS.include? action

      send(action)
    end
    @scope
  end

  private

  def paginate
    @scope = Paginator.new(@scope, @params).paginate
  end

  def sort
    @scope = Sorter.new(@scope, @params).sort
  end

  def filter
    @scope = Filter.new(@scope, @params).filter
  end

  def eager_load
    @scope = EagerLoader.new(@scope, @params).load
  end
end
