# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#web_provision
    class CardWebProvisionParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute client_device_id
      #   Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push
      #   Provisioning device identifier required for the tokenization flow
      #
      #   @return [String, nil]
      optional :client_device_id, String

      # @!attribute client_wallet_account_id
      #   Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push
      #   Provisioning wallet account identifier required for the tokenization flow
      #
      #   @return [String, nil]
      optional :client_wallet_account_id, String

      # @!attribute digital_wallet
      #   Name of digital wallet provider.
      #
      #   @return [Symbol, Lithic::Models::CardWebProvisionParams::DigitalWallet, nil]
      optional :digital_wallet, enum: -> { Lithic::CardWebProvisionParams::DigitalWallet }

      # @!attribute server_session_id
      #   Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push
      #   Provisioning session identifier required for the FPAN flow.
      #
      #   @return [String, nil]
      optional :server_session_id, String

      # @!method initialize(client_device_id: nil, client_wallet_account_id: nil, digital_wallet: nil, server_session_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardWebProvisionParams} for more details.
      #
      #   @param client_device_id [String] Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push Provision
      #
      #   @param client_wallet_account_id [String] Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push Provision
      #
      #   @param digital_wallet [Symbol, Lithic::Models::CardWebProvisionParams::DigitalWallet] Name of digital wallet provider.
      #
      #   @param server_session_id [String] Only applicable if `digital_wallet` is GOOGLE_PAY. Google Pay Web Push Provision
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Name of digital wallet provider.
      module DigitalWallet
        extend Lithic::Internal::Type::Enum

        APPLE_PAY = :APPLE_PAY
        GOOGLE_PAY = :GOOGLE_PAY

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
