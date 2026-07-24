# typed: strong

module Lithic
  module Resources
    class FinancialAccounts
      class Balances
        # Get the balances for a given financial account.
        sig do
          params(
            financial_account_token: String,
            balance_date: Time,
            last_transaction_event_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::Internal::SinglePage[Lithic::FinancialAccountBalance]
          )
        end
        def list(
          # Globally unique identifier for financial account.
          financial_account_token,
          # UTC date of the balance to retrieve. Defaults to latest available balance
          balance_date: nil,
          # Balance after a given financial event occured. Note: if an account receives
          # multiple events around the same time whose financial impacts cancel out, a
          # balance lookup by one of those event tokens may return 404, since their combined
          # impact on the account is zero.
          last_transaction_event_token: nil,
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
