# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BookTransfers#retry_
    class BookTransferRetryParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute retry_token
      #   Globally unique identifier for the retry.
      #
      #   @return [String]
      required :retry_token, String

      # @!method initialize(retry_token:, request_options: {})
      #   @param retry_token [String] Globally unique identifier for the retry.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
