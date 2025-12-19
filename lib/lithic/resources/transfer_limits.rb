# frozen_string_literal: true

module Lithic
  module Resources
    class TransferLimits
      # Get transfer limits for a specified date
      #
      # @overload list(date: nil, request_options: {})
      #
      # @param date [Date] Date for which to retrieve transfer limits (ISO 8601 format)
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::SinglePage<Lithic::Models::TransferLimitsResponse::Data>]
      #
      # @see Lithic::Models::TransferLimitListParams
      def list(params = {})
        parsed, options = Lithic::TransferLimitListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/transfer_limits",
          query: parsed,
          page: Lithic::Internal::SinglePage,
          model: Lithic::TransferLimitsResponse::Data,
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
