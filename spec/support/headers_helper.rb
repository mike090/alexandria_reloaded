# frozen_string_literal: true

class HeadersHelper
  def initialize
    @data = Hash.new { |hash, key| hash[key] = [] }
  end

  def [](key)
    @data[key]
  end

  def each
    @data.each do |header, val_array|
      header_value = val_array.map do |item|
        case item
        when Hash then item.map { |key, val| "#{key}=#{val}" }.join(' ')
        else
          item.to_s
        end
      end.join(' ')
      yield header, header_value
    end
  end
end
