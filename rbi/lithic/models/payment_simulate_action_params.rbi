# typed: strong

module Lithic
  module Models
    class PaymentSimulateActionParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::PaymentSimulateActionParams, Lithic::Internal::AnyHash)
        end

      # Event Type
      sig { returns(Lithic::PaymentSimulateActionParams::EventType::OrSymbol) }
      attr_accessor :event_type

      # Date of Death for ACH Return
      sig { returns(T.nilable(Date)) }
      attr_reader :date_of_death

      sig { params(date_of_death: Date).void }
      attr_writer :date_of_death

      # Decline reason
      sig do
        returns(
          T.nilable(
            Lithic::PaymentSimulateActionParams::DeclineReason::OrSymbol
          )
        )
      end
      attr_reader :decline_reason

      sig do
        params(
          decline_reason:
            Lithic::PaymentSimulateActionParams::DeclineReason::OrSymbol
        ).void
      end
      attr_writer :decline_reason

      # Return Addenda
      sig { returns(T.nilable(String)) }
      attr_reader :return_addenda

      sig { params(return_addenda: String).void }
      attr_writer :return_addenda

      # Return Reason Code
      sig { returns(T.nilable(String)) }
      attr_reader :return_reason_code

      sig { params(return_reason_code: String).void }
      attr_writer :return_reason_code

      sig do
        params(
          event_type: Lithic::PaymentSimulateActionParams::EventType::OrSymbol,
          date_of_death: Date,
          decline_reason:
            Lithic::PaymentSimulateActionParams::DeclineReason::OrSymbol,
          return_addenda: String,
          return_reason_code: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Event Type
        event_type:,
        # Date of Death for ACH Return
        date_of_death: nil,
        # Decline reason
        decline_reason: nil,
        # Return Addenda
        return_addenda: nil,
        # Return Reason Code
        return_reason_code: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            event_type:
              Lithic::PaymentSimulateActionParams::EventType::OrSymbol,
            date_of_death: Date,
            decline_reason:
              Lithic::PaymentSimulateActionParams::DeclineReason::OrSymbol,
            return_addenda: String,
            return_reason_code: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Event Type
      module EventType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::PaymentSimulateActionParams::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH_ORIGINATION_REVIEWED =
          T.let(
            :ACH_ORIGINATION_REVIEWED,
            Lithic::PaymentSimulateActionParams::EventType::TaggedSymbol
          )
        ACH_ORIGINATION_RELEASED =
          T.let(
            :ACH_ORIGINATION_RELEASED,
            Lithic::PaymentSimulateActionParams::EventType::TaggedSymbol
          )
        ACH_ORIGINATION_PROCESSED =
          T.let(
            :ACH_ORIGINATION_PROCESSED,
            Lithic::PaymentSimulateActionParams::EventType::TaggedSymbol
          )
        ACH_ORIGINATION_SETTLED =
          T.let(
            :ACH_ORIGINATION_SETTLED,
            Lithic::PaymentSimulateActionParams::EventType::TaggedSymbol
          )
        ACH_RECEIPT_SETTLED =
          T.let(
            :ACH_RECEIPT_SETTLED,
            Lithic::PaymentSimulateActionParams::EventType::TaggedSymbol
          )
        ACH_RECEIPT_RELEASED =
          T.let(
            :ACH_RECEIPT_RELEASED,
            Lithic::PaymentSimulateActionParams::EventType::TaggedSymbol
          )
        ACH_RETURN_INITIATED =
          T.let(
            :ACH_RETURN_INITIATED,
            Lithic::PaymentSimulateActionParams::EventType::TaggedSymbol
          )
        ACH_RETURN_PROCESSED =
          T.let(
            :ACH_RETURN_PROCESSED,
            Lithic::PaymentSimulateActionParams::EventType::TaggedSymbol
          )
        ACH_RETURN_SETTLED =
          T.let(
            :ACH_RETURN_SETTLED,
            Lithic::PaymentSimulateActionParams::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::PaymentSimulateActionParams::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Decline reason
      module DeclineReason
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::PaymentSimulateActionParams::DeclineReason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROGRAM_TRANSACTION_LIMIT_EXCEEDED =
          T.let(
            :PROGRAM_TRANSACTION_LIMIT_EXCEEDED,
            Lithic::PaymentSimulateActionParams::DeclineReason::TaggedSymbol
          )
        PROGRAM_DAILY_LIMIT_EXCEEDED =
          T.let(
            :PROGRAM_DAILY_LIMIT_EXCEEDED,
            Lithic::PaymentSimulateActionParams::DeclineReason::TaggedSymbol
          )
        PROGRAM_MONTHLY_LIMIT_EXCEEDED =
          T.let(
            :PROGRAM_MONTHLY_LIMIT_EXCEEDED,
            Lithic::PaymentSimulateActionParams::DeclineReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::PaymentSimulateActionParams::DeclineReason::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
