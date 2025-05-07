# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalBankAccounts#create
    class ExternalBankAccountCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
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
      #   @return [Symbol, Lithic::OwnerType]
      required :owner_type, enum: -> { Lithic::OwnerType }

      # @!attribute routing_number
      #   Routing Number
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute type
      #   Account Type
      #
      #   @return [Symbol, Lithic::ExternalBankAccountCreateParams::Type]
      required :type, enum: -> { Lithic::ExternalBankAccountCreateParams::Type }

      # @!attribute verification_method
      #   Verification Method
      #
      #   @return [Symbol, Lithic::ExternalBankAccountCreateParams::VerificationMethod]
      required :verification_method, enum: -> { Lithic::ExternalBankAccountCreateParams::VerificationMethod }

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
      #   @return [Lithic::ExternalBankAccountAddress, nil]
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

      # @!attribute verification_enforcement
      #
      #   @return [Boolean, nil]
      optional :verification_enforcement, Lithic::Internal::Type::Boolean

      # @!attribute processor_token
      #
      #   @return [String]
      required :processor_token, String

      # @!method initialize(account_number:, country:, currency:, financial_account_token:, owner:, owner_type:, routing_number:, type:, verification_method:, processor_token:, account_token: nil, address: nil, company_id: nil, dob: nil, doing_business_as: nil, name: nil, user_defined_id: nil, verification_enforcement: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::ExternalBankAccountCreateParams} for more details.
      #
      #   @param account_number [String] Account Number
      #
      #   @param country [String] The country that the bank account is located in using ISO 3166-1. We will only a
      #
      #   @param currency [String] currency of the external account 3-character alphabetic ISO 4217 code
      #
      #   @param financial_account_token [String] The financial account token of the operating account to fund the micro deposits
      #
      #   @param owner [String] Legal Name of the business or individual who owns the external account. This wil
      #
      #   @param owner_type [Symbol, Lithic::OwnerType] Owner Type
      #
      #   @param routing_number [String] Routing Number
      #
      #   @param type [Symbol, Lithic::ExternalBankAccountCreateParams::Type] Account Type
      #
      #   @param verification_method [Symbol, Lithic::ExternalBankAccountCreateParams::VerificationMethod] Verification Method
      #
      #   @param processor_token [String]
      #
      #   @param account_token [String] Indicates which Lithic account the external account is associated with. For exte
      #
      #   @param address [Lithic::ExternalBankAccountAddress] Address
      #
      #   @param company_id [String] Optional field that helps identify bank accounts in receipts
      #
      #   @param dob [Date] Date of Birth of the Individual that owns the external bank account
      #
      #   @param doing_business_as [String] Doing Business As
      #
      #   @param name [String] The nickname for this External Bank Account
      #
      #   @param user_defined_id [String] User Defined ID
      #
      #   @param verification_enforcement [Boolean]
      #
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
