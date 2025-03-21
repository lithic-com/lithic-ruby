# typed: strong

module Lithic
  module Models
    class PaymentSimulateActionParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Event Type
      sig { returns(Lithic::Models::PaymentSimulateActionParams::EventType::OrSymbol) }
      attr_accessor :event_type

      # Decline reason
      sig { returns(T.nilable(Lithic::Models::PaymentSimulateActionParams::DeclineReason::OrSymbol)) }
      attr_reader :decline_reason

      sig { params(decline_reason: Lithic::Models::PaymentSimulateActionParams::DeclineReason::OrSymbol).void }
      attr_writer :decline_reason

      # Return Reason Code
      sig { returns(T.nilable(String)) }
      attr_reader :return_reason_code

      sig { params(return_reason_code: String).void }
      attr_writer :return_reason_code

      sig do
        params(
          event_type: Lithic::Models::PaymentSimulateActionParams::EventType::OrSymbol,
          decline_reason: Lithic::Models::PaymentSimulateActionParams::DeclineReason::OrSymbol,
          return_reason_code: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(event_type:, decline_reason: nil, return_reason_code: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              event_type: Lithic::Models::PaymentSimulateActionParams::EventType::OrSymbol,
              decline_reason: Lithic::Models::PaymentSimulateActionParams::DeclineReason::OrSymbol,
              return_reason_code: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Event Type
      module EventType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentSimulateActionParams::EventType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::PaymentSimulateActionParams::EventType::TaggedSymbol) }

        ACH_ORIGINATION_REVIEWED =
          T.let(:ACH_ORIGINATION_REVIEWED, Lithic::Models::PaymentSimulateActionParams::EventType::TaggedSymbol)
        ACH_ORIGINATION_RELEASED =
          T.let(:ACH_ORIGINATION_RELEASED, Lithic::Models::PaymentSimulateActionParams::EventType::TaggedSymbol)
        ACH_ORIGINATION_PROCESSED =
          T.let(:ACH_ORIGINATION_PROCESSED, Lithic::Models::PaymentSimulateActionParams::EventType::TaggedSymbol)
        ACH_ORIGINATION_SETTLED =
          T.let(:ACH_ORIGINATION_SETTLED, Lithic::Models::PaymentSimulateActionParams::EventType::TaggedSymbol)
        ACH_RECEIPT_SETTLED =
          T.let(:ACH_RECEIPT_SETTLED, Lithic::Models::PaymentSimulateActionParams::EventType::TaggedSymbol)
        ACH_RETURN_INITIATED =
          T.let(:ACH_RETURN_INITIATED, Lithic::Models::PaymentSimulateActionParams::EventType::TaggedSymbol)
        ACH_RETURN_PROCESSED =
          T.let(:ACH_RETURN_PROCESSED, Lithic::Models::PaymentSimulateActionParams::EventType::TaggedSymbol)
        ACH_RETURN_SETTLED =
          T.let(:ACH_RETURN_SETTLED, Lithic::Models::PaymentSimulateActionParams::EventType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::PaymentSimulateActionParams::EventType::TaggedSymbol]) }
        def self.values
        end
      end

      # Decline reason
      module DeclineReason
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::PaymentSimulateActionParams::DeclineReason) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::PaymentSimulateActionParams::DeclineReason::TaggedSymbol) }

        PROGRAM_TRANSACTION_LIMIT_EXCEEDED =
          T.let(
            :PROGRAM_TRANSACTION_LIMIT_EXCEEDED,
            Lithic::Models::PaymentSimulateActionParams::DeclineReason::TaggedSymbol
          )
        PROGRAM_DAILY_LIMIT_EXCEEDED =
          T.let(
            :PROGRAM_DAILY_LIMIT_EXCEEDED,
            Lithic::Models::PaymentSimulateActionParams::DeclineReason::TaggedSymbol
          )
        PROGRAM_MONTHLY_LIMIT_EXCEEDED =
          T.let(
            :PROGRAM_MONTHLY_LIMIT_EXCEEDED,
            Lithic::Models::PaymentSimulateActionParams::DeclineReason::TaggedSymbol
          )

        sig { override.returns(T::Array[Lithic::Models::PaymentSimulateActionParams::DeclineReason::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
