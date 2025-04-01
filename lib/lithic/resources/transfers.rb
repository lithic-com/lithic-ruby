# frozen_string_literal: true

module Lithic
  module Resources
    class Transfers
      # Transfer funds between two financial accounts or between a financial account and
      #   card
      #
      # @overload create(amount:, from:, to:, token: nil, memo: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param from [String]
      # @param to [String]
      # @param token [String]
      # @param memo [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Transfer]
      #
      # @see Lithic::Models::TransferCreateParams
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

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
