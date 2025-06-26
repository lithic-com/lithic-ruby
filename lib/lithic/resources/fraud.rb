# frozen_string_literal: true

module Lithic
  module Resources
    class Fraud
      # @return [Lithic::Resources::Fraud::Transactions]
      attr_reader :transactions

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @transactions = Lithic::Resources::Fraud::Transactions.new(client: client)
      end
    end
  end
end
