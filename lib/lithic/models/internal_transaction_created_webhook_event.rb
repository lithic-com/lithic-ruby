# frozen_string_literal: true

module Lithic
  module Models
    class InternalTransactionCreatedWebhookEvent < Lithic::Models::InternalTransactionAPI
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"internal_transaction.created"]
      required :event_type, const: :"internal_transaction.created"

      # @!method initialize(event_type: :"internal_transaction.created")
      #   @param event_type [Symbol, :"internal_transaction.created"] The type of event that occurred.
    end
  end
end
