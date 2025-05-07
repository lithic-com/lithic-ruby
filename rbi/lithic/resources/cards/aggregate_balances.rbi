# typed: strong

module Lithic
  module Resources
    class Cards
      class AggregateBalances
        # Get the aggregated card balance across all end-user accounts.
        sig do
          params(
            account_token: String,
            business_account_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::Internal::SinglePage[
              Lithic::Models::Cards::AggregateBalanceListResponse
            ]
          )
        end
        def list(
          # Cardholder to retrieve aggregate balances for.
          account_token: nil,
          # Business to retrieve aggregate balances for.
          business_account_token: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
