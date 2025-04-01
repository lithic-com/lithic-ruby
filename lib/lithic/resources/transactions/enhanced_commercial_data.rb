# frozen_string_literal: true

module Lithic
  module Resources
    class Transactions
      class EnhancedCommercialData
        # Get all L2/L3 enhanced commercial data associated with a transaction. Not
        #   available in sandbox.
        #
        # @param transaction_token [String] The token of the transaction that the enhanced data is associated with.
        #
        # @param params [Lithic::Models::Transactions::EnhancedCommercialDataRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::Transactions::EnhancedCommercialDataRetrieveResponse]
        def retrieve(transaction_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/transactions/%1$s/enhanced_commercial_data", transaction_token],
            model: Lithic::Models::Transactions::EnhancedCommercialDataRetrieveResponse,
            options: params[:request_options]
          )
        end

        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
