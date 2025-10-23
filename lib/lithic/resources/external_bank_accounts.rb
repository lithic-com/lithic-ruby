# frozen_string_literal: true

module Lithic
  module Resources
    class ExternalBankAccounts
      # @return [Lithic::Resources::ExternalBankAccounts::MicroDeposits]
      attr_reader :micro_deposits

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::ExternalBankAccountCreateParams} for more details.
      #
      # Creates an external bank account within a program or Lithic account.
      #
      # @overload create(account_number:, country:, currency:, financial_account_token:, owner:, owner_type:, routing_number:, type:, verification_method:, account_token: nil, address: nil, company_id: nil, dob: nil, doing_business_as: nil, name: nil, user_defined_id: nil, verification_enforcement: nil, request_options: {})
      #
      # @param account_number [String] Account Number
      #
      # @param country [String] The country that the bank account is located in using ISO 3166-1. We will only a
      #
      # @param currency [String] currency of the external account 3-character alphabetic ISO 4217 code
      #
      # @param financial_account_token [String] The financial account token of the operating account to fund the micro deposits
      #
      # @param owner [String] Legal Name of the business or individual who owns the external account. This wil
      #
      # @param owner_type [Symbol, Lithic::Models::OwnerType] Owner Type
      #
      # @param routing_number [String] Routing Number
      #
      # @param type [Symbol, Lithic::Models::ExternalBankAccountCreateParams::Type] Account Type
      #
      # @param verification_method [Symbol, Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod] Verification Method
      #
      # @param account_token [String] Indicates which Lithic account the external account is associated with. For exte
      #
      # @param address [Lithic::Models::ExternalBankAccountAddress] Address
      #
      # @param company_id [String] Optional field that helps identify bank accounts in receipts
      #
      # @param dob [Date] Date of Birth of the Individual that owns the external bank account
      #
      # @param doing_business_as [String] Doing Business As
      #
      # @param name [String] The nickname for this External Bank Account
      #
      # @param user_defined_id [String] User Defined ID
      #
      # @param verification_enforcement [Boolean]
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ExternalBankAccountCreateResponse]
      #
      # @see Lithic::Models::ExternalBankAccountCreateParams
      def create(params)
        parsed, options = Lithic::ExternalBankAccountCreateParams.dump_request(params)
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
      # @overload retrieve(external_bank_account_token, request_options: {})
      #
      # @param external_bank_account_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::ExternalBankAccountUpdateParams} for more details.
      #
      # Update the external bank account by token.
      #
      # @overload update(external_bank_account_token, address: nil, company_id: nil, dob: nil, doing_business_as: nil, name: nil, owner: nil, owner_type: nil, type: nil, user_defined_id: nil, request_options: {})
      #
      # @param external_bank_account_token [String]
      #
      # @param address [Lithic::Models::ExternalBankAccountAddress] Address
      #
      # @param company_id [String] Optional field that helps identify bank accounts in receipts
      #
      # @param dob [Date] Date of Birth of the Individual that owns the external bank account
      #
      # @param doing_business_as [String] Doing Business As
      #
      # @param name [String] The nickname for this External Bank Account
      #
      # @param owner [String] Legal Name of the business or individual who owns the external account. This wil
      #
      # @param owner_type [Symbol, Lithic::Models::OwnerType] Owner Type
      #
      # @param type [Symbol, Lithic::Models::ExternalBankAccountUpdateParams::Type]
      #
      # @param user_defined_id [String] User Defined ID
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ExternalBankAccountUpdateResponse]
      #
      # @see Lithic::Models::ExternalBankAccountUpdateParams
      def update(external_bank_account_token, params = {})
        parsed, options = Lithic::ExternalBankAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/external_bank_accounts/%1$s", external_bank_account_token],
          body: parsed,
          model: Lithic::Models::ExternalBankAccountUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::ExternalBankAccountListParams} for more details.
      #
      # List all the external bank accounts for the provided search criteria.
      #
      # @overload list(account_token: nil, account_types: nil, countries: nil, ending_before: nil, owner_types: nil, page_size: nil, starting_after: nil, states: nil, verification_states: nil, request_options: {})
      #
      # @param account_token [String]
      #
      # @param account_types [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::AccountType>]
      #
      # @param countries [Array<String>]
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param owner_types [Array<Symbol, Lithic::Models::OwnerType>]
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param states [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::State>]
      #
      # @param verification_states [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::VerificationState>]
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::ExternalBankAccountListResponse>]
      #
      # @see Lithic::Models::ExternalBankAccountListParams
      def list(params = {})
        parsed, options = Lithic::ExternalBankAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/external_bank_accounts",
          query: parsed,
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::ExternalBankAccountListResponse,
          options: options
        )
      end

      # Retry external bank account micro deposit verification.
      #
      # @overload retry_micro_deposits(external_bank_account_token, financial_account_token: nil, request_options: {})
      #
      # @param external_bank_account_token [String]
      # @param financial_account_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ExternalBankAccountRetryMicroDepositsResponse]
      #
      # @see Lithic::Models::ExternalBankAccountRetryMicroDepositsParams
      def retry_micro_deposits(external_bank_account_token, params = {})
        parsed, options = Lithic::ExternalBankAccountRetryMicroDepositsParams.dump_request(params)
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
      # @overload retry_prenote(external_bank_account_token, financial_account_token: nil, request_options: {})
      #
      # @param external_bank_account_token [String]
      # @param financial_account_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::ExternalBankAccountRetryPrenoteResponse]
      #
      # @see Lithic::Models::ExternalBankAccountRetryPrenoteParams
      def retry_prenote(external_bank_account_token, params = {})
        parsed, options = Lithic::ExternalBankAccountRetryPrenoteParams.dump_request(params)
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
