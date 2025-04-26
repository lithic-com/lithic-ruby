# typed: strong

module Lithic
  module Resources
    class FinancialAccounts
      class CreditConfiguration
        # Get an Account's credit configuration
        sig do
          params(financial_account_token: String, request_options: Lithic::RequestOpts)
            .returns(Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig)
        end
        def retrieve(
          # Globally unique identifier for financial account.
          financial_account_token,
          request_options: {}
        ); end
        # Update an account's credit configuration
        sig do
          params(
            financial_account_token: String,
            credit_limit: Integer,
            credit_product_token: String,
            external_bank_account_token: String,
            tier: String,
            request_options: Lithic::RequestOpts
          )
            .returns(Lithic::Models::FinancialAccounts::FinancialAccountCreditConfig)
        end
        def update(
          # Globally unique identifier for financial account.
          financial_account_token,
          credit_limit: nil,
          # Globally unique identifier for the credit product
          credit_product_token: nil,
          external_bank_account_token: nil,
          # Tier to assign to a financial account
          tier: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
