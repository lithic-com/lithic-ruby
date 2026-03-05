# typed: strong

module Lithic
  module Resources
    class ExternalBankAccounts
      sig { returns(Lithic::Resources::ExternalBankAccounts::MicroDeposits) }
      attr_reader :micro_deposits

      # Creates an external bank account within a program or Lithic account.
      sig do
        params(
          body:
            T.any(
              Lithic::ExternalBankAccountCreateParams::Body::ExternallyVerified::OrHash,
              Lithic::ExternalBankAccountCreateParams::Body::Unverified::OrHash,
              Lithic::ExternalBankAccountCreateParams::Body::BankVerifiedCreateBankAccountAPIRequest::OrHash
            ),
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::ExternalBankAccountCreateResponse)
      end
      def create(body:, request_options: {})
      end

      # Get the external bank account by token.
      sig do
        params(
          external_bank_account_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::ExternalBankAccountRetrieveResponse)
      end
      def retrieve(external_bank_account_token, request_options: {})
      end

      # Update the external bank account by token.
      sig do
        params(
          external_bank_account_token: String,
          address: Lithic::ExternalBankAccountAddress::OrHash,
          company_id: String,
          dob: Date,
          doing_business_as: String,
          name: String,
          owner: String,
          owner_type: Lithic::OwnerType::OrSymbol,
          type: Lithic::ExternalBankAccountUpdateParams::Type::OrSymbol,
          user_defined_id: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::ExternalBankAccountUpdateResponse)
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
        # will appear in statements
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
          account_types:
            T::Array[
              Lithic::ExternalBankAccountListParams::AccountType::OrSymbol
            ],
          countries: T::Array[String],
          ending_before: String,
          owner_types: T::Array[Lithic::OwnerType::OrSymbol],
          page_size: Integer,
          starting_after: String,
          states:
            T::Array[Lithic::ExternalBankAccountListParams::State::OrSymbol],
          verification_states:
            T::Array[
              Lithic::ExternalBankAccountListParams::VerificationState::OrSymbol
            ],
          request_options: Lithic::RequestOptions::OrHash
        ).returns(
          Lithic::Internal::CursorPage[
            Lithic::Models::ExternalBankAccountListResponse
          ]
        )
      end
      def list(
        account_token: nil,
        account_types: nil,
        countries: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        owner_types: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
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
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::ExternalBankAccountRetryMicroDepositsResponse)
      end
      def retry_micro_deposits(
        external_bank_account_token,
        financial_account_token: nil,
        request_options: {}
      )
      end

      # Retry external bank account prenote verification.
      sig do
        params(
          external_bank_account_token: String,
          financial_account_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::ExternalBankAccount)
      end
      def retry_prenote(
        external_bank_account_token,
        financial_account_token: nil,
        request_options: {}
      )
      end

      # Unpause an external bank account
      sig do
        params(
          external_bank_account_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::ExternalBankAccount)
      end
      def unpause(external_bank_account_token, request_options: {})
      end

      # @api private
      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
