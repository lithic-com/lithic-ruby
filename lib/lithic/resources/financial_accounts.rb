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
      # @param nickname [String]
      # @param type [Symbol, Lithic::Models::FinancialAccountCreateParams::Type]
      # @param account_token [String]
      # @param is_for_benefit_of [Boolean]
      # @param idempotency_key [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::FinancialAccount]
      #
      # @see Lithic::Models::FinancialAccountCreateParams
      def create(params)
        parsed, options = Lithic::Models::FinancialAccountCreateParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "v1/financial_accounts",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Lithic::Models::FinancialAccount,
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
      # @return [Lithic::Models::FinancialAccount]
      #
      # @see Lithic::Models::FinancialAccountRetrieveParams
      def retrieve(financial_account_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/financial_accounts/%1$s", financial_account_token],
          model: Lithic::Models::FinancialAccount,
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
      # @return [Lithic::Models::FinancialAccount]
      #
      # @see Lithic::Models::FinancialAccountUpdateParams
      def update(financial_account_token, params = {})
        parsed, options = Lithic::Models::FinancialAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/financial_accounts/%1$s", financial_account_token],
          body: parsed,
          model: Lithic::Models::FinancialAccount,
          options: options
        )
      end

      # Retrieve information on your financial accounts including routing and account
      #   number.
      #
      # @overload list(account_token: nil, business_account_token: nil, type: nil, request_options: {})
      #
      # @param account_token [String]
      # @param business_account_token [String]
      # @param type [Symbol, Lithic::Models::FinancialAccountListParams::Type]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::SinglePage<Lithic::Models::FinancialAccount>]
      #
      # @see Lithic::Models::FinancialAccountListParams
      def list(params = {})
        parsed, options = Lithic::Models::FinancialAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/financial_accounts",
          query: parsed,
          page: Lithic::Internal::SinglePage,
          model: Lithic::Models::FinancialAccount,
          options: options
        )
      end

      # Update financial account status
      #
      # @overload update_status(financial_account_token, status:, status_change_reason:, request_options: {})
      #
      # @param financial_account_token [String]
      # @param status [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Status]
      # @param status_change_reason [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason, nil]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::FinancialAccount]
      #
      # @see Lithic::Models::FinancialAccountUpdateStatusParams
      def update_status(financial_account_token, params)
        parsed, options = Lithic::Models::FinancialAccountUpdateStatusParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/financial_accounts/%1$s/update_status", financial_account_token],
          body: parsed,
          model: Lithic::Models::FinancialAccount,
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
