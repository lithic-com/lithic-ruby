# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BookTransfers#reverse
    class BookTransferReverseParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute book_transfer_token
      #
      #   @return [String]
      required :book_transfer_token, String

      # @!attribute memo
      #   Optional descriptor for the reversal.
      #
      #   @return [String, nil]
      optional :memo, String

      # @!method initialize(book_transfer_token:, memo: nil, request_options: {})
      #   @param book_transfer_token [String]
      #
      #   @param memo [String] Optional descriptor for the reversal.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
