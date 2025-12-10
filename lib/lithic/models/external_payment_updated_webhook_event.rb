# frozen_string_literal: true

module Lithic
  module Models
    class ExternalPaymentUpdatedWebhookEvent < Lithic::Models::ExternalPayment
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"external_payment.updated"]
      required :event_type, const: :"external_payment.updated"

      # @!method initialize(event_type: :"external_payment.updated")
      #   @param event_type [Symbol, :"external_payment.updated"] The type of event that occurred.
    end
  end
end
