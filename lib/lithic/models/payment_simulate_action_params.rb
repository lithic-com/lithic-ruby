# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#simulate_action
    class PaymentSimulateActionParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute event_type
      #   Event Type
      #
      #   @return [Symbol, Lithic::Models::PaymentSimulateActionParams::EventType]
      required :event_type, enum: -> { Lithic::PaymentSimulateActionParams::EventType }

      # @!attribute date_of_death
      #   Date of Death for ACH Return
      #
      #   @return [Date, nil]
      optional :date_of_death, Date

      # @!attribute decline_reason
      #   Decline reason
      #
      #   @return [Symbol, Lithic::Models::PaymentSimulateActionParams::DeclineReason, nil]
      optional :decline_reason, enum: -> { Lithic::PaymentSimulateActionParams::DeclineReason }

      # @!attribute return_addenda
      #   Return Addenda
      #
      #   @return [String, nil]
      optional :return_addenda, String

      # @!attribute return_reason_code
      #   Return Reason Code
      #
      #   @return [String, nil]
      optional :return_reason_code, String

      # @!method initialize(event_type:, date_of_death: nil, decline_reason: nil, return_addenda: nil, return_reason_code: nil, request_options: {})
      #   @param event_type [Symbol, Lithic::Models::PaymentSimulateActionParams::EventType] Event Type
      #
      #   @param date_of_death [Date] Date of Death for ACH Return
      #
      #   @param decline_reason [Symbol, Lithic::Models::PaymentSimulateActionParams::DeclineReason] Decline reason
      #
      #   @param return_addenda [String] Return Addenda
      #
      #   @param return_reason_code [String] Return Reason Code
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Event Type
      module EventType
        extend Lithic::Internal::Type::Enum

        ACH_ORIGINATION_REVIEWED = :ACH_ORIGINATION_REVIEWED
        ACH_ORIGINATION_RELEASED = :ACH_ORIGINATION_RELEASED
        ACH_ORIGINATION_PROCESSED = :ACH_ORIGINATION_PROCESSED
        ACH_ORIGINATION_SETTLED = :ACH_ORIGINATION_SETTLED
        ACH_RECEIPT_SETTLED = :ACH_RECEIPT_SETTLED
        ACH_RECEIPT_RELEASED = :ACH_RECEIPT_RELEASED
        ACH_RETURN_INITIATED = :ACH_RETURN_INITIATED
        ACH_RETURN_PROCESSED = :ACH_RETURN_PROCESSED
        ACH_RETURN_SETTLED = :ACH_RETURN_SETTLED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Decline reason
      module DeclineReason
        extend Lithic::Internal::Type::Enum

        PROGRAM_TRANSACTION_LIMIT_EXCEEDED = :PROGRAM_TRANSACTION_LIMIT_EXCEEDED
        PROGRAM_DAILY_LIMIT_EXCEEDED = :PROGRAM_DAILY_LIMIT_EXCEEDED
        PROGRAM_MONTHLY_LIMIT_EXCEEDED = :PROGRAM_MONTHLY_LIMIT_EXCEEDED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
