# frozen_string_literal: true

class PageNavigationService
  def initialize(scope)
    @scope = scope
  end

  def navigation
    @navigation ||= begin
      params = {}
      fillup(params) if @scope.respond_to?(:current_page) && @scope.total_count.positive?
      params
    end
  end

  private

  def fillup(params)
    params[:first] = { 'page' => 1, 'per' => @scope.limit_value } unless @scope.first_page?
    params[:prev] = { 'page' => @scope.prev_page, 'per' => @scope.limit_value } if @scope.prev_page
    params[:next] = { 'page' => @scope.next_page, 'per' => @scope.limit_value } if @scope.next_page
    params[:last] = { 'page' => @scope.total_pages, 'per' => @scope.limit_value } unless @scope.last_page?
  end
end
