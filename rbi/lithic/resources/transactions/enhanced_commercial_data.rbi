# typed: strong

module Lithic
  module Resources
    class Transactions
      class EnhancedCommercialData
        # Get all L2/L3 enhanced commercial data associated with a transaction. Not
        # available in sandbox.
        sig do
          params(
            transaction_token: String,
            request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
          )
            .returns(Lithic::Models::Transactions::EnhancedCommercialDataRetrieveResponse)
        end
        def retrieve(
          # The token of the transaction that the enhanced data is associated with.
          transaction_token,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
