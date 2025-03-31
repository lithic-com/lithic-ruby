# frozen_string_literal: true

module Lithic
  module Models
    class PaymentSimulateActionParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute event_type
      #   Event Type
      #
      #   @return [Symbol, Lithic::Models::PaymentSimulateActionParams::EventType]
      required :event_type, enum: -> { Lithic::Models::PaymentSimulateActionParams::EventType }

      # @!attribute [r] decline_reason
      #   Decline reason
      #
      #   @return [Symbol, Lithic::Models::PaymentSimulateActionParams::DeclineReason, nil]
      optional :decline_reason, enum: -> { Lithic::Models::PaymentSimulateActionParams::DeclineReason }

      # @!parse
      #   # @return [Symbol, Lithic::Models::PaymentSimulateActionParams::DeclineReason]
      #   attr_writer :decline_reason

      # @!attribute [r] return_reason_code
      #   Return Reason Code
      #
      #   @return [String, nil]
      optional :return_reason_code, String

      # @!parse
      #   # @return [String]
      #   attr_writer :return_reason_code

      # @!parse
      #   # @param event_type [Symbol, Lithic::Models::PaymentSimulateActionParams::EventType]
      #   # @param decline_reason [Symbol, Lithic::Models::PaymentSimulateActionParams::DeclineReason]
      #   # @param return_reason_code [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(event_type:, decline_reason: nil, return_reason_code: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Event Type
      module EventType
        extend Lithic::Enum

        ACH_ORIGINATION_REVIEWED = :ACH_ORIGINATION_REVIEWED
        ACH_ORIGINATION_RELEASED = :ACH_ORIGINATION_RELEASED
        ACH_ORIGINATION_PROCESSED = :ACH_ORIGINATION_PROCESSED
        ACH_ORIGINATION_SETTLED = :ACH_ORIGINATION_SETTLED
        ACH_RECEIPT_SETTLED = :ACH_RECEIPT_SETTLED
        ACH_RETURN_INITIATED = :ACH_RETURN_INITIATED
        ACH_RETURN_PROCESSED = :ACH_RETURN_PROCESSED
        ACH_RETURN_SETTLED = :ACH_RETURN_SETTLED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # Decline reason
      module DeclineReason
        extend Lithic::Enum

        PROGRAM_TRANSACTION_LIMIT_EXCEEDED = :PROGRAM_TRANSACTION_LIMIT_EXCEEDED
        PROGRAM_DAILY_LIMIT_EXCEEDED = :PROGRAM_DAILY_LIMIT_EXCEEDED
        PROGRAM_MONTHLY_LIMIT_EXCEEDED = :PROGRAM_MONTHLY_LIMIT_EXCEEDED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
