# frozen_string_literal: true

module Lithic
  module Models
    class PaymentSimulateReceiptParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

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

      # @!attribute [r] memo
      #   Memo
      #
      #   @return [String, nil]
      optional :memo, String

      # @!parse
      #   # @return [String]
      #   attr_writer :memo

      # @!parse
      #   # @param token [String]
      #   # @param amount [Integer]
      #   # @param financial_account_token [String]
      #   # @param receipt_type [Symbol, Lithic::Models::PaymentSimulateReceiptParams::ReceiptType]
      #   # @param memo [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(token:, amount:, financial_account_token:, receipt_type:, memo: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Receipt Type
      module ReceiptType
        extend Lithic::Enum

        RECEIPT_CREDIT = :RECEIPT_CREDIT
        RECEIPT_DEBIT = :RECEIPT_DEBIT

        finalize!
      end
    end
  end
end
