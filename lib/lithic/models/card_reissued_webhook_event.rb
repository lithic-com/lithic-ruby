# frozen_string_literal: true

module Lithic
  module Models
    class CardReissuedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"card.reissued"]
      required :event_type, const: :"card.reissued"

      # @!attribute card_token
      #   The token of the card that was reissued.
      #
      #   @return [String, nil]
      optional :card_token, String

      # @!method initialize(card_token: nil, event_type: :"card.reissued")
      #   @param card_token [String] The token of the card that was reissued.
      #
      #   @param event_type [Symbol, :"card.reissued"] The type of event that occurred.
    end
  end
end
