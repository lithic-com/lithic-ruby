# frozen_string_literal: true

module Lithic
  module Models
    class ManagementOperationCreatedWebhookEvent < Lithic::Models::ManagementOperationTransaction
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"management_operation.created"]
      required :event_type, const: :"management_operation.created"

      # @!method initialize(event_type: :"management_operation.created")
      #   @param event_type [Symbol, :"management_operation.created"] The type of event that occurred.
    end
  end
end
