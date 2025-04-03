# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#simulate_authorization_advice
    class TransactionSimulateAuthorizationAdviceParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute token
      #   The transaction token returned from the /v1/simulate/authorize. response.
      #
      #   @return [String]
      required :token, String

      # @!attribute amount
      #   Amount (in cents) to authorize. This amount will override the transaction's
      #     amount that was originally set by /v1/simulate/authorize.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!parse
      #   # @param token [String]
      #   # @param amount [Integer]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(token:, amount:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
