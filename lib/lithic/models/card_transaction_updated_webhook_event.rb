# frozen_string_literal: true

module Lithic
  module Models
    class CardTransactionUpdatedWebhookEvent < Lithic::Models::Transaction
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"card_transaction.updated"]
      required :event_type, const: :"card_transaction.updated"

      # @!method initialize(event_type: :"card_transaction.updated")
      #   @param event_type [Symbol, :"card_transaction.updated"] The type of event that occurred.
    end
  end
end
