# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#search_by_pan
    class CardSearchByPanParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute pan
      #   The PAN for the card being retrieved.
      #
      #   @return [String]
      required :pan, String

      # @!method initialize(pan:, request_options: {})
      #   @param pan [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
