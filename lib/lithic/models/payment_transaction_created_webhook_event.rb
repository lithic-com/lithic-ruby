# frozen_string_literal: true

module Lithic
  module Models
    class PaymentTransactionCreatedWebhookEvent < Lithic::Models::Payment
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"payment_transaction.created"]
      required :event_type, const: :"payment_transaction.created"

      # @!method initialize(event_type: :"payment_transaction.created")
      #   Payment transaction
      #
      #   @param event_type [Symbol, :"payment_transaction.created"] The type of event that occurred.
    end
  end
end
