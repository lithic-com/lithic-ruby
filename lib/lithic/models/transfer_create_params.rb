# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transfers#create
    class TransferCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute amount
      #   Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
      #   This should always be a positive value.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute from
      #   Globally unique identifier for the financial account or card that will send the
      #   funds. Accepted type dependent on the program's use case.
      #
      #   @return [String]
      required :from, String

      # @!attribute to
      #   Globally unique identifier for the financial account or card that will receive
      #   the funds. Accepted type dependent on the program's use case.
      #
      #   @return [String]
      required :to, String

      # @!attribute token
      #   Customer-provided token that will serve as an idempotency token. This token will
      #   become the transaction token.
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute memo
      #   Optional descriptor for the transfer.
      #
      #   @return [String, nil]
      optional :memo, String

      # @!method initialize(amount:, from:, to:, token: nil, memo: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TransferCreateParams} for more details.
      #
      #   @param amount [Integer] Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
      #
      #   @param from [String] Globally unique identifier for the financial account or card that will send the
      #
      #   @param to [String] Globally unique identifier for the financial account or card that will receive t
      #
      #   @param token [String] Customer-provided token that will serve as an idempotency token. This token will
      #
      #   @param memo [String] Optional descriptor for the transfer.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
