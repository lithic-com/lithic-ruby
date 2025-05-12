# typed: strong

module Lithic
  module Models
    class TokenizationUpdateDigitalCardArtParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::TokenizationUpdateDigitalCardArtParams,
            Lithic::Internal::AnyHash
          )
        end

      # Specifies the digital card art to be displayed in the user’s digital wallet for
      # a tokenization. This artwork must be approved by the network and configured by
      # Lithic to use. See
      # [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
      sig { returns(T.nilable(String)) }
      attr_reader :digital_card_art_token

      sig { params(digital_card_art_token: String).void }
      attr_writer :digital_card_art_token

      sig do
        params(
          digital_card_art_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies the digital card art to be displayed in the user’s digital wallet for
        # a tokenization. This artwork must be approved by the network and configured by
        # Lithic to use. See
        # [Flexible Card Art Guide](https://docs.lithic.com/docs/about-digital-wallets#flexible-card-art).
        digital_card_art_token: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            digital_card_art_token: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
