# frozen_string_literal: true

module Lithic
  module Models
    class DisputeUpdatedWebhookEvent < Lithic::Models::Dispute
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"dispute.updated"]
      required :event_type, const: :"dispute.updated"

      # @!method initialize(event_type: :"dispute.updated")
      #   Dispute.
      #
      #   @param event_type [Symbol, :"dispute.updated"] The type of event that occurred.
    end
  end
end
