# frozen_string_literal: true

module Lithic
  module Models
    class ExternalBankAccountListResponse < Lithic::BaseModel
      # @!attribute token
      #   A globally unique identifier for this record of an external bank account
      #     association. If a program links an external bank account to more than one
      #     end-user or to both the program and the end-user, then Lithic will return each
      #     record of the association
      #
      #   @return [String]
      required :token, String

      # @!attribute country
      #   The country that the bank account is located in using ISO 3166-1. We will only
      #     accept USA bank accounts e.g., USA
      #
      #   @return [String]
      required :country, String

      # @!attribute created
      #   An ISO 8601 string representing when this funding source was added to the Lithic
      #     account.
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
      #     passed
      #
      #   @return [String]
      required :last_four, String

      # @!attribute owner
      #   Legal Name of the business or individual who owns the external account. This
      #     will appear in statements
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

      # @!attribute [r] account_token
      #   Indicates which Lithic account the external account is associated with. For
      #     external accounts that are associated with the program, account_token field
      #     returned will be null
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_token

      # @!attribute [r] address
      #   Address
      #
      #   @return [Lithic::Models::ExternalBankAccountAddress, nil]
      optional :address, -> { Lithic::Models::ExternalBankAccountAddress }

      # @!parse
      #   # @return [Lithic::Models::ExternalBankAccountAddress]
      #   attr_writer :address

      # @!attribute [r] company_id
      #   Optional field that helps identify bank accounts in receipts
      #
      #   @return [String, nil]
      optional :company_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :company_id

      # @!attribute [r] dob
      #   Date of Birth of the Individual that owns the external bank account
      #
      #   @return [Date, nil]
      optional :dob, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :dob

      # @!attribute [r] doing_business_as
      #   Doing Business As
      #
      #   @return [String, nil]
      optional :doing_business_as, String

      # @!parse
      #   # @return [String]
      #   attr_writer :doing_business_as

      # @!attribute [r] financial_account_token
      #   The financial account token of the operating account to fund the micro deposits
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :financial_account_token

      # @!attribute [r] name
      #   The nickname for this External Bank Account
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!attribute [r] user_defined_id
      #   User Defined ID
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :user_defined_id

      # @!attribute [r] verification_failed_reason
      #   Optional free text description of the reason for the failed verification. For
      #     ACH micro-deposits returned, this field will display the reason return code sent
      #     by the ACH network
      #
      #   @return [String, nil]
      optional :verification_failed_reason, String

      # @!parse
      #   # @return [String]
      #   attr_writer :verification_failed_reason

      # @!parse
      #   # @param token [String]
      #   # @param country [String]
      #   # @param created [Time]
      #   # @param currency [String]
      #   # @param last_four [String]
      #   # @param owner [String]
      #   # @param owner_type [Symbol, Lithic::Models::ExternalBankAccountListResponse::OwnerType]
      #   # @param routing_number [String]
      #   # @param state [Symbol, Lithic::Models::ExternalBankAccountListResponse::State]
      #   # @param type [Symbol, Lithic::Models::ExternalBankAccountListResponse::Type]
      #   # @param verification_attempts [Integer]
      #   # @param verification_method [Symbol, Lithic::Models::ExternalBankAccountListResponse::VerificationMethod]
      #   # @param verification_state [Symbol, Lithic::Models::ExternalBankAccountListResponse::VerificationState]
      #   # @param account_token [String]
      #   # @param address [Lithic::Models::ExternalBankAccountAddress]
      #   # @param company_id [String]
      #   # @param dob [Date]
      #   # @param doing_business_as [String]
      #   # @param financial_account_token [String]
      #   # @param name [String]
      #   # @param user_defined_id [String]
      #   # @param verification_failed_reason [String]
      #   #
      #   def initialize(
      #     token:,
      #     country:,
      #     created:,
      #     currency:,
      #     last_four:,
      #     owner:,
      #     owner_type:,
      #     routing_number:,
      #     state:,
      #     type:,
      #     verification_attempts:,
      #     verification_method:,
      #     verification_state:,
      #     account_token: nil,
      #     address: nil,
      #     company_id: nil,
      #     dob: nil,
      #     doing_business_as: nil,
      #     financial_account_token: nil,
      #     name: nil,
      #     user_defined_id: nil,
      #     verification_failed_reason: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Owner Type
      module OwnerType
        extend Lithic::Enum

        BUSINESS = :BUSINESS
        INDIVIDUAL = :INDIVIDUAL

        finalize!
      end

      # Account State
      module State
        extend Lithic::Enum

        ENABLED = :ENABLED
        CLOSED = :CLOSED
        PAUSED = :PAUSED

        finalize!
      end

      # Account Type
      module Type
        extend Lithic::Enum

        CHECKING = :CHECKING
        SAVINGS = :SAVINGS

        finalize!
      end

      # Verification Method
      module VerificationMethod
        extend Lithic::Enum

        MANUAL = :MANUAL
        MICRO_DEPOSIT = :MICRO_DEPOSIT
        PLAID = :PLAID
        PRENOTE = :PRENOTE

        finalize!
      end

      # Verification State
      module VerificationState
        extend Lithic::Enum

        PENDING = :PENDING
        ENABLED = :ENABLED
        FAILED_VERIFICATION = :FAILED_VERIFICATION
        INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS

        finalize!
      end
    end
  end
end
