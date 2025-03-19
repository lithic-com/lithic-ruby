# frozen_string_literal: true

module Lithic
  module Resources
    class Transfers
      # Transfer funds between two financial accounts or between a financial account and
      #   card
      #
      # @param params [Lithic::Models::TransferCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
      #     This should always be a positive value.
      #
      #   @option params [String] :from Globally unique identifier for the financial account or card that will send the
      #     funds. Accepted type dependent on the program's use case.
      #
      #   @option params [String] :to Globally unique identifier for the financial account or card that will receive
      #     the funds. Accepted type dependent on the program's use case.
      #
      #   @option params [String] :token Customer-provided token that will serve as an idempotency token. This token will
      #     become the transaction token.
      #
      #   @option params [String] :memo Optional descriptor for the transfer.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Transfer]
      def create(params)
        parsed, options = Lithic::Models::TransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/transfer",
          body: parsed,
          model: Lithic::Models::Transfer,
          options: options
        )
      end

      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
