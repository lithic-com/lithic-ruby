# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#simulate_void
    class TransactionSimulateVoidParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute token
      #   The transaction token returned from the /v1/simulate/authorize response.
      #
      #   @return [String]
      required :token, String

      # @!attribute amount
      #   Amount (in cents) to void. Typically this will match the amount in the original
      #   authorization, but can be less.
      #
      #   @return [Integer, nil]
      optional :amount, Integer

      # @!attribute type
      #   Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`.
      #
      #   - `AUTHORIZATION_EXPIRY` indicates authorization has expired and been reversed
      #     by Lithic.
      #   - `AUTHORIZATION_REVERSAL` indicates authorization was reversed by the merchant.
      #
      #   @return [Symbol, Lithic::Models::TransactionSimulateVoidParams::Type, nil]
      optional :type, enum: -> { Lithic::Models::TransactionSimulateVoidParams::Type }

      # @!method initialize(token:, amount: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TransactionSimulateVoidParams} for more details.
      #
      #   @param token [String] The transaction token returned from the /v1/simulate/authorize response.
      #
      #   @param amount [Integer] Amount (in cents) to void. Typically this will match the amount in the original
      #   ...
      #
      #   @param type [Symbol, Lithic::Models::TransactionSimulateVoidParams::Type] Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`. ...
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`.
      #
      # - `AUTHORIZATION_EXPIRY` indicates authorization has expired and been reversed
      #   by Lithic.
      # - `AUTHORIZATION_REVERSAL` indicates authorization was reversed by the merchant.
      module Type
        extend Lithic::Internal::Type::Enum

        AUTHORIZATION_EXPIRY = :AUTHORIZATION_EXPIRY
        AUTHORIZATION_REVERSAL = :AUTHORIZATION_REVERSAL

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
