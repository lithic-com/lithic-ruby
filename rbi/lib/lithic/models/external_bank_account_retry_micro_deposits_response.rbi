# typed: strong

module Lithic
  module Models
    class ExternalBankAccountRetryMicroDepositsResponse < Lithic::BaseModel
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
      sig { returns(Symbol) }
      def owner_type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
      sig { returns(Symbol) }
      def state
      end

      sig { params(_: Symbol).returns(Symbol) }
      def state=(_)
      end

      # Account Type
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
      sig { returns(Symbol) }
      def verification_method
      end

      sig { params(_: Symbol).returns(Symbol) }
      def verification_method=(_)
      end

      # Verification State
      sig { returns(Symbol) }
      def verification_state
      end

      sig { params(_: Symbol).returns(Symbol) }
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

      sig { params(_: Lithic::Models::ExternalBankAccountAddress).returns(Lithic::Models::ExternalBankAccountAddress) }
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
          owner_type: Symbol,
          routing_number: String,
          state: Symbol,
          type: Symbol,
          verification_attempts: Integer,
          verification_method: Symbol,
          verification_state: Symbol,
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
              owner_type: Symbol,
              routing_number: String,
              state: Symbol,
              type: Symbol,
              verification_attempts: Integer,
              verification_method: Symbol,
              verification_state: Symbol,
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
      class OwnerType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        BUSINESS = :BUSINESS
        INDIVIDUAL = :INDIVIDUAL
      end

      # Account State
      class State < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ENABLED = :ENABLED
        CLOSED = :CLOSED
        PAUSED = :PAUSED
      end

      # Account Type
      class Type < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CHECKING = :CHECKING
        SAVINGS = :SAVINGS
      end

      # Verification Method
      class VerificationMethod < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        MANUAL = :MANUAL
        MICRO_DEPOSIT = :MICRO_DEPOSIT
        PLAID = :PLAID
        PRENOTE = :PRENOTE
      end

      # Verification State
      class VerificationState < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        PENDING = :PENDING
        ENABLED = :ENABLED
        FAILED_VERIFICATION = :FAILED_VERIFICATION
        INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS
      end
    end
  end
end
