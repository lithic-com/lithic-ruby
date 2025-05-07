# typed: strong

module Lithic
  module Models
    class CardProvisionParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

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
      sig do
        returns(T.nilable(Lithic::CardProvisionParams::DigitalWallet::OrSymbol))
      end
      attr_reader :digital_wallet

      sig do
        params(
          digital_wallet: Lithic::CardProvisionParams::DigitalWallet::OrSymbol
        ).void
      end
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
          digital_wallet: Lithic::CardProvisionParams::DigitalWallet::OrSymbol,
          nonce: String,
          nonce_signature: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
        # `activationData` in the response. Apple's public leaf certificate. Base64
        # encoded in PEM format with headers `(-----BEGIN CERTIFICATE-----)` and trailers
        # omitted. Provided by the device's wallet.
        certificate: nil,
        # Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY` and the
        # card is on the Visa network. Stable device identification set by the wallet
        # provider.
        client_device_id: nil,
        # Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY` and the
        # card is on the Visa network. Consumer ID that identifies the wallet account
        # holder entity.
        client_wallet_account_id: nil,
        # Name of digital wallet provider.
        digital_wallet: nil,
        # Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
        # `activationData` in the response. Base64 cryptographic nonce provided by the
        # device's wallet.
        nonce: nil,
        # Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
        # `activationData` in the response. Base64 cryptographic nonce provided by the
        # device's wallet.
        nonce_signature: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            certificate: String,
            client_device_id: String,
            client_wallet_account_id: String,
            digital_wallet:
              Lithic::CardProvisionParams::DigitalWallet::OrSymbol,
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
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardProvisionParams::DigitalWallet)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPLE_PAY =
          T.let(
            :APPLE_PAY,
            Lithic::CardProvisionParams::DigitalWallet::TaggedSymbol
          )
        GOOGLE_PAY =
          T.let(
            :GOOGLE_PAY,
            Lithic::CardProvisionParams::DigitalWallet::TaggedSymbol
          )
        SAMSUNG_PAY =
          T.let(
            :SAMSUNG_PAY,
            Lithic::CardProvisionParams::DigitalWallet::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::CardProvisionParams::DigitalWallet::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
