# frozen_string_literal: true

module Lithic
  module Models
    class NetworkTotalCreatedWebhookEvent < Lithic::Models::NetworkTotal
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"network_total.created"]
      required :event_type, const: :"network_total.created"

      # @!method initialize(event_type: :"network_total.created")
      #   @param event_type [Symbol, :"network_total.created"] The type of event that occurred.
    end
  end
end
