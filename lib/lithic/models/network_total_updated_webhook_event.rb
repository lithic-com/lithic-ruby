# frozen_string_literal: true

module Lithic
  module Models
    class NetworkTotalUpdatedWebhookEvent < Lithic::Models::NetworkTotal
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"network_total.updated"]
      required :event_type, const: :"network_total.updated"

      # @!method initialize(event_type: :"network_total.updated")
      #   @param event_type [Symbol, :"network_total.updated"] The type of event that occurred.
    end
  end
end
