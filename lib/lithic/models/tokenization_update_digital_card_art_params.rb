# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#update_digital_card_art
    class TokenizationUpdateDigitalCardArtParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] digital_card_art_token
      #   Specifies the digital card art to be displayed in the user’s digital wallet for
      #   a tokenization. This artwork must be approved by the network and configured by
      #   Lithic to use. See
      #   [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      #
      #   @return [String, nil]
      optional :digital_card_art_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :digital_card_art_token

      # @!method initialize(digital_card_art_token: nil, request_options: {})
      #   @param digital_card_art_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
