# typed: strong

module Lithic
  module Models
    class ManagementOperationCreateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Symbol) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def category=(_)
      end

      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      sig { returns(Date) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      sig { returns(Symbol) }
      def event_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def event_type=(_)
      end

      sig { returns(String) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      sig { returns(T.nilable(String)) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: String).returns(String) }
      def memo=(_)
      end

      sig { returns(T.nilable(String)) }
      def subtype
      end

      sig { params(_: String).returns(String) }
      def subtype=(_)
      end

      sig { returns(T.nilable(String)) }
      def user_defined_id
      end

      sig { params(_: String).returns(String) }
      def user_defined_id=(_)
      end

      sig do
        params(
          amount: Integer,
          category: Symbol,
          direction: Symbol,
          effective_date: Date,
          event_type: Symbol,
          financial_account_token: String,
          token: String,
          memo: String,
          subtype: String,
          user_defined_id: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        category:,
        direction:,
        effective_date:,
        event_type:,
        financial_account_token:,
        token: nil,
        memo: nil,
        subtype: nil,
        user_defined_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              category: Symbol,
              direction: Symbol,
              effective_date: Date,
              event_type: Symbol,
              financial_account_token: String,
              token: String,
              memo: String,
              subtype: String,
              user_defined_id: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Category < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        MANAGEMENT_FEE = :MANAGEMENT_FEE
        MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
        MANAGEMENT_REWARD = :MANAGEMENT_REWARD
        MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT
      end

      class Direction < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CREDIT = :CREDIT
        DEBIT = :DEBIT
      end

      class EventType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CASH_BACK = :CASH_BACK
        CURRENCY_CONVERSION = :CURRENCY_CONVERSION
        INTEREST = :INTEREST
        LATE_PAYMENT = :LATE_PAYMENT
        BILLING_ERROR = :BILLING_ERROR
        PROVISIONAL_CREDIT = :PROVISIONAL_CREDIT
        LOSS_WRITE_OFF = :LOSS_WRITE_OFF
        CASH_BACK_REVERSAL = :CASH_BACK_REVERSAL
        CURRENCY_CONVERSION_REVERSAL = :CURRENCY_CONVERSION_REVERSAL
        INTEREST_REVERSAL = :INTEREST_REVERSAL
        LATE_PAYMENT_REVERSAL = :LATE_PAYMENT_REVERSAL
        BILLING_ERROR_REVERSAL = :BILLING_ERROR_REVERSAL
        PROVISIONAL_CREDIT_REVERSAL = :PROVISIONAL_CREDIT_REVERSAL
        RETURNED_PAYMENT = :RETURNED_PAYMENT
        RETURNED_PAYMENT_REVERSAL = :RETURNED_PAYMENT_REVERSAL
      end
    end
  end
end
