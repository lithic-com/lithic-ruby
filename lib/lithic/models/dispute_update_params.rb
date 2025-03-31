# frozen_string_literal: true

module Lithic
  module Models
    class DisputeUpdateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] amount
      #   Amount to dispute
      #
      #   @return [Integer, nil]
      optional :amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :amount

      # @!attribute [r] customer_filed_date
      #   Date the customer filed the dispute
      #
      #   @return [Time, nil]
      optional :customer_filed_date, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :customer_filed_date

      # @!attribute [r] customer_note
      #   Customer description of dispute
      #
      #   @return [String, nil]
      optional :customer_note, String

      # @!parse
      #   # @return [String]
      #   attr_writer :customer_note

      # @!attribute [r] reason
      #   Reason for dispute
      #
      #   @return [Symbol, Lithic::Models::DisputeUpdateParams::Reason, nil]
      optional :reason, enum: -> { Lithic::Models::DisputeUpdateParams::Reason }

      # @!parse
      #   # @return [Symbol, Lithic::Models::DisputeUpdateParams::Reason]
      #   attr_writer :reason

      # @!parse
      #   # @param amount [Integer]
      #   # @param customer_filed_date [Time]
      #   # @param customer_note [String]
      #   # @param reason [Symbol, Lithic::Models::DisputeUpdateParams::Reason]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(amount: nil, customer_filed_date: nil, customer_note: nil, reason: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Reason for dispute
      module Reason
        extend Lithic::Enum

        ATM_CASH_MISDISPENSE = :ATM_CASH_MISDISPENSE
        CANCELLED = :CANCELLED
        DUPLICATED = :DUPLICATED
        FRAUD_CARD_NOT_PRESENT = :FRAUD_CARD_NOT_PRESENT
        FRAUD_CARD_PRESENT = :FRAUD_CARD_PRESENT
        FRAUD_OTHER = :FRAUD_OTHER
        GOODS_SERVICES_NOT_AS_DESCRIBED = :GOODS_SERVICES_NOT_AS_DESCRIBED
        GOODS_SERVICES_NOT_RECEIVED = :GOODS_SERVICES_NOT_RECEIVED
        INCORRECT_AMOUNT = :INCORRECT_AMOUNT
        MISSING_AUTH = :MISSING_AUTH
        OTHER = :OTHER
        PROCESSING_ERROR = :PROCESSING_ERROR
        RECURRING_TRANSACTION_NOT_CANCELLED = :RECURRING_TRANSACTION_NOT_CANCELLED
        REFUND_NOT_PROCESSED = :REFUND_NOT_PROCESSED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
