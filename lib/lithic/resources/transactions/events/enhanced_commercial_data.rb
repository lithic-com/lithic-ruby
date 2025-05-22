# frozen_string_literal: true

module Lithic
  module Resources
    class Transactions
      class Events
        class EnhancedCommercialData
          # Get L2/L3 enhanced commercial data associated with a transaction event. Not
          # available in sandbox.
          #
          # @overload retrieve(event_token, request_options: {})
          #
          # @param event_token [String] The token of the transaction event that the enhanced data is associated with.
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Lithic::Models::Transactions::Events::EnhancedData]
          #
          # @see Lithic::Models::Transactions::Events::EnhancedCommercialDataRetrieveParams
          def retrieve(event_token, params = {})
            @client.request(
              method: :get,
              path: ["v1/transactions/events/%1$s/enhanced_commercial_data", event_token],
              model: Lithic::Transactions::Events::EnhancedData,
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
end
