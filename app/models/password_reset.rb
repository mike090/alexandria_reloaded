# frozen_string_literal: true

module PasswordReset
  class << self
    def new(params)
      Initialization.new(**params)
    end

    def find(token)
      Completion.new(token)
    end
  end
end
