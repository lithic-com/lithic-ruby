# typed: strong

module Lithic
  module Resources
    class FinancialAccounts
      sig { returns(Lithic::Resources::FinancialAccounts::Balances) }
      def balances
      end

      sig { returns(Lithic::Resources::FinancialAccounts::FinancialTransactions) }
      def financial_transactions
      end

      sig { returns(Lithic::Resources::FinancialAccounts::CreditConfiguration) }
      def credit_configuration
      end

      sig { returns(Lithic::Resources::FinancialAccounts::Statements) }
      def statements
      end

      sig { returns(Lithic::Resources::FinancialAccounts::LoanTapes) }
      def loan_tapes
      end

      # Create a new financial account
      sig do
        params(
          nickname: String,
          type: Symbol,
          account_token: String,
          is_for_benefit_of: T::Boolean,
          idempotency_key: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
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
      )
      end

      # Get a financial account
      sig do
        params(
          financial_account_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::FinancialAccount)
      end
      def retrieve(financial_account_token, request_options: {})
      end

      # Update a financial account
      sig do
        params(
          financial_account_token: String,
          nickname: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::FinancialAccount)
      end
      def update(financial_account_token, nickname: nil, request_options: {})
      end

      # Retrieve information on your financial accounts including routing and account
      #   number.
      sig do
        params(
          account_token: String,
          business_account_token: String,
          type: Symbol,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::SinglePage[Lithic::Models::FinancialAccount])
      end
      def list(
        # List financial accounts for a given account_token or business_account_token
        account_token: nil,
        # List financial accounts for a given business_account_token
        business_account_token: nil,
        # List financial accounts of a given type
        type: nil,
        request_options: {}
      )
      end

      # Update financial account status
      sig do
        params(
          financial_account_token: String,
          status: Symbol,
          status_change_reason: T.nilable(Symbol),
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::FinancialAccount)
      end
      def update_status(
        # Globally unique identifier for financial account.
        financial_account_token,
        # Status of the financial account
        status:,
        # Reason for the financial account status change
        status_change_reason:,
        request_options: {}
      )
      end

      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
