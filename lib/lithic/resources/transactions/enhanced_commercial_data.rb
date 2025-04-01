# frozen_string_literal: true

module Lithic
  module Resources
    class Transactions
      class EnhancedCommercialData
        # Get all L2/L3 enhanced commercial data associated with a transaction. Not
        #   available in sandbox.
        #
        # @overload retrieve(transaction_token, request_options: {})
        #
        # @param transaction_token [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::Transactions::EnhancedCommercialDataRetrieveResponse]
        #
        # @see Lithic::Models::Transactions::EnhancedCommercialDataRetrieveParams
        def retrieve(transaction_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/transactions/%1$s/enhanced_commercial_data", transaction_token],
            model: Lithic::Models::Transactions::EnhancedCommercialDataRetrieveResponse,
            options: params[:request_options]
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
end
