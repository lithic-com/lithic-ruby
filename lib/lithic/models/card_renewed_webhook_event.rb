# frozen_string_literal: true

module Lithic
  module Models
    class CardRenewedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"card.renewed"]
      required :event_type, const: :"card.renewed"

      # @!attribute card_token
      #   The token of the card that was renewed.
      #
      #   @return [String, nil]
      optional :card_token, String

      # @!attribute exp_month
      #   The new expiration month of the card.
      #
      #   @return [String, nil]
      optional :exp_month, String

      # @!attribute exp_year
      #   The new expiration year of the card.
      #
      #   @return [String, nil]
      optional :exp_year, String

      # @!attribute previous_exp_month
      #   The previous expiration month of the card.
      #
      #   @return [String, nil]
      optional :previous_exp_month, String

      # @!attribute previous_exp_year
      #   The previous expiration year of the card.
      #
      #   @return [String, nil]
      optional :previous_exp_year, String

      # @!method initialize(card_token: nil, exp_month: nil, exp_year: nil, previous_exp_month: nil, previous_exp_year: nil, event_type: :"card.renewed")
      #   @param card_token [String] The token of the card that was renewed.
      #
      #   @param exp_month [String] The new expiration month of the card.
      #
      #   @param exp_year [String] The new expiration year of the card.
      #
      #   @param previous_exp_month [String] The previous expiration month of the card.
      #
      #   @param previous_exp_year [String] The previous expiration year of the card.
      #
      #   @param event_type [Symbol, :"card.renewed"] The type of event that occurred.
    end
  end
end
