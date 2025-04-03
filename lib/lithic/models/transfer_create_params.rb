# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transfers#create
    class TransferCreateParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute amount
      #   Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
      #     This should always be a positive value.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute from
      #   Globally unique identifier for the financial account or card that will send the
      #     funds. Accepted type dependent on the program's use case.
      #
      #   @return [String]
      required :from, String

      # @!attribute to
      #   Globally unique identifier for the financial account or card that will receive
      #     the funds. Accepted type dependent on the program's use case.
      #
      #   @return [String]
      required :to, String

      # @!attribute [r] token
      #   Customer-provided token that will serve as an idempotency token. This token will
      #     become the transaction token.
      #
      #   @return [String, nil]
      optional :token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :token

      # @!attribute [r] memo
      #   Optional descriptor for the transfer.
      #
      #   @return [String, nil]
      optional :memo, String

      # @!parse
      #   # @return [String]
      #   attr_writer :memo

      # @!parse
      #   # @param amount [Integer]
      #   # @param from [String]
      #   # @param to [String]
      #   # @param token [String]
      #   # @param memo [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(amount:, from:, to:, token: nil, memo: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
