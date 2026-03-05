# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BookTransfers#retrieve
    class BookTransferRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute book_transfer_token
      #
      #   @return [String]
      required :book_transfer_token, String

      # @!method initialize(book_transfer_token:, request_options: {})
      #   @param book_transfer_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
