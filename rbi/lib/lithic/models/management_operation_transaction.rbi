# typed: strong

module Lithic
  module Models
    class ManagementOperationTransaction < Lithic::BaseModel
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      sig { returns(Symbol) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def category=(_)
      end

      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      sig { returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event]) }
      def events
      end

      sig do
        params(_: T::Array[Lithic::Models::ManagementOperationTransaction::Event])
          .returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event])
      end
      def events=(_)
      end

      sig { returns(String) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      sig { returns(Integer) }
      def pending_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def pending_amount=(_)
      end

      sig { returns(Symbol) }
      def result
      end

      sig { params(_: Symbol).returns(Symbol) }
      def result=(_)
      end

      sig { returns(Integer) }
      def settled_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def settled_amount=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Time) }
      def updated
      end

      sig { params(_: Time).returns(Time) }
      def updated=(_)
      end

      sig { returns(T.nilable(String)) }
      def user_defined_id
      end

      sig { params(_: String).returns(String) }
      def user_defined_id=(_)
      end

      sig do
        params(
          token: String,
          category: Symbol,
          created: Time,
          currency: String,
          direction: Symbol,
          events: T::Array[Lithic::Models::ManagementOperationTransaction::Event],
          financial_account_token: String,
          pending_amount: Integer,
          result: Symbol,
          settled_amount: Integer,
          status: Symbol,
          updated: Time,
          user_defined_id: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        category:,
        created:,
        currency:,
        direction:,
        events:,
        financial_account_token:,
        pending_amount:,
        result:,
        settled_amount:,
        status:,
        updated:,
        user_defined_id: nil
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              category: Symbol,
              created: Time,
              currency: String,
              direction: Symbol,
              events: T::Array[Lithic::Models::ManagementOperationTransaction::Event],
              financial_account_token: String,
              pending_amount: Integer,
              result: Symbol,
              settled_amount: Integer,
              status: Symbol,
              updated: Time,
              user_defined_id: String
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

      class Event < Lithic::BaseModel
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(Time) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        sig { returns(T::Array[Symbol]) }
        def detailed_results
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def detailed_results=(_)
        end

        sig { returns(Date) }
        def effective_date
        end

        sig { params(_: Date).returns(Date) }
        def effective_date=(_)
        end

        sig { returns(String) }
        def memo
        end

        sig { params(_: String).returns(String) }
        def memo=(_)
        end

        sig { returns(Symbol) }
        def result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def result=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(T.nilable(String)) }
        def subtype
        end

        sig { params(_: String).returns(String) }
        def subtype=(_)
        end

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            detailed_results: T::Array[Symbol],
            effective_date: Date,
            memo: String,
            result: Symbol,
            type: Symbol,
            subtype: String
          )
            .returns(T.attached_class)
        end
        def self.new(token:, amount:, created:, detailed_results:, effective_date:, memo:, result:, type:, subtype: nil)
        end

        sig do
          override
            .returns(
              {
                token: String,
                amount: Integer,
                created: Time,
                detailed_results: T::Array[Symbol],
                effective_date: Date,
                memo: String,
                result: Symbol,
                type: Symbol,
                subtype: String
              }
            )
        end
        def to_hash
        end

        class DetailedResult < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          APPROVED = :APPROVED
        end

        class Result < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          APPROVED = :APPROVED
          DECLINED = :DECLINED
        end

        class Type < Lithic::Enum
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

      class Result < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        APPROVED = :APPROVED
        DECLINED = :DECLINED
      end

      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        PENDING = :PENDING
        SETTLED = :SETTLED
        DECLINED = :DECLINED
        REVERSED = :REVERSED
        CANCELED = :CANCELED
      end
    end
  end
end
