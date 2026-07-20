# frozen_string_literal: true

module Lithic
  module Models
    class EmbedViewedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute account_token
      #   The token of the account associated with the card
      #
      #   @return [String]
      required :account_token, String

      # @!attribute card_token
      #   The token of the card whose details were revealed
      #
      #   @return [String]
      required :card_token, String

      # @!attribute device_details
      #   Details about the request that revealed the card detail
      #
      #   @return [Lithic::Models::EmbedViewedWebhookEvent::DeviceDetails]
      required :device_details, -> { Lithic::EmbedViewedWebhookEvent::DeviceDetails }

      # @!attribute embed_type
      #   The type of card detail that was revealed
      #
      #   @return [Symbol, Lithic::Models::EmbedViewedWebhookEvent::EmbedType]
      required :embed_type, enum: -> { Lithic::EmbedViewedWebhookEvent::EmbedType }

      # @!attribute event_type
      #   The type of event
      #
      #   @return [Symbol, :"embed.viewed"]
      required :event_type, const: :"embed.viewed"

      # @!attribute session_id
      #   The identifier shared by webhook events for the same embed session.
      #
      #   @return [String]
      required :session_id, String

      # @!method initialize(account_token:, card_token:, device_details:, embed_type:, session_id:, event_type: :"embed.viewed")
      #   @param account_token [String] The token of the account associated with the card
      #
      #   @param card_token [String] The token of the card whose details were revealed
      #
      #   @param device_details [Lithic::Models::EmbedViewedWebhookEvent::DeviceDetails] Details about the request that revealed the card detail
      #
      #   @param embed_type [Symbol, Lithic::Models::EmbedViewedWebhookEvent::EmbedType] The type of card detail that was revealed
      #
      #   @param session_id [String] The identifier shared by webhook events for the same embed session.
      #
      #   @param event_type [Symbol, :"embed.viewed"] The type of event

      # @see Lithic::Models::EmbedViewedWebhookEvent#device_details
      class DeviceDetails < Lithic::Internal::Type::BaseModel
        # @!attribute ip_address
        #   The IP address recorded for the request that generated the event
        #
        #   @return [String]
        required :ip_address, String

        # @!method initialize(ip_address:)
        #   Details about the request that revealed the card detail
        #
        #   @param ip_address [String] The IP address recorded for the request that generated the event
      end

      # The type of card detail that was revealed
      #
      # @see Lithic::Models::EmbedViewedWebhookEvent#embed_type
      module EmbedType
        extend Lithic::Internal::Type::Enum

        PAN = :PAN
        CVV = :CVV
        EXP_MONTH = :EXP_MONTH
        EXP_YEAR = :EXP_YEAR

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
