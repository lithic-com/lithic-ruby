# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::DigitalCardArt#retrieve
    class DigitalCardArtRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute digital_card_art_token
      #
      #   @return [String]
      required :digital_card_art_token, String

      # @!method initialize(digital_card_art_token:, request_options: {})
      #   @param digital_card_art_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
