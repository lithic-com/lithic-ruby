# typed: strong

module Lithic
  module Models
    class CardProvisionParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      #   `activationData` in the response. Apple's public leaf certificate. Base64
      #   encoded in PEM format with headers `(-----BEGIN CERTIFICATE-----)` and trailers
      #   omitted. Provided by the device's wallet.
      sig { returns(T.nilable(String)) }
      def certificate
      end

      sig { params(_: String).returns(String) }
      def certificate=(_)
      end

      # Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY` and the
      #   card is on the Visa network. Stable device identification set by the wallet
      #   provider.
      sig { returns(T.nilable(String)) }
      def client_device_id
      end

      sig { params(_: String).returns(String) }
      def client_device_id=(_)
      end

      # Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY` and the
      #   card is on the Visa network. Consumer ID that identifies the wallet account
      #   holder entity.
      sig { returns(T.nilable(String)) }
      def client_wallet_account_id
      end

      sig { params(_: String).returns(String) }
      def client_wallet_account_id=(_)
      end

      # Name of digital wallet provider.
      sig { returns(T.nilable(Lithic::Models::CardProvisionParams::DigitalWallet::OrSymbol)) }
      def digital_wallet
      end

      sig do
        params(_: Lithic::Models::CardProvisionParams::DigitalWallet::OrSymbol)
          .returns(Lithic::Models::CardProvisionParams::DigitalWallet::OrSymbol)
      end
      def digital_wallet=(_)
      end

      # Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      #   `activationData` in the response. Base64 cryptographic nonce provided by the
      #   device's wallet.
      sig { returns(T.nilable(String)) }
      def nonce
      end

      sig { params(_: String).returns(String) }
      def nonce=(_)
      end

      # Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      #   `activationData` in the response. Base64 cryptographic nonce provided by the
      #   device's wallet.
      sig { returns(T.nilable(String)) }
      def nonce_signature
      end

      sig { params(_: String).returns(String) }
      def nonce_signature=(_)
      end

      sig do
        params(
          certificate: String,
          client_device_id: String,
          client_wallet_account_id: String,
          digital_wallet: Lithic::Models::CardProvisionParams::DigitalWallet::OrSymbol,
          nonce: String,
          nonce_signature: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

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
      def to_hash
      end

      # Name of digital wallet provider.
      module DigitalWallet
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardProvisionParams::DigitalWallet) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::CardProvisionParams::DigitalWallet::TaggedSymbol) }

        APPLE_PAY = T.let(:APPLE_PAY, Lithic::Models::CardProvisionParams::DigitalWallet::OrSymbol)
        GOOGLE_PAY = T.let(:GOOGLE_PAY, Lithic::Models::CardProvisionParams::DigitalWallet::OrSymbol)
        SAMSUNG_PAY = T.let(:SAMSUNG_PAY, Lithic::Models::CardProvisionParams::DigitalWallet::OrSymbol)
      end
    end
  end
end
