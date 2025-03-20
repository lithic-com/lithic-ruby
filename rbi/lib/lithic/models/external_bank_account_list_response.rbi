# typed: strong

module Lithic
  module Models
    class ExternalBankAccountListResponse < Lithic::BaseModel
      # A globally unique identifier for this record of an external bank account
      #   association. If a program links an external bank account to more than one
      #   end-user or to both the program and the end-user, then Lithic will return each
      #   record of the association
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # The country that the bank account is located in using ISO 3166-1. We will only
      #   accept USA bank accounts e.g., USA
      sig { returns(String) }
      def country
      end

      sig { params(_: String).returns(String) }
      def country=(_)
      end

      # An ISO 8601 string representing when this funding source was added to the Lithic
      #   account.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # currency of the external account 3-character alphabetic ISO 4217 code
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # The last 4 digits of the bank account. Derived by Lithic from the account number
      #   passed
      sig { returns(String) }
      def last_four
      end

      sig { params(_: String).returns(String) }
      def last_four=(_)
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
      sig { returns(Lithic::Models::ExternalBankAccountListResponse::OwnerType::TaggedSymbol) }
      def owner_type
      end

      sig do
        params(_: Lithic::Models::ExternalBankAccountListResponse::OwnerType::TaggedSymbol)
          .returns(Lithic::Models::ExternalBankAccountListResponse::OwnerType::TaggedSymbol)
      end
      def owner_type=(_)
      end

      # Routing Number
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # Account State
      sig { returns(Lithic::Models::ExternalBankAccountListResponse::State::TaggedSymbol) }
      def state
      end

      sig do
        params(_: Lithic::Models::ExternalBankAccountListResponse::State::TaggedSymbol)
          .returns(Lithic::Models::ExternalBankAccountListResponse::State::TaggedSymbol)
      end
      def state=(_)
      end

      # Account Type
      sig { returns(Lithic::Models::ExternalBankAccountListResponse::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Lithic::Models::ExternalBankAccountListResponse::Type::TaggedSymbol)
          .returns(Lithic::Models::ExternalBankAccountListResponse::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # The number of attempts at verification
      sig { returns(Integer) }
      def verification_attempts
      end

      sig { params(_: Integer).returns(Integer) }
      def verification_attempts=(_)
      end

      # Verification Method
      sig { returns(Lithic::Models::ExternalBankAccountListResponse::VerificationMethod::TaggedSymbol) }
      def verification_method
      end

      sig do
        params(_: Lithic::Models::ExternalBankAccountListResponse::VerificationMethod::TaggedSymbol)
          .returns(Lithic::Models::ExternalBankAccountListResponse::VerificationMethod::TaggedSymbol)
      end
      def verification_method=(_)
      end

      # Verification State
      sig { returns(Lithic::Models::ExternalBankAccountListResponse::VerificationState::TaggedSymbol) }
      def verification_state
      end

      sig do
        params(_: Lithic::Models::ExternalBankAccountListResponse::VerificationState::TaggedSymbol)
          .returns(Lithic::Models::ExternalBankAccountListResponse::VerificationState::TaggedSymbol)
      end
      def verification_state=(_)
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

      # The financial account token of the operating account to fund the micro deposits
      sig { returns(T.nilable(String)) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
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

      # Optional free text description of the reason for the failed verification. For
      #   ACH micro-deposits returned, this field will display the reason return code sent
      #   by the ACH network
      sig { returns(T.nilable(String)) }
      def verification_failed_reason
      end

      sig { params(_: String).returns(String) }
      def verification_failed_reason=(_)
      end

      sig do
        params(
          token: String,
          country: String,
          created: Time,
          currency: String,
          last_four: String,
          owner: String,
          owner_type: Lithic::Models::ExternalBankAccountListResponse::OwnerType::TaggedSymbol,
          routing_number: String,
          state: Lithic::Models::ExternalBankAccountListResponse::State::TaggedSymbol,
          type: Lithic::Models::ExternalBankAccountListResponse::Type::TaggedSymbol,
          verification_attempts: Integer,
          verification_method: Lithic::Models::ExternalBankAccountListResponse::VerificationMethod::TaggedSymbol,
          verification_state: Lithic::Models::ExternalBankAccountListResponse::VerificationState::TaggedSymbol,
          account_token: String,
          address: Lithic::Models::ExternalBankAccountAddress,
          company_id: String,
          dob: Date,
          doing_business_as: String,
          financial_account_token: String,
          name: String,
          user_defined_id: String,
          verification_failed_reason: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        country:,
        created:,
        currency:,
        last_four:,
        owner:,
        owner_type:,
        routing_number:,
        state:,
        type:,
        verification_attempts:,
        verification_method:,
        verification_state:,
        account_token: nil,
        address: nil,
        company_id: nil,
        dob: nil,
        doing_business_as: nil,
        financial_account_token: nil,
        name: nil,
        user_defined_id: nil,
        verification_failed_reason: nil
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              country: String,
              created: Time,
              currency: String,
              last_four: String,
              owner: String,
              owner_type: Lithic::Models::ExternalBankAccountListResponse::OwnerType::TaggedSymbol,
              routing_number: String,
              state: Lithic::Models::ExternalBankAccountListResponse::State::TaggedSymbol,
              type: Lithic::Models::ExternalBankAccountListResponse::Type::TaggedSymbol,
              verification_attempts: Integer,
              verification_method: Lithic::Models::ExternalBankAccountListResponse::VerificationMethod::TaggedSymbol,
              verification_state: Lithic::Models::ExternalBankAccountListResponse::VerificationState::TaggedSymbol,
              account_token: String,
              address: Lithic::Models::ExternalBankAccountAddress,
              company_id: String,
              dob: Date,
              doing_business_as: String,
              financial_account_token: String,
              name: String,
              user_defined_id: String,
              verification_failed_reason: String
            }
          )
      end
      def to_hash
      end

      # Owner Type
      module OwnerType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountListResponse::OwnerType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalBankAccountListResponse::OwnerType::TaggedSymbol) }

        BUSINESS = T.let(:BUSINESS, Lithic::Models::ExternalBankAccountListResponse::OwnerType::TaggedSymbol)
        INDIVIDUAL = T.let(:INDIVIDUAL, Lithic::Models::ExternalBankAccountListResponse::OwnerType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalBankAccountListResponse::OwnerType::TaggedSymbol]) }
          def values
          end
        end
      end

      # Account State
      module State
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountListResponse::State) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalBankAccountListResponse::State::TaggedSymbol) }

        ENABLED = T.let(:ENABLED, Lithic::Models::ExternalBankAccountListResponse::State::TaggedSymbol)
        CLOSED = T.let(:CLOSED, Lithic::Models::ExternalBankAccountListResponse::State::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::Models::ExternalBankAccountListResponse::State::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalBankAccountListResponse::State::TaggedSymbol]) }
          def values
          end
        end
      end

      # Account Type
      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountListResponse::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalBankAccountListResponse::Type::TaggedSymbol) }

        CHECKING = T.let(:CHECKING, Lithic::Models::ExternalBankAccountListResponse::Type::TaggedSymbol)
        SAVINGS = T.let(:SAVINGS, Lithic::Models::ExternalBankAccountListResponse::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalBankAccountListResponse::Type::TaggedSymbol]) }
          def values
          end
        end
      end

      # Verification Method
      module VerificationMethod
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountListResponse::VerificationMethod) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalBankAccountListResponse::VerificationMethod::TaggedSymbol) }

        MANUAL =
          T.let(:MANUAL, Lithic::Models::ExternalBankAccountListResponse::VerificationMethod::TaggedSymbol)
        MICRO_DEPOSIT =
          T.let(:MICRO_DEPOSIT, Lithic::Models::ExternalBankAccountListResponse::VerificationMethod::TaggedSymbol)
        PLAID = T.let(:PLAID, Lithic::Models::ExternalBankAccountListResponse::VerificationMethod::TaggedSymbol)
        PRENOTE =
          T.let(:PRENOTE, Lithic::Models::ExternalBankAccountListResponse::VerificationMethod::TaggedSymbol)

        class << self
          sig do
            override
              .returns(T::Array[Lithic::Models::ExternalBankAccountListResponse::VerificationMethod::TaggedSymbol])
          end
          def values
          end
        end
      end

      # Verification State
      module VerificationState
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountListResponse::VerificationState) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalBankAccountListResponse::VerificationState::TaggedSymbol) }

        PENDING =
          T.let(:PENDING, Lithic::Models::ExternalBankAccountListResponse::VerificationState::TaggedSymbol)
        ENABLED =
          T.let(:ENABLED, Lithic::Models::ExternalBankAccountListResponse::VerificationState::TaggedSymbol)
        FAILED_VERIFICATION =
          T.let(
            :FAILED_VERIFICATION,
            Lithic::Models::ExternalBankAccountListResponse::VerificationState::TaggedSymbol
          )
        INSUFFICIENT_FUNDS =
          T.let(
            :INSUFFICIENT_FUNDS,
            Lithic::Models::ExternalBankAccountListResponse::VerificationState::TaggedSymbol
          )

        class << self
          sig do
            override
              .returns(T::Array[Lithic::Models::ExternalBankAccountListResponse::VerificationState::TaggedSymbol])
          end
          def values
          end
        end
      end
    end
  end
end
