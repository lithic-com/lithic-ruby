# typed: strong

module Lithic
  module Models
    class CardProvisionParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      # `activationData` in the response. Apple's public leaf certificate. Base64
      # encoded in PEM format with headers `(-----BEGIN CERTIFICATE-----)` and trailers
      # omitted. Provided by the device's wallet.
      sig { returns(T.nilable(String)) }
      attr_reader :certificate

      sig { params(certificate: String).void }
      attr_writer :certificate

      # Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY` and the
      # card is on the Visa network. Stable device identification set by the wallet
      # provider.
      sig { returns(T.nilable(String)) }
      attr_reader :client_device_id

      sig { params(client_device_id: String).void }
      attr_writer :client_device_id

      # Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY` and the
      # card is on the Visa network. Consumer ID that identifies the wallet account
      # holder entity.
      sig { returns(T.nilable(String)) }
      attr_reader :client_wallet_account_id

      sig { params(client_wallet_account_id: String).void }
      attr_writer :client_wallet_account_id

      # Name of digital wallet provider.
      sig { returns(T.nilable(Lithic::Models::CardProvisionParams::DigitalWallet::OrSymbol)) }
      attr_reader :digital_wallet

      sig { params(digital_wallet: Lithic::Models::CardProvisionParams::DigitalWallet::OrSymbol).void }
      attr_writer :digital_wallet

      # Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      # `activationData` in the response. Base64 cryptographic nonce provided by the
      # device's wallet.
      sig { returns(T.nilable(String)) }
      attr_reader :nonce

      sig { params(nonce: String).void }
      attr_writer :nonce

      # Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      # `activationData` in the response. Base64 cryptographic nonce provided by the
      # device's wallet.
      sig { returns(T.nilable(String)) }
      attr_reader :nonce_signature

      sig { params(nonce_signature: String).void }
      attr_writer :nonce_signature

      sig do
        params(
          certificate: String,
          client_device_id: String,
          client_wallet_account_id: String,
          digital_wallet: Lithic::Models::CardProvisionParams::DigitalWallet::OrSymbol,
          nonce: String,
          nonce_signature: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        certificate: nil,
        client_device_id: nil,
        client_wallet_account_id: nil,
        digital_wallet: nil,
        nonce: nil,
        nonce_signature: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              certificate: String,
              client_device_id: String,
              client_wallet_account_id: String,
              digital_wallet: Lithic::Models::CardProvisionParams::DigitalWallet::OrSymbol,
              nonce: String,
              nonce_signature: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash; end

      # Name of digital wallet provider.
      module DigitalWallet
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardProvisionParams::DigitalWallet) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::CardProvisionParams::DigitalWallet::TaggedSymbol) }

        APPLE_PAY = T.let(:APPLE_PAY, Lithic::Models::CardProvisionParams::DigitalWallet::TaggedSymbol)
        GOOGLE_PAY = T.let(:GOOGLE_PAY, Lithic::Models::CardProvisionParams::DigitalWallet::TaggedSymbol)
        SAMSUNG_PAY = T.let(:SAMSUNG_PAY, Lithic::Models::CardProvisionParams::DigitalWallet::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::CardProvisionParams::DigitalWallet::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
