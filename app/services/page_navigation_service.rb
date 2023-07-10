# frozen_string_literal: true

class PageNavigationService
  def initialize(scope, url_or_path, query_params)
    @scope = scope
    @prefix = url_or_path
    @query_params = query_params
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
    params[:first] = link_for(1) unless @scope.first_page?
    params[:prev] = link_for(@scope.prev_page) if @scope.prev_page
    params[:next] = link_for(@scope.next_page) if @scope.next_page
    params[:last] = link_for(@scope.total_pages) unless @scope.last_page?
  end

  def link_for(page)
    "#{@prefix}?#{@query_params.merge({ 'page' => page, 'per' => @scope.limit_value }).to_param}"
  end
end
