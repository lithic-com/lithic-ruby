# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalBankAccounts#create
    class ExternalBankAccountCreateParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_number
      #   Account Number
      #
      #   @return [String]
      required :account_number, String

      # @!attribute country
      #   The country that the bank account is located in using ISO 3166-1. We will only
      #   accept USA bank accounts e.g., USA
      #
      #   @return [String]
      required :country, String

      # @!attribute currency
      #   currency of the external account 3-character alphabetic ISO 4217 code
      #
      #   @return [String]
      required :currency, String

      # @!attribute financial_account_token
      #   The financial account token of the operating account to fund the micro deposits
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute owner
      #   Legal Name of the business or individual who owns the external account. This
      #   will appear in statements
      #
      #   @return [String]
      required :owner, String

      # @!attribute owner_type
      #   Owner Type
      #
      #   @return [Symbol, Lithic::Models::OwnerType]
      required :owner_type, enum: -> { Lithic::Models::OwnerType }

      # @!attribute routing_number
      #   Routing Number
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute type
      #   Account Type
      #
      #   @return [Symbol, Lithic::Models::ExternalBankAccountCreateParams::Type]
      required :type, enum: -> { Lithic::Models::ExternalBankAccountCreateParams::Type }

      # @!attribute verification_method
      #   Verification Method
      #
      #   @return [Symbol, Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod]
      required :verification_method,
               enum: -> { Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod }

      # @!attribute [r] account_token
      #   Indicates which Lithic account the external account is associated with. For
      #   external accounts that are associated with the program, account_token field
      #   returned will be null
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

      # @!attribute [r] verification_enforcement
      #
      #   @return [Boolean, nil]
      optional :verification_enforcement, Lithic::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :verification_enforcement

      # @!attribute processor_token
      #
      #   @return [String]
      required :processor_token, String

      # @!method initialize(account_number:, country:, currency:, financial_account_token:, owner:, owner_type:, routing_number:, type:, verification_method:, processor_token:, account_token: nil, address: nil, company_id: nil, dob: nil, doing_business_as: nil, name: nil, user_defined_id: nil, verification_enforcement: nil, request_options: {})
      #   @param account_number [String]
      #   @param country [String]
      #   @param currency [String]
      #   @param financial_account_token [String]
      #   @param owner [String]
      #   @param owner_type [Symbol, Lithic::Models::OwnerType]
      #   @param routing_number [String]
      #   @param type [Symbol, Lithic::Models::ExternalBankAccountCreateParams::Type]
      #   @param verification_method [Symbol, Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod]
      #   @param processor_token [String]
      #   @param account_token [String]
      #   @param address [Lithic::Models::ExternalBankAccountAddress]
      #   @param company_id [String]
      #   @param dob [Date]
      #   @param doing_business_as [String]
      #   @param name [String]
      #   @param user_defined_id [String]
      #   @param verification_enforcement [Boolean]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Account Type
      module Type
        extend Lithic::Internal::Type::Enum

        CHECKING = :CHECKING
        SAVINGS = :SAVINGS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Verification Method
      module VerificationMethod
        extend Lithic::Internal::Type::Enum

        EXTERNALLY_VERIFIED = :EXTERNALLY_VERIFIED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
