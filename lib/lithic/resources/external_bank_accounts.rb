# frozen_string_literal: true

module Lithic
  module Resources
    class ExternalBankAccounts
      # @return [Lithic::Resources::ExternalBankAccounts::MicroDeposits]
      attr_reader :micro_deposits

      # Creates an external bank account within a program or Lithic account.
      #
      # @param params [Lithic::Models::ExternalBankAccountCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_number Account Number
      #
      #   @option params [String] :country The country that the bank account is located in using ISO 3166-1. We will only
      #     accept USA bank accounts e.g., USA
      #
      #   @option params [String] :currency currency of the external account 3-character alphabetic ISO 4217 code
      #
      #   @option params [String] :financial_account_token The financial account token of the operating account to fund the micro deposits
      #
      #   @option params [String] :owner Legal Name of the business or individual who owns the external account. This
      #     will appear in statements
      #
      #   @option params [Symbol, Lithic::Models::OwnerType] :owner_type Owner Type
      #
      #   @option params [String] :routing_number Routing Number
      #
      #   @option params [Symbol, Lithic::Models::ExternalBankAccountCreateParams::Type] :type Account Type
      #
      #   @option params [Symbol, Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod] :verification_method Verification Method
      #
      #   @option params [String] :processor_token
      #
      #   @option params [String] :account_token Indicates which Lithic account the external account is associated with. For
      #     external accounts that are associated with the program, account_token field
      #     returned will be null
      #
      #   @option params [Lithic::Models::ExternalBankAccountAddress] :address Address
      #
      #   @option params [String] :company_id Optional field that helps identify bank accounts in receipts
      #
      #   @option params [Date] :dob Date of Birth of the Individual that owns the external bank account
      #
      #   @option params [String] :doing_business_as Doing Business As
      #
      #   @option params [String] :name The nickname for this External Bank Account
      #
      #   @option params [String] :user_defined_id User Defined ID
      #
      #   @option params [Boolean] :verification_enforcement
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ExternalBankAccountCreateResponse]
      #
      # @see Lithic::Models::ExternalBankAccountCreateParams
      def create(params)
        parsed, options = Lithic::Models::ExternalBankAccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/external_bank_accounts",
          body: parsed,
          model: Lithic::Models::ExternalBankAccountCreateResponse,
          options: options
        )
      end

      # Get the external bank account by token.
      #
      # @param external_bank_account_token [String]
      #
      # @param params [Lithic::Models::ExternalBankAccountRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ExternalBankAccountRetrieveResponse]
      #
      # @see Lithic::Models::ExternalBankAccountRetrieveParams
      def retrieve(external_bank_account_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/external_bank_accounts/%1$s", external_bank_account_token],
          model: Lithic::Models::ExternalBankAccountRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update the external bank account by token.
      #
      # @param external_bank_account_token [String]
      #
      # @param params [Lithic::Models::ExternalBankAccountUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::Models::ExternalBankAccountAddress] :address Address
      #
      #   @option params [String] :company_id Optional field that helps identify bank accounts in receipts
      #
      #   @option params [Date] :dob Date of Birth of the Individual that owns the external bank account
      #
      #   @option params [String] :doing_business_as Doing Business As
      #
      #   @option params [String] :name The nickname for this External Bank Account
      #
      #   @option params [String] :owner Legal Name of the business or individual who owns the external account. This
      #     will appear in statements
      #
      #   @option params [Symbol, Lithic::Models::OwnerType] :owner_type Owner Type
      #
      #   @option params [Symbol, Lithic::Models::ExternalBankAccountUpdateParams::Type] :type
      #
      #   @option params [String] :user_defined_id User Defined ID
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ExternalBankAccountUpdateResponse]
      #
      # @see Lithic::Models::ExternalBankAccountUpdateParams
      def update(external_bank_account_token, params = {})
        parsed, options = Lithic::Models::ExternalBankAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/external_bank_accounts/%1$s", external_bank_account_token],
          body: parsed,
          model: Lithic::Models::ExternalBankAccountUpdateResponse,
          options: options
        )
      end

      # List all the external bank accounts for the provided search criteria.
      #
      # @param params [Lithic::Models::ExternalBankAccountListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_token
      #
      #   @option params [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::AccountType>] :account_types
      #
      #   @option params [Array<String>] :countries
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [Array<Symbol, Lithic::Models::OwnerType>] :owner_types
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::State>] :states
      #
      #   @option params [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::VerificationState>] :verification_states
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::ExternalBankAccountListResponse>]
      #
      # @see Lithic::Models::ExternalBankAccountListParams
      def list(params = {})
        parsed, options = Lithic::Models::ExternalBankAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/external_bank_accounts",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::ExternalBankAccountListResponse,
          options: options
        )
      end

      # Retry external bank account micro deposit verification.
      #
      # @param external_bank_account_token [String]
      #
      # @param params [Lithic::Models::ExternalBankAccountRetryMicroDepositsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :financial_account_token
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ExternalBankAccountRetryMicroDepositsResponse]
      #
      # @see Lithic::Models::ExternalBankAccountRetryMicroDepositsParams
      def retry_micro_deposits(external_bank_account_token, params = {})
        parsed, options = Lithic::Models::ExternalBankAccountRetryMicroDepositsParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/external_bank_accounts/%1$s/retry_micro_deposits", external_bank_account_token],
          body: parsed,
          model: Lithic::Models::ExternalBankAccountRetryMicroDepositsResponse,
          options: options
        )
      end

      # Retry external bank account prenote verification.
      #
      # @param external_bank_account_token [String]
      #
      # @param params [Lithic::Models::ExternalBankAccountRetryPrenoteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :financial_account_token
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::ExternalBankAccountRetryPrenoteResponse]
      #
      # @see Lithic::Models::ExternalBankAccountRetryPrenoteParams
      def retry_prenote(external_bank_account_token, params = {})
        parsed, options = Lithic::Models::ExternalBankAccountRetryPrenoteParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/external_bank_accounts/%1$s/retry_prenote", external_bank_account_token],
          body: parsed,
          model: Lithic::Models::ExternalBankAccountRetryPrenoteResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @micro_deposits = Lithic::Resources::ExternalBankAccounts::MicroDeposits.new(client: client)
      end
    end
  end
end
