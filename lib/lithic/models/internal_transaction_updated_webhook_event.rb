# frozen_string_literal: true

module Lithic
  module Models
    class InternalTransactionUpdatedWebhookEvent < Lithic::Models::InternalTransactionAPI
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"internal_transaction.updated"]
      required :event_type, const: :"internal_transaction.updated"

      # @!method initialize(event_type: :"internal_transaction.updated")
      #   @param event_type [Symbol, :"internal_transaction.updated"] The type of event that occurred.
    end
  end
end
