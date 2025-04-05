# typed: strong

module Lithic
  module Resources
    class FinancialAccounts
      sig { returns(Lithic::Resources::FinancialAccounts::Balances) }
      attr_reader :balances

      sig { returns(Lithic::Resources::FinancialAccounts::FinancialTransactions) }
      attr_reader :financial_transactions

      sig { returns(Lithic::Resources::FinancialAccounts::CreditConfiguration) }
      attr_reader :credit_configuration

      sig { returns(Lithic::Resources::FinancialAccounts::Statements) }
      attr_reader :statements

      sig { returns(Lithic::Resources::FinancialAccounts::LoanTapes) }
      attr_reader :loan_tapes

      # Create a new financial account
      sig do
        params(
          nickname: String,
          type: Lithic::Models::FinancialAccountCreateParams::Type::OrSymbol,
          account_token: String,
          is_for_benefit_of: T::Boolean,
          idempotency_key: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::FinancialAccount)
      end
      def create(
        # Body param:
        nickname:,
        # Body param:
        type:,
        # Body param:
        account_token: nil,
        # Body param:
        is_for_benefit_of: nil,
        # Header param:
        idempotency_key: nil,
        request_options: {}
      ); end
      # Get a financial account
      sig do
        params(
          financial_account_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::FinancialAccount)
      end
      def retrieve(financial_account_token, request_options: {}); end

      # Update a financial account
      sig do
        params(
          financial_account_token: String,
          nickname: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::FinancialAccount)
      end
      def update(financial_account_token, nickname: nil, request_options: {}); end

      # Retrieve information on your financial accounts including routing and account
      # number.
      sig do
        params(
          account_token: String,
          business_account_token: String,
          type: Lithic::Models::FinancialAccountListParams::Type::OrSymbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Internal::SinglePage[Lithic::Models::FinancialAccount])
      end
      def list(
        # List financial accounts for a given account_token or business_account_token
        account_token: nil,
        # List financial accounts for a given business_account_token
        business_account_token: nil,
        # List financial accounts of a given type
        type: nil,
        request_options: {}
      ); end
      # Update financial account status
      sig do
        params(
          financial_account_token: String,
          status: Lithic::Models::FinancialAccountUpdateStatusParams::Status::OrSymbol,
          substatus: T.nilable(Lithic::Models::FinancialAccountUpdateStatusParams::Substatus::OrSymbol),
          request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
        )
          .returns(Lithic::Models::FinancialAccount)
      end
      def update_status(
        # Globally unique identifier for financial account.
        financial_account_token,
        # Status of the financial account
        status:,
        # Substatus for the financial account
        substatus:,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
