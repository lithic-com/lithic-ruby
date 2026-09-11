# frozen_string_literal: true

module Lithic
  module Models
    class CardPinUpdatedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute card_token
      #   The token of the card whose PIN or PIN status was updated
      #
      #   @return [String]
      required :card_token, String

      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"card.pin_updated"]
      required :event_type, const: :"card.pin_updated"

      # @!attribute pin_status
      #   The card's PIN status after the update
      #
      #   @return [Symbol, Lithic::Models::CardPinUpdatedWebhookEvent::PinStatus]
      required :pin_status, enum: -> { Lithic::CardPinUpdatedWebhookEvent::PinStatus }

      # @!attribute status_reason
      #   The reason for the PIN update:
      #
      #   - `PIN_SET` - The PIN was set for the first time; `pin_status` is `OK`
      #   - `PIN_CHANGED` - The PIN was changed, including when changing a blocked PIN;
      #     `pin_status` is `OK`
      #   - `PIN_UNBLOCKED` - The PIN was unblocked without changing it; `pin_status` is
      #     `OK`
      #   - `EXCESSIVE_PIN_ATTEMPTS` - The PIN was blocked due to excessive incorrect PIN
      #     attempts; `pin_status` is `BLOCKED`
      #
      #   @return [Symbol, Lithic::Models::CardPinUpdatedWebhookEvent::StatusReason]
      required :status_reason, enum: -> { Lithic::CardPinUpdatedWebhookEvent::StatusReason }

      # @!method initialize(card_token:, pin_status:, status_reason:, event_type: :"card.pin_updated")
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardPinUpdatedWebhookEvent} for more details.
      #
      #   @param card_token [String] The token of the card whose PIN or PIN status was updated
      #
      #   @param pin_status [Symbol, Lithic::Models::CardPinUpdatedWebhookEvent::PinStatus] The card's PIN status after the update
      #
      #   @param status_reason [Symbol, Lithic::Models::CardPinUpdatedWebhookEvent::StatusReason] The reason for the PIN update:
      #
      #   @param event_type [Symbol, :"card.pin_updated"] The type of event that occurred.

      # The card's PIN status after the update
      #
      # @see Lithic::Models::CardPinUpdatedWebhookEvent#pin_status
      module PinStatus
        extend Lithic::Internal::Type::Enum

        OK = :OK
        BLOCKED = :BLOCKED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The reason for the PIN update:
      #
      # - `PIN_SET` - The PIN was set for the first time; `pin_status` is `OK`
      # - `PIN_CHANGED` - The PIN was changed, including when changing a blocked PIN;
      #   `pin_status` is `OK`
      # - `PIN_UNBLOCKED` - The PIN was unblocked without changing it; `pin_status` is
      #   `OK`
      # - `EXCESSIVE_PIN_ATTEMPTS` - The PIN was blocked due to excessive incorrect PIN
      #   attempts; `pin_status` is `BLOCKED`
      #
      # @see Lithic::Models::CardPinUpdatedWebhookEvent#status_reason
      module StatusReason
        extend Lithic::Internal::Type::Enum

        PIN_SET = :PIN_SET
        PIN_CHANGED = :PIN_CHANGED
        PIN_UNBLOCKED = :PIN_UNBLOCKED
        EXCESSIVE_PIN_ATTEMPTS = :EXCESSIVE_PIN_ATTEMPTS

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
