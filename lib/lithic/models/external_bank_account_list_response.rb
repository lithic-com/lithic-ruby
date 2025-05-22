# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalBankAccounts#list
    class ExternalBankAccountListResponse < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   A globally unique identifier for this record of an external bank account
      #   association. If a program links an external bank account to more than one
      #   end-user or to both the program and the end-user, then Lithic will return each
      #   record of the association
      #
      #   @return [String]
      required :token, String

      # @!attribute country
      #   The country that the bank account is located in using ISO 3166-1. We will only
      #   accept USA bank accounts e.g., USA
      #
      #   @return [String]
      required :country, String

      # @!attribute created
      #   An ISO 8601 string representing when this funding source was added to the Lithic
      #   account.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #   currency of the external account 3-character alphabetic ISO 4217 code
      #
      #   @return [String]
      required :currency, String

      # @!attribute last_four
      #   The last 4 digits of the bank account. Derived by Lithic from the account number
      #   passed
      #
      #   @return [String]
      required :last_four, String

      # @!attribute owner
      #   Legal Name of the business or individual who owns the external account. This
      #   will appear in statements
      #
      #   @return [String]
      required :owner, String

      # @!attribute owner_type
      #   Owner Type
      #
      #   @return [Symbol, Lithic::Models::ExternalBankAccountListResponse::OwnerType]
      required :owner_type, enum: -> { Lithic::Models::ExternalBankAccountListResponse::OwnerType }

      # @!attribute routing_number
      #   Routing Number
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute state
      #   Account State
      #
      #   @return [Symbol, Lithic::Models::ExternalBankAccountListResponse::State]
      required :state, enum: -> { Lithic::Models::ExternalBankAccountListResponse::State }

      # @!attribute type
      #   Account Type
      #
      #   @return [Symbol, Lithic::Models::ExternalBankAccountListResponse::Type]
      required :type, enum: -> { Lithic::Models::ExternalBankAccountListResponse::Type }

      # @!attribute verification_attempts
      #   The number of attempts at verification
      #
      #   @return [Integer]
      required :verification_attempts, Integer

      # @!attribute verification_method
      #   Verification Method
      #
      #   @return [Symbol, Lithic::Models::ExternalBankAccountListResponse::VerificationMethod]
      required :verification_method,
               enum: -> { Lithic::Models::ExternalBankAccountListResponse::VerificationMethod }

      # @!attribute verification_state
      #   Verification State
      #
      #   @return [Symbol, Lithic::Models::ExternalBankAccountListResponse::VerificationState]
      required :verification_state,
               enum: -> { Lithic::Models::ExternalBankAccountListResponse::VerificationState }

      # @!attribute account_token
      #   Indicates which Lithic account the external account is associated with. For
      #   external accounts that are associated with the program, account_token field
      #   returned will be null
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!attribute address
      #   Address
      #
      #   @return [Lithic::Models::ExternalBankAccountAddress, nil]
      optional :address, -> { Lithic::ExternalBankAccountAddress }

      # @!attribute company_id
      #   Optional field that helps identify bank accounts in receipts
      #
      #   @return [String, nil]
      optional :company_id, String

      # @!attribute dob
      #   Date of Birth of the Individual that owns the external bank account
      #
      #   @return [Date, nil]
      optional :dob, Date

      # @!attribute doing_business_as
      #   Doing Business As
      #
      #   @return [String, nil]
      optional :doing_business_as, String

      # @!attribute financial_account_token
      #   The financial account token of the operating account to fund the micro deposits
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!attribute name
      #   The nickname for this External Bank Account
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute user_defined_id
      #   User Defined ID
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!attribute verification_failed_reason
      #   Optional free text description of the reason for the failed verification. For
      #   ACH micro-deposits returned, this field will display the reason return code sent
      #   by the ACH network
      #
      #   @return [String, nil]
      optional :verification_failed_reason, String

      # @!method initialize(token:, country:, created:, currency:, last_four:, owner:, owner_type:, routing_number:, state:, type:, verification_attempts:, verification_method:, verification_state:, account_token: nil, address: nil, company_id: nil, dob: nil, doing_business_as: nil, financial_account_token: nil, name: nil, user_defined_id: nil, verification_failed_reason: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::ExternalBankAccountListResponse} for more details.
      #
      #   @param token [String] A globally unique identifier for this record of an external bank account associa
      #
      #   @param country [String] The country that the bank account is located in using ISO 3166-1. We will only a
      #
      #   @param created [Time] An ISO 8601 string representing when this funding source was added to the Lithic
      #
      #   @param currency [String] currency of the external account 3-character alphabetic ISO 4217 code
      #
      #   @param last_four [String] The last 4 digits of the bank account. Derived by Lithic from the account number
      #
      #   @param owner [String] Legal Name of the business or individual who owns the external account. This wil
      #
      #   @param owner_type [Symbol, Lithic::Models::ExternalBankAccountListResponse::OwnerType] Owner Type
      #
      #   @param routing_number [String] Routing Number
      #
      #   @param state [Symbol, Lithic::Models::ExternalBankAccountListResponse::State] Account State
      #
      #   @param type [Symbol, Lithic::Models::ExternalBankAccountListResponse::Type] Account Type
      #
      #   @param verification_attempts [Integer] The number of attempts at verification
      #
      #   @param verification_method [Symbol, Lithic::Models::ExternalBankAccountListResponse::VerificationMethod] Verification Method
      #
      #   @param verification_state [Symbol, Lithic::Models::ExternalBankAccountListResponse::VerificationState] Verification State
      #
      #   @param account_token [String] Indicates which Lithic account the external account is associated with. For exte
      #
      #   @param address [Lithic::Models::ExternalBankAccountAddress] Address
      #
      #   @param company_id [String] Optional field that helps identify bank accounts in receipts
      #
      #   @param dob [Date] Date of Birth of the Individual that owns the external bank account
      #
      #   @param doing_business_as [String] Doing Business As
      #
      #   @param financial_account_token [String] The financial account token of the operating account to fund the micro deposits
      #
      #   @param name [String] The nickname for this External Bank Account
      #
      #   @param user_defined_id [String] User Defined ID
      #
      #   @param verification_failed_reason [String] Optional free text description of the reason for the failed verification. For AC

      # Owner Type
      #
      # @see Lithic::Models::ExternalBankAccountListResponse#owner_type
      module OwnerType
        extend Lithic::Internal::Type::Enum

        BUSINESS = :BUSINESS
        INDIVIDUAL = :INDIVIDUAL

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Account State
      #
      # @see Lithic::Models::ExternalBankAccountListResponse#state
      module State
        extend Lithic::Internal::Type::Enum

        ENABLED = :ENABLED
        CLOSED = :CLOSED
        PAUSED = :PAUSED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Account Type
      #
      # @see Lithic::Models::ExternalBankAccountListResponse#type
      module Type
        extend Lithic::Internal::Type::Enum

        CHECKING = :CHECKING
        SAVINGS = :SAVINGS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Verification Method
      #
      # @see Lithic::Models::ExternalBankAccountListResponse#verification_method
      module VerificationMethod
        extend Lithic::Internal::Type::Enum

        MANUAL = :MANUAL
        MICRO_DEPOSIT = :MICRO_DEPOSIT
        PLAID = :PLAID
        PRENOTE = :PRENOTE

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Verification State
      #
      # @see Lithic::Models::ExternalBankAccountListResponse#verification_state
      module VerificationState
        extend Lithic::Internal::Type::Enum

        PENDING = :PENDING
        ENABLED = :ENABLED
        FAILED_VERIFICATION = :FAILED_VERIFICATION
        INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
