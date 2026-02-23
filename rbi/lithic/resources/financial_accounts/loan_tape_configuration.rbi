# typed: strong

module Lithic
  module Resources
    class FinancialAccounts
      class LoanTapeConfiguration
        # Get the loan tape configuration for a given financial account.
        sig do
          params(
            financial_account_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::FinancialAccounts::FinancialAccountsLoanTapeConfiguration
          )
        end
        def retrieve(
          # Globally unique identifier for financial account.
          financial_account_token,
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
