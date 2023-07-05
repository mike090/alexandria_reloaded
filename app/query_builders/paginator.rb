# frozen_string_literal: true

class Paginator
  def initialize(scope, params)
    @params = params
    @page = validate_param!('page', @params['page']) || 1
    @page_size = validate_param!('per', @params['per']) || 10
    @scope = scope.page(@page).per(@page_size)
  end

  def paginate
    @scope
  end

  def navigation_params
    @navigation_params ||= begin
      params = {}
      params[:first] = { 'page' => 1, 'per' => @scope.limit_value } unless @scope.first_page?
      params[:prev] = { 'page' => @scope.prev_page, 'per' => @scope.limit_value } if @scope.prev_page
      params[:next] = { 'page' => @scope.next_page, 'per' => @scope.limit_value } if @scope.next_page
      params[:last] = { 'page' => @scope.total_pages, 'per' => @scope.limit_value } unless @scope.last_page?
      params
    end
  end

  private

  def validate_param!(param_name, value)
    return unless value
    return value if value.instance_of?(Integer) && value.positive?
    return value.to_i if value.instance_of?(String) && value.to_i.positive?

    raise QueryBuilderError.new("#{param_name}=#{value}"),
          'Invalid Pagination params. Only natural integers are supported for "page" and "per".'
  end
end
