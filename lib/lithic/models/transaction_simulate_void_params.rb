# frozen_string_literal: true

module Lithic
  module Models
    class TransactionSimulateVoidParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute token
      #   The transaction token returned from the /v1/simulate/authorize response.
      #
      #   @return [String]
      required :token, String

      # @!attribute [r] amount
      #   Amount (in cents) to void. Typically this will match the amount in the original
      #     authorization, but can be less.
      #
      #   @return [Integer, nil]
      optional :amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :amount

      # @!attribute [r] type
      #   Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`.
      #
      #     - `AUTHORIZATION_EXPIRY` indicates authorization has expired and been reversed
      #       by Lithic.
      #     - `AUTHORIZATION_REVERSAL` indicates authorization was reversed by the merchant.
      #
      #   @return [Symbol, Lithic::Models::TransactionSimulateVoidParams::Type, nil]
      optional :type, enum: -> { Lithic::Models::TransactionSimulateVoidParams::Type }

      # @!parse
      #   # @return [Symbol, Lithic::Models::TransactionSimulateVoidParams::Type]
      #   attr_writer :type

      # @!parse
      #   # @param token [String]
      #   # @param amount [Integer]
      #   # @param type [Symbol, Lithic::Models::TransactionSimulateVoidParams::Type]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(token:, amount: nil, type: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`.
      #
      #   - `AUTHORIZATION_EXPIRY` indicates authorization has expired and been reversed
      #     by Lithic.
      #   - `AUTHORIZATION_REVERSAL` indicates authorization was reversed by the merchant.
      module Type
        extend Lithic::Enum

        AUTHORIZATION_EXPIRY = :AUTHORIZATION_EXPIRY
        AUTHORIZATION_REVERSAL = :AUTHORIZATION_REVERSAL

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
