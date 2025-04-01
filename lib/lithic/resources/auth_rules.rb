# frozen_string_literal: true

module Lithic
  module Resources
    class AuthRules
      # @return [Lithic::Resources::AuthRules::V2]
      attr_reader :v2

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @v2 = Lithic::Resources::AuthRules::V2.new(client: client)
      end
    end
  end
end
