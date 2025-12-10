# frozen_string_literal: true

module Lithic
  module Models
    class ExternalPaymentCreatedWebhookEvent < Lithic::Models::ExternalPayment
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"external_payment.created"]
      required :event_type, const: :"external_payment.created"

      # @!method initialize(event_type: :"external_payment.created")
      #   @param event_type [Symbol, :"external_payment.created"] The type of event that occurred.
    end
  end
end
