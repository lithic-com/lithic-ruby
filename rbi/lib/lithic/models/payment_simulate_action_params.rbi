# typed: strong

module Lithic
  module Models
    class PaymentSimulateActionParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Event Type
      sig { returns(Symbol) }
      def event_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def event_type=(_)
      end

      # Decline reason
      sig { returns(T.nilable(Symbol)) }
      def decline_reason
      end

      sig { params(_: Symbol).returns(Symbol) }
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
          event_type: Symbol,
          decline_reason: Symbol,
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
              event_type: Symbol,
              decline_reason: Symbol,
              return_reason_code: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Event Type
      class EventType < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACH_ORIGINATION_REVIEWED = :ACH_ORIGINATION_REVIEWED
        ACH_ORIGINATION_RELEASED = :ACH_ORIGINATION_RELEASED
        ACH_ORIGINATION_PROCESSED = :ACH_ORIGINATION_PROCESSED
        ACH_ORIGINATION_SETTLED = :ACH_ORIGINATION_SETTLED
        ACH_RECEIPT_SETTLED = :ACH_RECEIPT_SETTLED
        ACH_RETURN_INITIATED = :ACH_RETURN_INITIATED
        ACH_RETURN_PROCESSED = :ACH_RETURN_PROCESSED
        ACH_RETURN_SETTLED = :ACH_RETURN_SETTLED
      end

      # Decline reason
      class DeclineReason < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        PROGRAM_TRANSACTION_LIMIT_EXCEEDED = :PROGRAM_TRANSACTION_LIMIT_EXCEEDED
        PROGRAM_DAILY_LIMIT_EXCEEDED = :PROGRAM_DAILY_LIMIT_EXCEEDED
        PROGRAM_MONTHLY_LIMIT_EXCEEDED = :PROGRAM_MONTHLY_LIMIT_EXCEEDED
      end
    end
  end
end
