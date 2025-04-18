# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Disputes#create
    class DisputeCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute amount
      #   Amount to dispute
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute reason
      #   Reason for dispute
      #
      #   @return [Symbol, Lithic::Models::DisputeCreateParams::Reason]
      required :reason, enum: -> { Lithic::Models::DisputeCreateParams::Reason }

      # @!attribute transaction_token
      #   Transaction to dispute
      #
      #   @return [String]
      required :transaction_token, String

      # @!attribute customer_filed_date
      #   Date the customer filed the dispute
      #
      #   @return [Time, nil]
      optional :customer_filed_date, Time

      # @!attribute customer_note
      #   Customer description of dispute
      #
      #   @return [String, nil]
      optional :customer_note, String

      # @!method initialize(amount:, reason:, transaction_token:, customer_filed_date: nil, customer_note: nil, request_options: {})
      #   @param amount [Integer]
      #   @param reason [Symbol, Lithic::Models::DisputeCreateParams::Reason]
      #   @param transaction_token [String]
      #   @param customer_filed_date [Time]
      #   @param customer_note [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Reason for dispute
      module Reason
        extend Lithic::Internal::Type::Enum

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
