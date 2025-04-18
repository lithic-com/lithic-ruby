# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#simulate_receipt
    class PaymentSimulateReceiptParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute token
      #   Payment token
      #
      #   @return [String]
      required :token, String

      # @!attribute amount
      #   Amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute financial_account_token
      #   Financial Account Token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute receipt_type
      #   Receipt Type
      #
      #   @return [Symbol, Lithic::Models::PaymentSimulateReceiptParams::ReceiptType]
      required :receipt_type, enum: -> { Lithic::Models::PaymentSimulateReceiptParams::ReceiptType }

      # @!attribute memo
      #   Memo
      #
      #   @return [String, nil]
      optional :memo, String

      # @!method initialize(token:, amount:, financial_account_token:, receipt_type:, memo: nil, request_options: {})
      #   @param token [String]
      #   @param amount [Integer]
      #   @param financial_account_token [String]
      #   @param receipt_type [Symbol, Lithic::Models::PaymentSimulateReceiptParams::ReceiptType]
      #   @param memo [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Receipt Type
      module ReceiptType
        extend Lithic::Internal::Type::Enum

        RECEIPT_CREDIT = :RECEIPT_CREDIT
        RECEIPT_DEBIT = :RECEIPT_DEBIT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
