# frozen_string_literal: true

module Lithic
  module Models
    class FundingEventCreatedWebhookEvent < Lithic::Models::FundingEvent
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"funding_event.created"]
      required :event_type, const: :"funding_event.created"

      # @!method initialize(event_type: :"funding_event.created")
      #   @param event_type [Symbol, :"funding_event.created"] The type of event that occurred.
    end
  end
end
