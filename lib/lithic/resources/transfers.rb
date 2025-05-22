# frozen_string_literal: true

module Lithic
  module Resources
    class Transfers
      # Some parameter documentations has been truncated, see
      # {Lithic::Models::TransferCreateParams} for more details.
      #
      # Transfer funds between two financial accounts or between a financial account and
      # card
      #
      # @overload create(amount:, from:, to:, token: nil, memo: nil, request_options: {})
      #
      # @param amount [Integer] Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
      #
      # @param from [String] Globally unique identifier for the financial account or card that will send the
      #
      # @param to [String] Globally unique identifier for the financial account or card that will receive t
      #
      # @param token [String] Customer-provided token that will serve as an idempotency token. This token will
      #
      # @param memo [String] Optional descriptor for the transfer.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Transfer]
      #
      # @see Lithic::Models::TransferCreateParams
      def create(params)
        parsed, options = Lithic::TransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/transfer",
          body: parsed,
          model: Lithic::Transfer,
          options: options
        )
      end

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
