# typed: strong

module Lithic
  module Models
    class DisputeUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

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
      sig { returns(T.nilable(Lithic::DisputeUpdateParams::Reason::OrSymbol)) }
      attr_reader :reason

      sig { params(reason: Lithic::DisputeUpdateParams::Reason::OrSymbol).void }
      attr_writer :reason

      sig do
        params(
          amount: Integer,
          customer_filed_date: Time,
          customer_note: String,
          reason: Lithic::DisputeUpdateParams::Reason::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount to dispute
        amount: nil,
        # Date the customer filed the dispute
        customer_filed_date: nil,
        # Customer description of dispute
        customer_note: nil,
        # Reason for dispute
        reason: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            customer_filed_date: Time,
            customer_note: String,
            reason: Lithic::DisputeUpdateParams::Reason::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Reason for dispute
      module Reason
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::DisputeUpdateParams::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ATM_CASH_MISDISPENSE =
          T.let(
            :ATM_CASH_MISDISPENSE,
            Lithic::DisputeUpdateParams::Reason::TaggedSymbol
          )
        CANCELLED =
          T.let(:CANCELLED, Lithic::DisputeUpdateParams::Reason::TaggedSymbol)
        DUPLICATED =
          T.let(:DUPLICATED, Lithic::DisputeUpdateParams::Reason::TaggedSymbol)
        FRAUD_CARD_NOT_PRESENT =
          T.let(
            :FRAUD_CARD_NOT_PRESENT,
            Lithic::DisputeUpdateParams::Reason::TaggedSymbol
          )
        FRAUD_CARD_PRESENT =
          T.let(
            :FRAUD_CARD_PRESENT,
            Lithic::DisputeUpdateParams::Reason::TaggedSymbol
          )
        FRAUD_OTHER =
          T.let(:FRAUD_OTHER, Lithic::DisputeUpdateParams::Reason::TaggedSymbol)
        GOODS_SERVICES_NOT_AS_DESCRIBED =
          T.let(
            :GOODS_SERVICES_NOT_AS_DESCRIBED,
            Lithic::DisputeUpdateParams::Reason::TaggedSymbol
          )
        GOODS_SERVICES_NOT_RECEIVED =
          T.let(
            :GOODS_SERVICES_NOT_RECEIVED,
            Lithic::DisputeUpdateParams::Reason::TaggedSymbol
          )
        INCORRECT_AMOUNT =
          T.let(
            :INCORRECT_AMOUNT,
            Lithic::DisputeUpdateParams::Reason::TaggedSymbol
          )
        MISSING_AUTH =
          T.let(
            :MISSING_AUTH,
            Lithic::DisputeUpdateParams::Reason::TaggedSymbol
          )
        OTHER = T.let(:OTHER, Lithic::DisputeUpdateParams::Reason::TaggedSymbol)
        PROCESSING_ERROR =
          T.let(
            :PROCESSING_ERROR,
            Lithic::DisputeUpdateParams::Reason::TaggedSymbol
          )
        RECURRING_TRANSACTION_NOT_CANCELLED =
          T.let(
            :RECURRING_TRANSACTION_NOT_CANCELLED,
            Lithic::DisputeUpdateParams::Reason::TaggedSymbol
          )
        REFUND_NOT_PROCESSED =
          T.let(
            :REFUND_NOT_PROCESSED,
            Lithic::DisputeUpdateParams::Reason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::DisputeUpdateParams::Reason::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
