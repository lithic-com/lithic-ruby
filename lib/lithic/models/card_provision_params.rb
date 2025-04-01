# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#provision
    class CardProvisionParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] certificate
      #   Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      #     `activationData` in the response. Apple's public leaf certificate. Base64
      #     encoded in PEM format with headers `(-----BEGIN CERTIFICATE-----)` and trailers
      #     omitted. Provided by the device's wallet.
      #
      #   @return [String, nil]
      optional :certificate, String

      # @!parse
      #   # @return [String]
      #   attr_writer :certificate

      # @!attribute [r] client_device_id
      #   Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY` and the
      #     card is on the Visa network. Stable device identification set by the wallet
      #     provider.
      #
      #   @return [String, nil]
      optional :client_device_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :client_device_id

      # @!attribute [r] client_wallet_account_id
      #   Only applicable if `digital_wallet` is `GOOGLE_PAY` or `SAMSUNG_PAY` and the
      #     card is on the Visa network. Consumer ID that identifies the wallet account
      #     holder entity.
      #
      #   @return [String, nil]
      optional :client_wallet_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :client_wallet_account_id

      # @!attribute [r] digital_wallet
      #   Name of digital wallet provider.
      #
      #   @return [Symbol, Lithic::Models::CardProvisionParams::DigitalWallet, nil]
      optional :digital_wallet, enum: -> { Lithic::Models::CardProvisionParams::DigitalWallet }

      # @!parse
      #   # @return [Symbol, Lithic::Models::CardProvisionParams::DigitalWallet]
      #   attr_writer :digital_wallet

      # @!attribute [r] nonce
      #   Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      #     `activationData` in the response. Base64 cryptographic nonce provided by the
      #     device's wallet.
      #
      #   @return [String, nil]
      optional :nonce, String

      # @!parse
      #   # @return [String]
      #   attr_writer :nonce

      # @!attribute [r] nonce_signature
      #   Only applicable if `digital_wallet` is `APPLE_PAY`. Omit to receive only
      #     `activationData` in the response. Base64 cryptographic nonce provided by the
      #     device's wallet.
      #
      #   @return [String, nil]
      optional :nonce_signature, String

      # @!parse
      #   # @return [String]
      #   attr_writer :nonce_signature

      # @!parse
      #   # @param certificate [String]
      #   # @param client_device_id [String]
      #   # @param client_wallet_account_id [String]
      #   # @param digital_wallet [Symbol, Lithic::Models::CardProvisionParams::DigitalWallet]
      #   # @param nonce [String]
      #   # @param nonce_signature [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     certificate: nil,
      #     client_device_id: nil,
      #     client_wallet_account_id: nil,
      #     digital_wallet: nil,
      #     nonce: nil,
      #     nonce_signature: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Name of digital wallet provider.
      module DigitalWallet
        extend Lithic::Enum

        APPLE_PAY = :APPLE_PAY
        GOOGLE_PAY = :GOOGLE_PAY
        SAMSUNG_PAY = :SAMSUNG_PAY

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
