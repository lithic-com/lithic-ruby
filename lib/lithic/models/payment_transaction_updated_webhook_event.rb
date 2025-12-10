# frozen_string_literal: true

module Lithic
  module Models
    class PaymentTransactionUpdatedWebhookEvent < Lithic::Models::Payment
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"payment_transaction.updated"]
      required :event_type, const: :"payment_transaction.updated"

      # @!method initialize(event_type: :"payment_transaction.updated")
      #   Payment transaction
      #
      #   @param event_type [Symbol, :"payment_transaction.updated"] The type of event that occurred.
    end
  end
end
