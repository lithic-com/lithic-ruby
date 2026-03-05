# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ExternalBankAccounts#create
    class ExternalBankAccountCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Lithic::Models::ExternalBankAccountCreateParams::Body::ExternallyVerified, Lithic::Models::ExternalBankAccountCreateParams::Body::Unverified, Lithic::Models::ExternalBankAccountCreateParams::Body::BankVerifiedCreateBankAccountAPIRequest]
      required :body, union: -> { Lithic::ExternalBankAccountCreateParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [Lithic::Models::ExternalBankAccountCreateParams::Body::ExternallyVerified, Lithic::Models::ExternalBankAccountCreateParams::Body::Unverified, Lithic::Models::ExternalBankAccountCreateParams::Body::BankVerifiedCreateBankAccountAPIRequest]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      module Body
        extend Lithic::Internal::Type::Union

        discriminator :verification_method

        variant :EXTERNALLY_VERIFIED, -> { Lithic::ExternalBankAccountCreateParams::Body::ExternallyVerified }

        variant :UNVERIFIED, -> { Lithic::ExternalBankAccountCreateParams::Body::Unverified }

        variant -> { Lithic::ExternalBankAccountCreateParams::Body::BankVerifiedCreateBankAccountAPIRequest }

        class BankVerifiedCreateBankAccountAPIRequest < Lithic::Internal::Type::BaseModel
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
          required :owner_type, enum: -> { Lithic::OwnerType }

          # @!attribute routing_number
          #   Routing Number
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute type
          #   Account Type
          #
          #   @return [Symbol, Lithic::Models::ExternalBankAccountCreateParams::Body::BankVerifiedCreateBankAccountAPIRequest::Type]
          required :type,
                   enum: -> { Lithic::ExternalBankAccountCreateParams::Body::BankVerifiedCreateBankAccountAPIRequest::Type }

          # @!attribute verification_method
          #   Verification Method
          #
          #   @return [Symbol, Lithic::Models::VerificationMethod]
          required :verification_method, enum: -> { Lithic::VerificationMethod }

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

          # @!method initialize(account_number:, country:, currency:, financial_account_token:, owner:, owner_type:, routing_number:, type:, verification_method:, account_token: nil, address: nil, company_id: nil, dob: nil, doing_business_as: nil, name: nil, user_defined_id: nil, verification_enforcement: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::ExternalBankAccountCreateParams::Body::BankVerifiedCreateBankAccountAPIRequest}
          #   for more details.
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
          #   @param owner_type [Symbol, Lithic::Models::OwnerType] Owner Type
          #
          #   @param routing_number [String] Routing Number
          #
          #   @param type [Symbol, Lithic::Models::ExternalBankAccountCreateParams::Body::BankVerifiedCreateBankAccountAPIRequest::Type] Account Type
          #
          #   @param verification_method [Symbol, Lithic::Models::VerificationMethod] Verification Method
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
          #   @param name [String] The nickname for this External Bank Account
          #
          #   @param user_defined_id [String] User Defined ID
          #
          #   @param verification_enforcement [Boolean]

          # Account Type
          #
          # @see Lithic::Models::ExternalBankAccountCreateParams::Body::BankVerifiedCreateBankAccountAPIRequest#type
          module Type
            extend Lithic::Internal::Type::Enum

            CHECKING = :CHECKING
            SAVINGS = :SAVINGS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class ExternallyVerified < Lithic::Internal::Type::BaseModel
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
          required :owner_type, enum: -> { Lithic::OwnerType }

          # @!attribute routing_number
          #   Routing Number
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute type
          #   Account Type
          #
          #   @return [Symbol, Lithic::Models::ExternalBankAccountCreateParams::Body::ExternallyVerified::Type]
          required :type, enum: -> { Lithic::ExternalBankAccountCreateParams::Body::ExternallyVerified::Type }

          # @!attribute verification_method
          #   Verification Method
          #
          #   @return [Symbol, :EXTERNALLY_VERIFIED]
          required :verification_method, const: :EXTERNALLY_VERIFIED

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

          # @!method initialize(account_number:, country:, currency:, owner:, owner_type:, routing_number:, type:, account_token: nil, address: nil, company_id: nil, dob: nil, doing_business_as: nil, name: nil, user_defined_id: nil, verification_method: :EXTERNALLY_VERIFIED)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::ExternalBankAccountCreateParams::Body::ExternallyVerified} for
          #   more details.
          #
          #   @param account_number [String] Account Number
          #
          #   @param country [String] The country that the bank account is located in using ISO 3166-1. We will only a
          #
          #   @param currency [String] currency of the external account 3-character alphabetic ISO 4217 code
          #
          #   @param owner [String] Legal Name of the business or individual who owns the external account. This wil
          #
          #   @param owner_type [Symbol, Lithic::Models::OwnerType] Owner Type
          #
          #   @param routing_number [String] Routing Number
          #
          #   @param type [Symbol, Lithic::Models::ExternalBankAccountCreateParams::Body::ExternallyVerified::Type] Account Type
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
          #   @param name [String] The nickname for this External Bank Account
          #
          #   @param user_defined_id [String] User Defined ID
          #
          #   @param verification_method [Symbol, :EXTERNALLY_VERIFIED] Verification Method

          # Account Type
          #
          # @see Lithic::Models::ExternalBankAccountCreateParams::Body::ExternallyVerified#type
          module Type
            extend Lithic::Internal::Type::Enum

            CHECKING = :CHECKING
            SAVINGS = :SAVINGS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Unverified < Lithic::Internal::Type::BaseModel
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
          required :owner_type, enum: -> { Lithic::OwnerType }

          # @!attribute routing_number
          #   Routing Number
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute type
          #   Account Type
          #
          #   @return [Symbol, Lithic::Models::ExternalBankAccountCreateParams::Body::Unverified::Type]
          required :type, enum: -> { Lithic::ExternalBankAccountCreateParams::Body::Unverified::Type }

          # @!attribute verification_method
          #   Verification Method
          #
          #   @return [Symbol, :UNVERIFIED]
          required :verification_method, const: :UNVERIFIED

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

          # @!method initialize(account_number:, country:, currency:, owner:, owner_type:, routing_number:, type:, account_token: nil, address: nil, company_id: nil, dob: nil, doing_business_as: nil, name: nil, user_defined_id: nil, verification_method: :UNVERIFIED)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::ExternalBankAccountCreateParams::Body::Unverified} for more
          #   details.
          #
          #   @param account_number [String] Account Number
          #
          #   @param country [String] The country that the bank account is located in using ISO 3166-1. We will only a
          #
          #   @param currency [String] currency of the external account 3-character alphabetic ISO 4217 code
          #
          #   @param owner [String] Legal Name of the business or individual who owns the external account. This wil
          #
          #   @param owner_type [Symbol, Lithic::Models::OwnerType] Owner Type
          #
          #   @param routing_number [String] Routing Number
          #
          #   @param type [Symbol, Lithic::Models::ExternalBankAccountCreateParams::Body::Unverified::Type] Account Type
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
          #   @param name [String] The nickname for this External Bank Account
          #
          #   @param user_defined_id [String] User Defined ID
          #
          #   @param verification_method [Symbol, :UNVERIFIED] Verification Method

          # Account Type
          #
          # @see Lithic::Models::ExternalBankAccountCreateParams::Body::Unverified#type
          module Type
            extend Lithic::Internal::Type::Enum

            CHECKING = :CHECKING
            SAVINGS = :SAVINGS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Lithic::Models::ExternalBankAccountCreateParams::Body::ExternallyVerified, Lithic::Models::ExternalBankAccountCreateParams::Body::Unverified, Lithic::Models::ExternalBankAccountCreateParams::Body::BankVerifiedCreateBankAccountAPIRequest)]
      end
    end
  end
end
