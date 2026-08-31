# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#provision
    class CardProvisionParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute card_token
      #
      #   @return [String]
      required :card_token, String

      # @!attribute certificate
      #   Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      #   `activationData` in the response. Apple's public leaf certificate. Base64
      #   encoded in PEM format with headers `(-----BEGIN CERTIFICATE-----)` and trailers
      #   omitted. Provided by the device's wallet.
      #
      #   @return [String, nil]
      optional :certificate, String

      # @!attribute client_device_id
      #   Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY`. Stable
      #   device identification set by the wallet provider. Required for both wallets
      #   regardless of network, though the value is only used for cards on the Visa
      #   network and is ignored on Amex and Mastercard.
      #
      #   @return [String, nil]
      optional :client_device_id, String

      # @!attribute client_wallet_account_id
      #   Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY`. Consumer
      #   ID that identifies the wallet account holder entity. Required for both wallets
      #   regardless of network, though the value is only used for cards on the Visa
      #   network and is ignored on Amex and Mastercard.
      #
      #   @return [String, nil]
      optional :client_wallet_account_id, String

      # @!attribute digital_wallet
      #   Name of digital wallet provider.
      #
      #   @return [Symbol, Lithic::Models::CardProvisionParams::DigitalWallet, nil]
      optional :digital_wallet, enum: -> { Lithic::CardProvisionParams::DigitalWallet }

      # @!attribute nonce
      #   Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      #   `activationData` in the response. Base64 cryptographic nonce provided by the
      #   device's wallet.
      #
      #   @return [String, nil]
      optional :nonce, String

      # @!attribute nonce_signature
      #   Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      #   `activationData` in the response. Base64 cryptographic nonce provided by the
      #   device's wallet.
      #
      #   @return [String, nil]
      optional :nonce_signature, String

      # @!method initialize(card_token:, certificate: nil, client_device_id: nil, client_wallet_account_id: nil, digital_wallet: nil, nonce: nil, nonce_signature: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardProvisionParams} for more details.
      #
      #   @param card_token [String]
      #
      #   @param certificate [String] Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only `activa
      #
      #   @param client_device_id [String] Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY`. Stable dev
      #
      #   @param client_wallet_account_id [String] Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY`. Consumer I
      #
      #   @param digital_wallet [Symbol, Lithic::Models::CardProvisionParams::DigitalWallet] Name of digital wallet provider.
      #
      #   @param nonce [String] Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only `activa
      #
      #   @param nonce_signature [String] Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only `activa
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Name of digital wallet provider.
      module DigitalWallet
        extend Lithic::Internal::Type::Enum

        APPLE_PAY = :APPLE_PAY
        GOOGLE_PAY = :GOOGLE_PAY
        SAMSUNG_PAY = :SAMSUNG_PAY

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
