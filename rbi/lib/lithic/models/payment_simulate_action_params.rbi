# typed: strong

module Lithic
  module Models
    class PaymentSimulateActionParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Event Type
      sig { returns(Lithic::Models::PaymentSimulateActionParams::EventType::OrSymbol) }
      def event_type
      end

      sig do
        params(_: Lithic::Models::PaymentSimulateActionParams::EventType::OrSymbol)
          .returns(Lithic::Models::PaymentSimulateActionParams::EventType::OrSymbol)
      end
      def event_type=(_)
      end

      # Decline reason
      sig { returns(T.nilable(Lithic::Models::PaymentSimulateActionParams::DeclineReason::OrSymbol)) }
      def decline_reason
      end

      sig do
        params(_: Lithic::Models::PaymentSimulateActionParams::DeclineReason::OrSymbol)
          .returns(Lithic::Models::PaymentSimulateActionParams::DeclineReason::OrSymbol)
      end
      def decline_reason=(_)
      end

      # Return Reason Code
      sig { returns(T.nilable(String)) }
      def return_reason_code
      end

      sig { params(_: String).returns(String) }
      def return_reason_code=(_)
      end

      sig do
        params(
          event_type: Lithic::Models::PaymentSimulateActionParams::EventType::OrSymbol,
          decline_reason: Lithic::Models::PaymentSimulateActionParams::DeclineReason::OrSymbol,
          return_reason_code: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
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

        class << self
          sig { override.returns(T::Array[Lithic::Models::PaymentSimulateActionParams::EventType::TaggedSymbol]) }
          def values
          end
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

        class << self
          sig { override.returns(T::Array[Lithic::Models::PaymentSimulateActionParams::DeclineReason::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
