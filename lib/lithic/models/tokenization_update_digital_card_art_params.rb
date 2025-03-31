# frozen_string_literal: true

module Lithic
  module Models
    class TokenizationUpdateDigitalCardArtParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] digital_card_art_token
      #   Specifies the digital card art to be displayed in the user’s digital wallet for
      #     a tokenization. This artwork must be approved by the network and configured by
      #     Lithic to use. See
      #     [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      #
      #   @return [String, nil]
      optional :digital_card_art_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :digital_card_art_token

      # @!parse
      #   # @param digital_card_art_token [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(digital_card_art_token: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
