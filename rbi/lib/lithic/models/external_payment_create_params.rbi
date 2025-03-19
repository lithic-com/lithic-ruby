# typed: strong

module Lithic
  module Models
    class ExternalPaymentCreateParams < Lithic::BaseModel
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

      sig { returns(Date) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      sig { returns(String) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      sig { returns(Symbol) }
      def payment_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def payment_type=(_)
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

      sig { returns(T.nilable(Symbol)) }
      def progress_to
      end

      sig { params(_: Symbol).returns(Symbol) }
      def progress_to=(_)
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
          effective_date: Date,
          financial_account_token: String,
          payment_type: Symbol,
          token: String,
          memo: String,
          progress_to: Symbol,
          user_defined_id: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        category:,
        effective_date:,
        financial_account_token:,
        payment_type:,
        token: nil,
        memo: nil,
        progress_to: nil,
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
              effective_date: Date,
              financial_account_token: String,
              payment_type: Symbol,
              token: String,
              memo: String,
              progress_to: Symbol,
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

        EXTERNAL_WIRE = :EXTERNAL_WIRE
        EXTERNAL_ACH = :EXTERNAL_ACH
        EXTERNAL_CHECK = :EXTERNAL_CHECK
        EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER
      end

      class PaymentType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DEPOSIT = :DEPOSIT
        WITHDRAWAL = :WITHDRAWAL
      end

      class ProgressTo < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        SETTLED = :SETTLED
        RELEASED = :RELEASED
      end
    end
  end
end
