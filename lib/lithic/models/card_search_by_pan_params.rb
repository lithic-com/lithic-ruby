# frozen_string_literal: true

module Lithic
  module Models
    class CardSearchByPanParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

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

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
