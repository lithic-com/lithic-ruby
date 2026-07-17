# frozen_string_literal: true

module Lithic
  module Models
    class EmbedSessionGeneratedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute account_token
      #   The token of the account associated with the card
      #
      #   @return [String]
      required :account_token, String

      # @!attribute card_token
      #   The token of the card associated with the embed session
      #
      #   @return [String]
      required :card_token, String

      # @!attribute device_details
      #   Details about the request that generated the embed session
      #
      #   @return [Lithic::Models::EmbedSessionGeneratedWebhookEvent::DeviceDetails]
      required :device_details, -> { Lithic::EmbedSessionGeneratedWebhookEvent::DeviceDetails }

      # @!attribute event_type
      #   The type of event
      #
      #   @return [Symbol, :"embed.session_generated"]
      required :event_type, const: :"embed.session_generated"

      # @!attribute session_id
      #   The identifier shared by webhook events for the same embed session.
      #
      #   @return [String]
      required :session_id, String

      # @!attribute session_type
      #   The type of embed session that was generated
      #
      #   @return [Symbol, Lithic::Models::EmbedSessionGeneratedWebhookEvent::SessionType]
      required :session_type, enum: -> { Lithic::EmbedSessionGeneratedWebhookEvent::SessionType }

      # @!method initialize(account_token:, card_token:, device_details:, session_id:, session_type:, event_type: :"embed.session_generated")
      #   @param account_token [String] The token of the account associated with the card
      #
      #   @param card_token [String] The token of the card associated with the embed session
      #
      #   @param device_details [Lithic::Models::EmbedSessionGeneratedWebhookEvent::DeviceDetails] Details about the request that generated the embed session
      #
      #   @param session_id [String] The identifier shared by webhook events for the same embed session.
      #
      #   @param session_type [Symbol, Lithic::Models::EmbedSessionGeneratedWebhookEvent::SessionType] The type of embed session that was generated
      #
      #   @param event_type [Symbol, :"embed.session_generated"] The type of event

      # @see Lithic::Models::EmbedSessionGeneratedWebhookEvent#device_details
      class DeviceDetails < Lithic::Internal::Type::BaseModel
        # @!attribute ip_address
        #   The IP address recorded for the request that generated the event
        #
        #   @return [String]
        required :ip_address, String

        # @!method initialize(ip_address:)
        #   Details about the request that generated the embed session
        #
        #   @param ip_address [String] The IP address recorded for the request that generated the event
      end

      # The type of embed session that was generated
      #
      # @see Lithic::Models::EmbedSessionGeneratedWebhookEvent#session_type
      module SessionType
        extend Lithic::Internal::Type::Enum

        CARD_EMBED = :CARD_EMBED
        PIN_SETTING_EMBED = :PIN_SETTING_EMBED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
