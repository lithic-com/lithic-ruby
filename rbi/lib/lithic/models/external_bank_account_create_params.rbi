# typed: strong

module Lithic
  module Models
    class ExternalBankAccountCreateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Account Number
      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      # The country that the bank account is located in using ISO 3166-1. We will only
      #   accept USA bank accounts e.g., USA
      sig { returns(String) }
      def country
      end

      sig { params(_: String).returns(String) }
      def country=(_)
      end

      # currency of the external account 3-character alphabetic ISO 4217 code
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # The financial account token of the operating account to fund the micro deposits
      sig { returns(String) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      # Legal Name of the business or individual who owns the external account. This
      #   will appear in statements
      sig { returns(String) }
      def owner
      end

      sig { params(_: String).returns(String) }
      def owner=(_)
      end

      # Owner Type
      sig { returns(Lithic::Models::OwnerType::OrSymbol) }
      def owner_type
      end

      sig { params(_: Lithic::Models::OwnerType::OrSymbol).returns(Lithic::Models::OwnerType::OrSymbol) }
      def owner_type=(_)
      end

      # Routing Number
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # Account Type
      sig { returns(Lithic::Models::ExternalBankAccountCreateParams::Type::OrSymbol) }
      def type
      end

      sig do
        params(_: Lithic::Models::ExternalBankAccountCreateParams::Type::OrSymbol)
          .returns(Lithic::Models::ExternalBankAccountCreateParams::Type::OrSymbol)
      end
      def type=(_)
      end

      # Verification Method
      sig { returns(Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod::OrSymbol) }
      def verification_method
      end

      sig do
        params(_: Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod::OrSymbol)
          .returns(Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod::OrSymbol)
      end
      def verification_method=(_)
      end

      # Indicates which Lithic account the external account is associated with. For
      #   external accounts that are associated with the program, account_token field
      #   returned will be null
      sig { returns(T.nilable(String)) }
      def account_token
      end

      sig { params(_: String).returns(String) }
      def account_token=(_)
      end

      # Address
      sig { returns(T.nilable(Lithic::Models::ExternalBankAccountAddress)) }
      def address
      end

      sig do
        params(_: T.any(Lithic::Models::ExternalBankAccountAddress, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::ExternalBankAccountAddress, Lithic::Util::AnyHash))
      end
      def address=(_)
      end

      # Optional field that helps identify bank accounts in receipts
      sig { returns(T.nilable(String)) }
      def company_id
      end

      sig { params(_: String).returns(String) }
      def company_id=(_)
      end

      # Date of Birth of the Individual that owns the external bank account
      sig { returns(T.nilable(Date)) }
      def dob
      end

      sig { params(_: Date).returns(Date) }
      def dob=(_)
      end

      # Doing Business As
      sig { returns(T.nilable(String)) }
      def doing_business_as
      end

      sig { params(_: String).returns(String) }
      def doing_business_as=(_)
      end

      # The nickname for this External Bank Account
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # User Defined ID
      sig { returns(T.nilable(String)) }
      def user_defined_id
      end

      sig { params(_: String).returns(String) }
      def user_defined_id=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def verification_enforcement
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def verification_enforcement=(_)
      end

      sig { returns(String) }
      def processor_token
      end

      sig { params(_: String).returns(String) }
      def processor_token=(_)
      end

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
          address: T.any(Lithic::Models::ExternalBankAccountAddress, Lithic::Util::AnyHash),
          company_id: String,
          dob: Date,
          doing_business_as: String,
          name: String,
          user_defined_id: String,
          verification_enforcement: T::Boolean,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
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
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalBankAccountCreateParams::Type::TaggedSymbol) }

        CHECKING = T.let(:CHECKING, Lithic::Models::ExternalBankAccountCreateParams::Type::TaggedSymbol)
        SAVINGS = T.let(:SAVINGS, Lithic::Models::ExternalBankAccountCreateParams::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalBankAccountCreateParams::Type::TaggedSymbol]) }
          def values
          end
        end
      end

      # Verification Method
      module VerificationMethod
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod::TaggedSymbol) }

        EXTERNALLY_VERIFIED =
          T.let(
            :EXTERNALLY_VERIFIED,
            Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod::TaggedSymbol
          )

        class << self
          sig do
            override
              .returns(T::Array[Lithic::Models::ExternalBankAccountCreateParams::VerificationMethod::TaggedSymbol])
          end
          def values
          end
        end
      end
    end
  end
end
