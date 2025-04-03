# frozen_string_literal: true

module Lithic
  module Resources
    class ExternalBankAccounts
      # @return [Lithic::Resources::ExternalBankAccounts::MicroDeposits]
      attr_reader :micro_deposits

      # Creates an external bank account within a program or Lithic account.
      #
      # @overload create(account_number:, country:, currency:, financial_account_token:, owner:, owner_type:, routing_number:, type:, verification_method:, processor_token:, account_token: nil, address: nil, company_id: nil, dob: nil, doing_business_as: nil, name: nil, user_defined_id: nil, verification_enforcement: nil, request_options: {})
      #
      # @param account_number [String]
      # @param country [String]
      # @param currency [String]
      # @param financial_account_token [String]
      # @param owner [String]
      # @param owner_type [Symbol, Lithic::Models::OwnerType]
      # @param routing_number [String]
      # @param type [Symbol, Lithic::Models::ExternalBankAccountCreateParams::Type]
      # @param verification_method [Symbol, Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod]
      # @param processor_token [String]
      # @param account_token [String]
      # @param address [Lithic::Models::ExternalBankAccountAddress]
      # @param company_id [String]
      # @param dob [Date]
      # @param doing_business_as [String]
      # @param name [String]
      # @param user_defined_id [String]
      # @param verification_enforcement [Boolean]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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

      # Update the external bank account by token.
      #
      # @overload update(external_bank_account_token, address: nil, company_id: nil, dob: nil, doing_business_as: nil, name: nil, owner: nil, owner_type: nil, type: nil, user_defined_id: nil, request_options: {})
      #
      # @param external_bank_account_token [String]
      # @param address [Lithic::Models::ExternalBankAccountAddress]
      # @param company_id [String]
      # @param dob [Date]
      # @param doing_business_as [String]
      # @param name [String]
      # @param owner [String]
      # @param owner_type [Symbol, Lithic::Models::OwnerType]
      # @param type [Symbol, Lithic::Models::ExternalBankAccountUpdateParams::Type]
      # @param user_defined_id [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload list(account_token: nil, account_types: nil, countries: nil, ending_before: nil, owner_types: nil, page_size: nil, starting_after: nil, states: nil, verification_states: nil, request_options: {})
      #
      # @param account_token [String]
      # @param account_types [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::AccountType>]
      # @param countries [Array<String>]
      # @param ending_before [String]
      # @param owner_types [Array<Symbol, Lithic::Models::OwnerType>]
      # @param page_size [Integer]
      # @param starting_after [String]
      # @param states [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::State>]
      # @param verification_states [Array<Symbol, Lithic::Models::ExternalBankAccountListParams::VerificationState>]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::ExternalBankAccountListResponse>]
      #
      # @see Lithic::Models::ExternalBankAccountListParams
      def list(params = {})
        parsed, options = Lithic::Models::ExternalBankAccountListParams.dump_request(params)
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
