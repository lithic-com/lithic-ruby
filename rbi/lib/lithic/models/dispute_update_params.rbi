# typed: strong

module Lithic
  module Models
    class DisputeUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Amount to dispute
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { params(amount: Integer).void }
      attr_writer :amount

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

      # Reason for dispute
      sig { returns(T.nilable(Lithic::Models::DisputeUpdateParams::Reason::OrSymbol)) }
      attr_reader :reason

      sig { params(reason: Lithic::Models::DisputeUpdateParams::Reason::OrSymbol).void }
      attr_writer :reason

      sig do
        params(
          amount: Integer,
          customer_filed_date: Time,
          customer_note: String,
          reason: Lithic::Models::DisputeUpdateParams::Reason::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount: nil,
        customer_filed_date: nil,
        customer_note: nil,
        reason: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              customer_filed_date: Time,
              customer_note: String,
              reason: Lithic::Models::DisputeUpdateParams::Reason::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Reason for dispute
      module Reason
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::DisputeUpdateParams::Reason) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol) }

        ATM_CASH_MISDISPENSE =
          T.let(:ATM_CASH_MISDISPENSE, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        CANCELLED = T.let(:CANCELLED, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        DUPLICATED = T.let(:DUPLICATED, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        FRAUD_CARD_NOT_PRESENT =
          T.let(:FRAUD_CARD_NOT_PRESENT, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        FRAUD_CARD_PRESENT =
          T.let(:FRAUD_CARD_PRESENT, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        FRAUD_OTHER = T.let(:FRAUD_OTHER, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        GOODS_SERVICES_NOT_AS_DESCRIBED =
          T.let(:GOODS_SERVICES_NOT_AS_DESCRIBED, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        GOODS_SERVICES_NOT_RECEIVED =
          T.let(:GOODS_SERVICES_NOT_RECEIVED, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        INCORRECT_AMOUNT = T.let(:INCORRECT_AMOUNT, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        MISSING_AUTH = T.let(:MISSING_AUTH, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        OTHER = T.let(:OTHER, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        PROCESSING_ERROR = T.let(:PROCESSING_ERROR, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        RECURRING_TRANSACTION_NOT_CANCELLED =
          T.let(:RECURRING_TRANSACTION_NOT_CANCELLED, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)
        REFUND_NOT_PROCESSED =
          T.let(:REFUND_NOT_PROCESSED, Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::DisputeUpdateParams::Reason::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
