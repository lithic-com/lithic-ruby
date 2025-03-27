# frozen_string_literal: true

module Lithic
  module Resources
    class AuthRules
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
