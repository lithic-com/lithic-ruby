# frozen_string_literal: true

module Lithic
  module Resources
    class Reports
      # @return [Lithic::Resources::Reports::Settlement]
      attr_reader :settlement

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @settlement = Lithic::Resources::Reports::Settlement.new(client: client)
      end
    end
  end
end
