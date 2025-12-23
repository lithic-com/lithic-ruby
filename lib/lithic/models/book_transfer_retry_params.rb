# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BookTransfers#retry_
    class BookTransferRetryParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute retry_token
      #   Customer-provided token that will serve as an idempotency token. This token will
      #   become the transaction token.
      #
      #   @return [String]
      required :retry_token, String

      # @!method initialize(retry_token:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::BookTransferRetryParams} for more details.
      #
      #   @param retry_token [String] Customer-provided token that will serve as an idempotency token. This token will
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
