# typed: strong

module Lithic
  module Models
    class ExternalBankAccountRetryPrenoteResponse < Lithic::Internal::Type::BaseModel
      # A globally unique identifier for this record of an external bank account
      # association. If a program links an external bank account to more than one
      # end-user or to both the program and the end-user, then Lithic will return each
      # record of the association
      sig { returns(String) }
      attr_accessor :token

      # The country that the bank account is located in using ISO 3166-1. We will only
      # accept USA bank accounts e.g., USA
      sig { returns(String) }
      attr_accessor :country

      # An ISO 8601 string representing when this funding source was added to the Lithic
      # account.
      sig { returns(Time) }
      attr_accessor :created

      # currency of the external account 3-character alphabetic ISO 4217 code
      sig { returns(String) }
      attr_accessor :currency

      # The last 4 digits of the bank account. Derived by Lithic from the account number
      # passed
      sig { returns(String) }
      attr_accessor :last_four

      # Legal Name of the business or individual who owns the external account. This
      # will appear in statements
      sig { returns(String) }
      attr_accessor :owner

      # Owner Type
      sig { returns(Lithic::Models::OwnerType::TaggedSymbol) }
      attr_accessor :owner_type

      # Routing Number
      sig { returns(String) }
      attr_accessor :routing_number

      # Account State
      sig { returns(Lithic::Models::ExternalBankAccountRetryPrenoteResponse::State::TaggedSymbol) }
      attr_accessor :state

      # Account Type
      sig { returns(Lithic::Models::ExternalBankAccountRetryPrenoteResponse::Type::TaggedSymbol) }
      attr_accessor :type

      # The number of attempts at verification
      sig { returns(Integer) }
      attr_accessor :verification_attempts

      # Verification Method
      sig { returns(Lithic::Models::VerificationMethod::TaggedSymbol) }
      attr_accessor :verification_method

      # Verification State
      sig { returns(Lithic::Models::ExternalBankAccountRetryPrenoteResponse::VerificationState::TaggedSymbol) }
      attr_accessor :verification_state

      # Indicates which Lithic account the external account is associated with. For
      # external accounts that are associated with the program, account_token field
      # returned will be null
      sig { returns(T.nilable(String)) }
      attr_reader :account_token

      sig { params(account_token: String).void }
      attr_writer :account_token

      # Address
      sig { returns(T.nilable(Lithic::Models::ExternalBankAccountAddress)) }
      attr_reader :address

      sig { params(address: T.any(Lithic::Models::ExternalBankAccountAddress, Lithic::Internal::AnyHash)).void }
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

      # The financial account token of the operating account to fund the micro deposits
      sig { returns(T.nilable(String)) }
      attr_reader :financial_account_token

      sig { params(financial_account_token: String).void }
      attr_writer :financial_account_token

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

      # Optional free text description of the reason for the failed verification. For
      # ACH micro-deposits returned, this field will display the reason return code sent
      # by the ACH network
      sig { returns(T.nilable(String)) }
      attr_reader :verification_failed_reason

      sig { params(verification_failed_reason: String).void }
      attr_writer :verification_failed_reason

      sig do
        params(
          token: String,
          country: String,
          created: Time,
          currency: String,
          last_four: String,
          owner: String,
          owner_type: Lithic::Models::OwnerType::OrSymbol,
          routing_number: String,
          state: Lithic::Models::ExternalBankAccountRetryPrenoteResponse::State::OrSymbol,
          type: Lithic::Models::ExternalBankAccountRetryPrenoteResponse::Type::OrSymbol,
          verification_attempts: Integer,
          verification_method: Lithic::Models::VerificationMethod::OrSymbol,
          verification_state: Lithic::Models::ExternalBankAccountRetryPrenoteResponse::VerificationState::OrSymbol,
          account_token: String,
          address: T.any(Lithic::Models::ExternalBankAccountAddress, Lithic::Internal::AnyHash),
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
      ); end
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
              owner_type: Lithic::Models::OwnerType::TaggedSymbol,
              routing_number: String,
              state: Lithic::Models::ExternalBankAccountRetryPrenoteResponse::State::TaggedSymbol,
              type: Lithic::Models::ExternalBankAccountRetryPrenoteResponse::Type::TaggedSymbol,
              verification_attempts: Integer,
              verification_method: Lithic::Models::VerificationMethod::TaggedSymbol,
              verification_state: Lithic::Models::ExternalBankAccountRetryPrenoteResponse::VerificationState::TaggedSymbol,
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
      def to_hash; end

      # Account State
      module State
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountRetryPrenoteResponse::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED = T.let(:ENABLED, Lithic::Models::ExternalBankAccountRetryPrenoteResponse::State::TaggedSymbol)
        CLOSED = T.let(:CLOSED, Lithic::Models::ExternalBankAccountRetryPrenoteResponse::State::TaggedSymbol)
        PAUSED = T.let(:PAUSED, Lithic::Models::ExternalBankAccountRetryPrenoteResponse::State::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalBankAccountRetryPrenoteResponse::State::TaggedSymbol]) }
        def self.values; end
      end

      # Account Type
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountRetryPrenoteResponse::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHECKING = T.let(:CHECKING, Lithic::Models::ExternalBankAccountRetryPrenoteResponse::Type::TaggedSymbol)
        SAVINGS = T.let(:SAVINGS, Lithic::Models::ExternalBankAccountRetryPrenoteResponse::Type::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalBankAccountRetryPrenoteResponse::Type::TaggedSymbol]) }
        def self.values; end
      end

      # Verification State
      module VerificationState
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::ExternalBankAccountRetryPrenoteResponse::VerificationState) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:PENDING, Lithic::Models::ExternalBankAccountRetryPrenoteResponse::VerificationState::TaggedSymbol)
        ENABLED =
          T.let(:ENABLED, Lithic::Models::ExternalBankAccountRetryPrenoteResponse::VerificationState::TaggedSymbol)
        FAILED_VERIFICATION =
          T.let(
            :FAILED_VERIFICATION,
            Lithic::Models::ExternalBankAccountRetryPrenoteResponse::VerificationState::TaggedSymbol
          )
        INSUFFICIENT_FUNDS =
          T.let(
            :INSUFFICIENT_FUNDS,
            Lithic::Models::ExternalBankAccountRetryPrenoteResponse::VerificationState::TaggedSymbol
          )

        sig do
          override
            .returns(
              T::Array[Lithic::Models::ExternalBankAccountRetryPrenoteResponse::VerificationState::TaggedSymbol]
            )
        end
        def self.values; end
      end
    end
  end
end
