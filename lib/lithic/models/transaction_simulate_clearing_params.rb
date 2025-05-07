# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#simulate_clearing
    class TransactionSimulateClearingParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute token
      #   The transaction token returned from the /v1/simulate/authorize response.
      #
      #   @return [String]
      required :token, String

      # @!attribute amount
      #   Amount (in cents) to clear. Typically this will match the amount in the original
      #   authorization, but can be higher or lower. The sign of this amount will
      #   automatically match the sign of the original authorization's amount. For
      #   example, entering 100 in this field will result in a -100 amount in the
      #   transaction, if the original authorization is a credit authorization.
      #
      #   If `amount` is not set, the full amount of the transaction will be cleared.
      #   Transactions that have already cleared, either partially or fully, cannot be
      #   cleared again using this endpoint.
      #
      #   @return [Integer, nil]
      optional :amount, Integer

      # @!method initialize(token:, amount: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TransactionSimulateClearingParams} for more details.
      #
      #   @param token [String] The transaction token returned from the /v1/simulate/authorize response.
      #
      #   @param amount [Integer] Amount (in cents) to clear. Typically this will match the amount in the original
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
