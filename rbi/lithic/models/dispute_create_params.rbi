# typed: strong

module Lithic
  module Models
    class DisputeCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # Amount to dispute
      sig { returns(Integer) }
      attr_accessor :amount

      # Reason for dispute
      sig { returns(Lithic::DisputeCreateParams::Reason::OrSymbol) }
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
          reason: Lithic::DisputeCreateParams::Reason::OrSymbol,
          transaction_token: String,
          customer_filed_date: Time,
          customer_note: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount to dispute
        amount:,
        # Reason for dispute
        reason:,
        # Transaction to dispute
        transaction_token:,
        # Date the customer filed the dispute
        customer_filed_date: nil,
        # Customer description of dispute
        customer_note: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            reason: Lithic::DisputeCreateParams::Reason::OrSymbol,
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
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::DisputeCreateParams::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ATM_CASH_MISDISPENSE =
          T.let(
            :ATM_CASH_MISDISPENSE,
            Lithic::DisputeCreateParams::Reason::TaggedSymbol
          )
        CANCELLED =
          T.let(:CANCELLED, Lithic::DisputeCreateParams::Reason::TaggedSymbol)
        DUPLICATED =
          T.let(:DUPLICATED, Lithic::DisputeCreateParams::Reason::TaggedSymbol)
        FRAUD_CARD_NOT_PRESENT =
          T.let(
            :FRAUD_CARD_NOT_PRESENT,
            Lithic::DisputeCreateParams::Reason::TaggedSymbol
          )
        FRAUD_CARD_PRESENT =
          T.let(
            :FRAUD_CARD_PRESENT,
            Lithic::DisputeCreateParams::Reason::TaggedSymbol
          )
        FRAUD_OTHER =
          T.let(:FRAUD_OTHER, Lithic::DisputeCreateParams::Reason::TaggedSymbol)
        GOODS_SERVICES_NOT_AS_DESCRIBED =
          T.let(
            :GOODS_SERVICES_NOT_AS_DESCRIBED,
            Lithic::DisputeCreateParams::Reason::TaggedSymbol
          )
        GOODS_SERVICES_NOT_RECEIVED =
          T.let(
            :GOODS_SERVICES_NOT_RECEIVED,
            Lithic::DisputeCreateParams::Reason::TaggedSymbol
          )
        INCORRECT_AMOUNT =
          T.let(
            :INCORRECT_AMOUNT,
            Lithic::DisputeCreateParams::Reason::TaggedSymbol
          )
        MISSING_AUTH =
          T.let(
            :MISSING_AUTH,
            Lithic::DisputeCreateParams::Reason::TaggedSymbol
          )
        OTHER = T.let(:OTHER, Lithic::DisputeCreateParams::Reason::TaggedSymbol)
        PROCESSING_ERROR =
          T.let(
            :PROCESSING_ERROR,
            Lithic::DisputeCreateParams::Reason::TaggedSymbol
          )
        RECURRING_TRANSACTION_NOT_CANCELLED =
          T.let(
            :RECURRING_TRANSACTION_NOT_CANCELLED,
            Lithic::DisputeCreateParams::Reason::TaggedSymbol
          )
        REFUND_NOT_PROCESSED =
          T.let(
            :REFUND_NOT_PROCESSED,
            Lithic::DisputeCreateParams::Reason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::DisputeCreateParams::Reason::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
