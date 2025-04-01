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
      # @param params [Lithic::Models::FinancialAccountCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :nickname Body param:
      #
      #   @option params [Symbol, Lithic::Models::FinancialAccountCreateParams::Type] :type Body param:
      #
      #   @option params [String] :account_token Body param:
      #
      #   @option params [Boolean] :is_for_benefit_of Body param:
      #
      #   @option params [String] :idempotency_key Header param:
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::FinancialAccount]
      def create(params)
        parsed, options = Lithic::Models::FinancialAccountCreateParams.dump_request(params)
        header_params = [:"Idempotency-Key"]
        @client.request(
          method: :post,
          path: "v1/financial_accounts",
          headers: parsed.slice(*header_params),
          body: parsed.except(*header_params),
          model: Lithic::Models::FinancialAccount,
          options: options
        )
      end

      # Get a financial account
      #
      # @param financial_account_token [String]
      #
      # @param params [Lithic::Models::FinancialAccountRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::FinancialAccount]
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
      # @param financial_account_token [String]
      #
      # @param params [Lithic::Models::FinancialAccountUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :nickname
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::FinancialAccount]
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
      # @param params [Lithic::Models::FinancialAccountListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_token List financial accounts for a given account_token or business_account_token
      #
      #   @option params [String] :business_account_token List financial accounts for a given business_account_token
      #
      #   @option params [Symbol, Lithic::Models::FinancialAccountListParams::Type] :type List financial accounts of a given type
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::SinglePage<Lithic::Models::FinancialAccount>]
      def list(params = {})
        parsed, options = Lithic::Models::FinancialAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/financial_accounts",
          query: parsed,
          page: Lithic::SinglePage,
          model: Lithic::Models::FinancialAccount,
          options: options
        )
      end

      # Update financial account status
      #
      # @param financial_account_token [String] Globally unique identifier for financial account.
      #
      # @param params [Lithic::Models::FinancialAccountUpdateStatusParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::Status] :status Status of the financial account
      #
      #   @option params [Symbol, Lithic::Models::FinancialAccountUpdateStatusParams::StatusChangeReason, nil] :status_change_reason Reason for the financial account status change
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::FinancialAccount]
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
