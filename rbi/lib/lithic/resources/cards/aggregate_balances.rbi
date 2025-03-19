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
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Lithic::SinglePage[Lithic::Models::Cards::AggregateBalanceListResponse])
        end
        def list(
          # Cardholder to retrieve aggregate balances for.
          account_token: nil,
          # Business to retrieve aggregate balances for.
          business_account_token: nil,
          request_options: {}
        )
        end

        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
