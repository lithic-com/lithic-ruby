# frozen_string_literal: true

module Lithic
  module Models
    class CardCreatedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute card_token
      #   The token of the card that was created.
      #
      #   @return [String]
      required :card_token, String

      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"card.created"]
      required :event_type, const: :"card.created"

      # @!attribute replacement_for
      #   The token of the card that was replaced, if the new card is a replacement card.
      #
      #   @return [String, nil]
      optional :replacement_for, String, nil?: true

      # @!method initialize(card_token:, replacement_for: nil, event_type: :"card.created")
      #   @param card_token [String] The token of the card that was created.
      #
      #   @param replacement_for [String, nil] The token of the card that was replaced, if the new card is a replacement card.
      #
      #   @param event_type [Symbol, :"card.created"] The type of event that occurred.
    end
  end
end
