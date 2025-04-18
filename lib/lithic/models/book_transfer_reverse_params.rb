# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BookTransfers#reverse
    class BookTransferReverseParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] memo
      #   Optional descriptor for the reversal.
      #
      #   @return [String, nil]
      optional :memo, String

      # @!parse
      #   # @return [String]
      #   attr_writer :memo

      # @!method initialize(memo: nil, request_options: {})
      #   @param memo [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
