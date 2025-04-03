# typed: strong

module Lithic
  module Models
    class ExternalBankAccountCreateParams < Lithic::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Account Number
      sig { returns(String) }
      attr_accessor :account_number

      # The country that the bank account is located in using ISO 3166-1. We will only
      #   accept USA bank accounts e.g., USA
      sig { returns(String) }
      attr_accessor :country

      # currency of the external account 3-character alphabetic ISO 4217 code
      sig { returns(String) }
      attr_accessor :currency

      # The financial account token of the operating account to fund the micro deposits
      sig { returns(String) }
      attr_accessor :financial_account_token

      # Legal Name of the business or individual who owns the external account. This
      #   will appear in statements
      sig { returns(String) }
      attr_accessor :owner

      # Owner Type
      sig { returns(Lithic::Models::OwnerType::OrSymbol) }
      attr_accessor :owner_type

      # Routing Number
      sig { returns(String) }
      attr_accessor :routing_number

      # Account Type
      sig { returns(Lithic::Models::ExternalBankAccountCreateParams::Type::OrSymbol) }
      attr_accessor :type

      # Verification Method
      sig { returns(Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod::OrSymbol) }
      attr_accessor :verification_method

      # Indicates which Lithic account the external account is associated with. For
      #   external accounts that are associated with the program, account_token field
      #   returned will be null
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # Address
      sig { returns(T.nilable(Lithic::Models::ExternalBankAccountAddress)) }
      attr_reader :address

      sig { params(address: T.any(Lithic::Models::ExternalBankAccountAddress, Lithic::Internal::Util::AnyHash)).void }
      attr_writer :address

      # Optional field that helps identify bank accounts in receipts
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # Date of Birth of the Individual that owns the external bank account
      sig { returns(T.nilable(Date)) }
      attr_reader :dob

      sig { params(dob: Date).void }
      attr_writer :dob

      # Doing Business As
      sig { returns(T.nilable(String)) }
      attr_reader :doing_business_as

      sig { params(doing_business_as: String).void }
      attr_writer :doing_business_as

      # The nickname for this External Bank Account
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # User Defined ID
      sig { returns(T.nilable(String)) }
      attr_reader :user_defined_id

      sig { params(user_defined_id: String).void }
      attr_writer :user_defined_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :verification_enforcement

      sig { params(verification_enforcement: T::Boolean).void }
      attr_writer :verification_enforcement

      sig { returns(String) }
      attr_accessor :processor_token

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
          address: T.any(Lithic::Models::ExternalBankAccountAddress, Lithic::Internal::Util::AnyHash),
          company_id: String,
          dob: Date,
          doing_business_as: String,
          name: String,
          user_defined_id: String,
          verification_enforcement: T::Boolean,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_number:,
        country:,
        currency:,
        financial_account_token:,
        owner:,
        owner_type:,
        routing_number:,
        type:,
        verification_method:,
        processor_token:,
        account_token: nil,
        address: nil,
        company_id: nil,
        dob: nil,
        doing_business_as: nil,
        name: nil,
        user_defined_id: nil,
        verification_enforcement: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              account_number: String,
              country: String,
              currency: String,
              financial_account_token: String,
              owner: String,
              owner_type: Lithic::Models::OwnerType::OrSymbol,
              routing_number: String,
              type: Lithic::Models::ExternalBankAccountCreateParams::Type::OrSymbol,
              verification_method: Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod::OrSymbol,
              account_token: String,
              address: Lithic::Models::ExternalBankAccountAddress,
              company_id: String,
              dob: Date,
              doing_business_as: String,
              name: String,
              user_defined_id: String,
              verification_enforcement: T::Boolean,
              processor_token: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Account Type
      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountCreateParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::ExternalBankAccountCreateParams::Type::TaggedSymbol) }

        CHECKING = T.let(:CHECKING, Lithic::Models::ExternalBankAccountCreateParams::Type::TaggedSymbol)
        SAVINGS = T.let(:SAVINGS, Lithic::Models::ExternalBankAccountCreateParams::Type::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalBankAccountCreateParams::Type::TaggedSymbol]) }
        def self.values
        end
      end

      # Verification Method
      module VerificationMethod
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod::TaggedSymbol) }

        EXTERNALLY_VERIFIED =
          T.let(
            :EXTERNALLY_VERIFIED,
            Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod::TaggedSymbol
          )

        sig do
          override
            .returns(T::Array[Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
