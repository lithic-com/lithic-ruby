# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#search_by_pan
    class CardSearchByPanParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute pan
      #   The PAN for the card being retrieved.
      #
      #   @return [String]
      required :pan, String

      # @!parse
      #   # @param pan [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(pan:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
