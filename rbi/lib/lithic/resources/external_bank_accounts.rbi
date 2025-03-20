# typed: strong

module Lithic
  module Resources
    class ExternalBankAccounts
      sig { returns(Lithic::Resources::ExternalBankAccounts::MicroDeposits) }
      def micro_deposits
      end

      # Creates an external bank account within a program or Lithic account.
      sig do
        params(
          account_number: String,
          country: String,
          currency: String,
          financial_account_token: String,
          owner: String,
          owner_type: Lithic::Models::OwnerType::OrSymbol,
          routing_number: String,
          type: Lithic::Models::ExternalBankAccountCreateParams::Type::OrSymbol,
          verification_method: Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod::OrSymbol,
          processor_token: String,
          account_token: String,
          address: Lithic::Models::ExternalBankAccountAddress,
          company_id: String,
          dob: Date,
          doing_business_as: String,
          name: String,
          user_defined_id: String,
          verification_enforcement: T::Boolean,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::ExternalBankAccountCreateResponse)
      end
      def create(
        # Account Number
        account_number:,
        # The country that the bank account is located in using ISO 3166-1. We will only
        #   accept USA bank accounts e.g., USA
        country:,
        # currency of the external account 3-character alphabetic ISO 4217 code
        currency:,
        # The financial account token of the operating account to fund the micro deposits
        financial_account_token:,
        # Legal Name of the business or individual who owns the external account. This
        #   will appear in statements
        owner:,
        # Owner Type
        owner_type:,
        # Routing Number
        routing_number:,
        # Account Type
        type:,
        # Verification Method
        verification_method:,
        processor_token:,
        # Indicates which Lithic account the external account is associated with. For
        #   external accounts that are associated with the program, account_token field
        #   returned will be null
        account_token: nil,
        # Address
        address: nil,
        # Optional field that helps identify bank accounts in receipts
        company_id: nil,
        # Date of Birth of the Individual that owns the external bank account
        dob: nil,
        # Doing Business As
        doing_business_as: nil,
        # The nickname for this External Bank Account
        name: nil,
        # User Defined ID
        user_defined_id: nil,
        verification_enforcement: nil,
        request_options: {}
      )
      end

      # Get the external bank account by token.
      sig do
        params(
          external_bank_account_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::ExternalBankAccountRetrieveResponse)
      end
      def retrieve(external_bank_account_token, request_options: {})
      end

      # Update the external bank account by token.
      sig do
        params(
          external_bank_account_token: String,
          address: Lithic::Models::ExternalBankAccountAddress,
          company_id: String,
          dob: Date,
          doing_business_as: String,
          name: String,
          owner: String,
          owner_type: Lithic::Models::OwnerType::OrSymbol,
          type: Lithic::Models::ExternalBankAccountUpdateParams::Type::OrSymbol,
          user_defined_id: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::ExternalBankAccountUpdateResponse)
      end
      def update(
        external_bank_account_token,
        # Address
        address: nil,
        # Optional field that helps identify bank accounts in receipts
        company_id: nil,
        # Date of Birth of the Individual that owns the external bank account
        dob: nil,
        # Doing Business As
        doing_business_as: nil,
        # The nickname for this External Bank Account
        name: nil,
        # Legal Name of the business or individual who owns the external account. This
        #   will appear in statements
        owner: nil,
        # Owner Type
        owner_type: nil,
        type: nil,
        # User Defined ID
        user_defined_id: nil,
        request_options: {}
      )
      end

      # List all the external bank accounts for the provided search criteria.
      sig do
        params(
          account_token: String,
          account_types: T::Array[Lithic::Models::ExternalBankAccountListParams::AccountType::OrSymbol],
          countries: T::Array[String],
          ending_before: String,
          owner_types: T::Array[Lithic::Models::OwnerType::OrSymbol],
          page_size: Integer,
          starting_after: String,
          states: T::Array[Lithic::Models::ExternalBankAccountListParams::State::OrSymbol],
          verification_states: T::Array[Lithic::Models::ExternalBankAccountListParams::VerificationState::OrSymbol],
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::CursorPage[Lithic::Models::ExternalBankAccountListResponse])
      end
      def list(
        account_token: nil,
        account_types: nil,
        countries: nil,
        # A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        ending_before: nil,
        owner_types: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        states: nil,
        verification_states: nil,
        request_options: {}
      )
      end

      # Retry external bank account micro deposit verification.
      sig do
        params(
          external_bank_account_token: String,
          financial_account_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::ExternalBankAccountRetryMicroDepositsResponse)
      end
      def retry_micro_deposits(external_bank_account_token, financial_account_token: nil, request_options: {})
      end

      # Retry external bank account prenote verification.
      sig do
        params(
          external_bank_account_token: String,
          financial_account_token: String,
          request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Lithic::Models::ExternalBankAccountRetryPrenoteResponse)
      end
      def retry_prenote(external_bank_account_token, financial_account_token: nil, request_options: {})
      end

      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
