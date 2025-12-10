# frozen_string_literal: true

module Lithic
  module Models
    class DisputeTransactionCreatedWebhookEvent < Lithic::Models::DisputeV2
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"dispute_transaction.created"]
      required :event_type, const: :"dispute_transaction.created"

      # @!method initialize(event_type: :"dispute_transaction.created")
      #   The Dispute object tracks the progression of a dispute throughout its lifecycle.
      #
      #   @param event_type [Symbol, :"dispute_transaction.created"] The type of event that occurred.
    end
  end
end
