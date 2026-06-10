# frozen_string_literal: true

module Lithic
  module Resources
    class TransactionMonitoring
      # @return [Lithic::Resources::TransactionMonitoring::Cases]
      attr_reader :cases

      # @return [Lithic::Resources::TransactionMonitoring::Queues]
      attr_reader :queues

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @cases = Lithic::Resources::TransactionMonitoring::Cases.new(client: client)
        @queues = Lithic::Resources::TransactionMonitoring::Queues.new(client: client)
      end
    end
  end
end
