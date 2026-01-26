# frozen_string_literal: true

module Lithic
  module Models
    class CardUpdatedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute card_token
      #   The token of the card that was updated.
      #
      #   @return [String]
      required :card_token, String

      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"card.updated"]
      required :event_type, const: :"card.updated"

      # @!attribute previous_fields
      #   The previous values of the fields that were updated.
      #
      #   @return [Object]
      required :previous_fields, Lithic::Internal::Type::Unknown

      # @!attribute state
      #   The current state of the card.
      #
      #   @return [String]
      required :state, String

      # @!method initialize(card_token:, previous_fields:, state:, event_type: :"card.updated")
      #   @param card_token [String] The token of the card that was updated.
      #
      #   @param previous_fields [Object] The previous values of the fields that were updated.
      #
      #   @param state [String] The current state of the card.
      #
      #   @param event_type [Symbol, :"card.updated"] The type of event that occurred.
    end
  end
end
