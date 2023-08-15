# frozen_string_literal: true

module EmailConfirmation
  class << self
    def new(**params)
      Initialization.new(**params)
    end

    def find(token)
      Completion.new(token)
    end
  end
end
