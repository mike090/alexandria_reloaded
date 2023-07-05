# frozen_string_literal: true

module Alexandria
  class Serializer
    def initialize(data:, params:, actions:, options: {})
      @data = data
      @params = params
      @actions = actions
      @options = options
    end

    def to_json(*_args)
      {
        data: build_data
      }.to_json
    end

    private

    def build_data
      if @data.respond_to?(:map)
        @data.map { |entity| presenter(entity).new(entity, @params).build(@actions) }
      else
        presenter(@data).new(@data, @params).build(@actions)
      end
    end

    def presenter(entity)
      @presenter ||= "#{entity.class}Presenter".constantize
    end
  end
end
