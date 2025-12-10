# frozen_string_literal: true

module Lithic
  module Models
    class CardConvertedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute card_token
      #   The token of the card that was created.
      #
      #   @return [String]
      required :card_token, String

      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"card.converted"]
      required :event_type, const: :"card.converted"

      # @!method initialize(card_token:, event_type: :"card.converted")
      #   @param card_token [String] The token of the card that was created.
      #
      #   @param event_type [Symbol, :"card.converted"] The type of event that occurred.
    end
  end
end
