# frozen_string_literal: true

module Lithic
  module Models
    class DisputeTransactionUpdatedWebhookEvent < Lithic::Models::DisputeV2
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"dispute_transaction.updated"]
      required :event_type, const: :"dispute_transaction.updated"

      # @!method initialize(event_type: :"dispute_transaction.updated")
      #   The Dispute object tracks the progression of a dispute throughout its lifecycle.
      #
      #   @param event_type [Symbol, :"dispute_transaction.updated"] The type of event that occurred.
    end
  end
end
