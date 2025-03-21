# typed: strong

module Lithic
  module Models
    class TokenizationUpdateDigitalCardArtParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Specifies the digital card art to be displayed in the user’s digital wallet for
      #   a tokenization. This artwork must be approved by the network and configured by
      #   Lithic to use. See
      #   [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      sig { returns(T.nilable(String)) }
      def digital_card_art_token
      end

      sig { params(_: String).returns(String) }
      def digital_card_art_token=(_)
      end

      sig do
        params(
          digital_card_art_token: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(digital_card_art_token: nil, request_options: {})
      end

      sig { override.returns({digital_card_art_token: String, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
