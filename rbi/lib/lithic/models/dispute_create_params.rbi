# typed: strong

module Lithic
  module Models
    class DisputeCreateParams < Lithic::BaseModel
      extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # Amount to dispute
      sig { returns(Integer) }
      attr_accessor :amount

      # Reason for dispute
      sig { returns(Lithic::Models::DisputeCreateParams::Reason::OrSymbol) }
      attr_accessor :reason

      # Transaction to dispute
      sig { returns(String) }
      attr_accessor :transaction_token

      # Date the customer filed the dispute
      sig { returns(T.nilable(Time)) }
      attr_reader :customer_filed_date

      sig { params(customer_filed_date: Time).void }
      attr_writer :customer_filed_date

      # Customer description of dispute
      sig { returns(T.nilable(String)) }
      attr_reader :customer_note

      sig { params(customer_note: String).void }
      attr_writer :customer_note

      sig do
        params(
          amount: Integer,
          reason: Lithic::Models::DisputeCreateParams::Reason::OrSymbol,
          transaction_token: String,
          customer_filed_date: Time,
          customer_note: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        reason:,
        transaction_token:,
        customer_filed_date: nil,
        customer_note: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              reason: Lithic::Models::DisputeCreateParams::Reason::OrSymbol,
              transaction_token: String,
              customer_filed_date: Time,
              customer_note: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Reason for dispute
      module Reason
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::DisputeCreateParams::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol) }

        ATM_CASH_MISDISPENSE =
          T.let(:ATM_CASH_MISDISPENSE, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        CANCELLED = T.let(:CANCELLED, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        DUPLICATED = T.let(:DUPLICATED, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        FRAUD_CARD_NOT_PRESENT =
          T.let(:FRAUD_CARD_NOT_PRESENT, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        FRAUD_CARD_PRESENT =
          T.let(:FRAUD_CARD_PRESENT, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        FRAUD_OTHER = T.let(:FRAUD_OTHER, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        GOODS_SERVICES_NOT_AS_DESCRIBED =
          T.let(:GOODS_SERVICES_NOT_AS_DESCRIBED, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        GOODS_SERVICES_NOT_RECEIVED =
          T.let(:GOODS_SERVICES_NOT_RECEIVED, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        INCORRECT_AMOUNT = T.let(:INCORRECT_AMOUNT, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        MISSING_AUTH = T.let(:MISSING_AUTH, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        OTHER = T.let(:OTHER, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        PROCESSING_ERROR = T.let(:PROCESSING_ERROR, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        RECURRING_TRANSACTION_NOT_CANCELLED =
          T.let(:RECURRING_TRANSACTION_NOT_CANCELLED, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)
        REFUND_NOT_PROCESSED =
          T.let(:REFUND_NOT_PROCESSED, Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::DisputeCreateParams::Reason::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
