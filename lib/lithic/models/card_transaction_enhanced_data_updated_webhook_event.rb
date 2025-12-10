# frozen_string_literal: true

module Lithic
  module Models
    class CardTransactionEnhancedDataUpdatedWebhookEvent < Lithic::Models::Transactions::Events::EnhancedData
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"card_transaction.enhanced_data.updated"]
      required :event_type, const: :"card_transaction.enhanced_data.updated"

      # @!method initialize(event_type: :"card_transaction.enhanced_data.updated")
      #   @param event_type [Symbol, :"card_transaction.enhanced_data.updated"] The type of event that occurred.
    end
  end
end
