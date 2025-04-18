# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#update_digital_card_art
    class TokenizationUpdateDigitalCardArtParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute digital_card_art_token
      #   Specifies the digital card art to be displayed in the user’s digital wallet for
      #   a tokenization. This artwork must be approved by the network and configured by
      #   Lithic to use. See
      #   [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      #
      #   @return [String, nil]
      optional :digital_card_art_token, String

      # @!method initialize(digital_card_art_token: nil, request_options: {})
      #   @param digital_card_art_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
