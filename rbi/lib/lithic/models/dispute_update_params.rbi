# typed: strong

module Lithic
  module Models
    class DisputeUpdateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Amount to dispute
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # Date the customer filed the dispute
      sig { returns(T.nilable(Time)) }
      def customer_filed_date
      end

      sig { params(_: Time).returns(Time) }
      def customer_filed_date=(_)
      end

      # Customer description of dispute
      sig { returns(T.nilable(String)) }
      def customer_note
      end

      sig { params(_: String).returns(String) }
      def customer_note=(_)
      end

      # Reason for dispute
      sig { returns(T.nilable(Symbol)) }
      def reason
      end

      sig { params(_: Symbol).returns(Symbol) }
      def reason=(_)
      end

      sig do
        params(
          amount: Integer,
          customer_filed_date: Time,
          customer_note: String,
          reason: Symbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(amount: nil, customer_filed_date: nil, customer_note: nil, reason: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              customer_filed_date: Time,
              customer_note: String,
              reason: Symbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Reason for dispute
      class Reason < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ATM_CASH_MISDISPENSE = :ATM_CASH_MISDISPENSE
        CANCELLED = :CANCELLED
        DUPLICATED = :DUPLICATED
        FRAUD_CARD_NOT_PRESENT = :FRAUD_CARD_NOT_PRESENT
        FRAUD_CARD_PRESENT = :FRAUD_CARD_PRESENT
        FRAUD_OTHER = :FRAUD_OTHER
        GOODS_SERVICES_NOT_AS_DESCRIBED = :GOODS_SERVICES_NOT_AS_DESCRIBED
        GOODS_SERVICES_NOT_RECEIVED = :GOODS_SERVICES_NOT_RECEIVED
        INCORRECT_AMOUNT = :INCORRECT_AMOUNT
        MISSING_AUTH = :MISSING_AUTH
        OTHER = :OTHER
        PROCESSING_ERROR = :PROCESSING_ERROR
        RECURRING_TRANSACTION_NOT_CANCELLED = :RECURRING_TRANSACTION_NOT_CANCELLED
        REFUND_NOT_PROCESSED = :REFUND_NOT_PROCESSED
      end
    end
  end
end
