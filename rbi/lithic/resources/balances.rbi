# typed: strong

module Lithic
  module Resources
    class Balances
      # Get the balances for a program, business, or a given end-user account
      sig do
        params(
          account_token: String,
          balance_date: Time,
          business_account_token: String,
          financial_account_type: Lithic::Models::BalanceListParams::FinancialAccountType::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Internal::SinglePage[Lithic::Models::Balance])
      end
      def list(
        # List balances for all financial accounts of a given account_token.
        account_token: nil,
        # UTC date and time of the balances to retrieve. Defaults to latest available
        # balances
        balance_date: nil,
        # List balances for all financial accounts of a given business_account_token.
        business_account_token: nil,
        # List balances for a given Financial Account type.
        financial_account_type: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
