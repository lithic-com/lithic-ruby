# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BookTransfers#reverse
    class BookTransferReverseParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute memo
      #   Optional descriptor for the reversal.
      #
      #   @return [String, nil]
      optional :memo, String

      # @!method initialize(memo: nil, request_options: {})
      #   @param memo [String] Optional descriptor for the reversal.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
