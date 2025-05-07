# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      # @return [Lithic::Resources::FinancialAccounts::Balances]
      attr_reader :balances

      # @return [Lithic::Resources::FinancialAccounts::FinancialTransactions]
      attr_reader :financial_transactions

      # @return [Lithic::Resources::FinancialAccounts::CreditConfiguration]
      attr_reader :credit_configuration

      # @return [Lithic::Resources::FinancialAccounts::Statements]
      attr_reader :statements

      # @return [Lithic::Resources::FinancialAccounts::LoanTapes]
      attr_reader :loan_tapes

      # Create a new financial account
      #
      # @overload create(nickname:, type:, account_token: nil, is_for_benefit_of: nil, idempotency_key: nil, request_options: {})
      #
      # @param nickname [String] Body param:
      #
      # @param type [Symbol, Lithic::FinancialAccountCreateParams::Type] Body param:
      #
      # @param account_token [String] Body param:
      #
      # @param is_for_benefit_of [Boolean] Body param:
      #
      # @param idempotency_key [String] Header param:
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::FinancialAccount]
      #
      # @see Lithic::Models::FinancialAccountCreateParams
      def create(params)
        parsed, options = Lithic::FinancialAccountCreateParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "v1/financial_accounts",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Lithic::FinancialAccount,
          options: options
        )
      end

      # Get a financial account
      #
      # @overload retrieve(financial_account_token, request_options: {})
      #
      # @param financial_account_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::FinancialAccount]
      #
      # @see Lithic::Models::FinancialAccountRetrieveParams
      def retrieve(financial_account_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/financial_accounts/%1$s", financial_account_token],
          model: Lithic::FinancialAccount,
          options: params[:request_options]
        )
      end

      # Update a financial account
      #
      # @overload update(financial_account_token, nickname: nil, request_options: {})
      #
      # @param financial_account_token [String]
      # @param nickname [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::FinancialAccount]
      #
      # @see Lithic::Models::FinancialAccountUpdateParams
      def update(financial_account_token, params = {})
        parsed, options = Lithic::FinancialAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/financial_accounts/%1$s", financial_account_token],
          body: parsed,
          model: Lithic::FinancialAccount,
          options: options
        )
      end

      # Retrieve information on your financial accounts including routing and account
      # number.
      #
      # @overload list(account_token: nil, business_account_token: nil, type: nil, request_options: {})
      #
      # @param account_token [String] List financial accounts for a given account_token or business_account_token
      #
      # @param business_account_token [String] List financial accounts for a given business_account_token
      #
      # @param type [Symbol, Lithic::FinancialAccountListParams::Type] List financial accounts of a given type
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::SinglePage<Lithic::FinancialAccount>]
      #
      # @see Lithic::Models::FinancialAccountListParams
      def list(params = {})
        parsed, options = Lithic::FinancialAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/financial_accounts",
          query: parsed,
          page: Lithic::Internal::SinglePage,
          model: Lithic::FinancialAccount,
          options: options
        )
      end

      # Update financial account status
      #
      # @overload update_status(financial_account_token, status:, substatus:, request_options: {})
      #
      # @param financial_account_token [String] Globally unique identifier for financial account.
      #
      # @param status [Symbol, Lithic::FinancialAccountUpdateStatusParams::Status] Status of the financial account
      #
      # @param substatus [Symbol, Lithic::FinancialAccountUpdateStatusParams::Substatus, nil] Substatus for the financial account
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::FinancialAccount]
      #
      # @see Lithic::Models::FinancialAccountUpdateStatusParams
      def update_status(financial_account_token, params)
        parsed, options = Lithic::FinancialAccountUpdateStatusParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/financial_accounts/%1$s/update_status", financial_account_token],
          body: parsed,
          model: Lithic::FinancialAccount,
          options: options
        )
      end

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @balances = Lithic::Resources::FinancialAccounts::Balances.new(client: client)
        @financial_transactions = Lithic::Resources::FinancialAccounts::FinancialTransactions.new(client: client)
        @credit_configuration = Lithic::Resources::FinancialAccounts::CreditConfiguration.new(client: client)
        @statements = Lithic::Resources::FinancialAccounts::Statements.new(client: client)
        @loan_tapes = Lithic::Resources::FinancialAccounts::LoanTapes.new(client: client)
      end
    end
  end
end
