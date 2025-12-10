# frozen_string_literal: true

module Lithic
  module Models
    class ManagementOperationUpdatedWebhookEvent < Lithic::Models::ManagementOperationTransaction
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"management_operation.updated"]
      required :event_type, const: :"management_operation.updated"

      # @!method initialize(event_type: :"management_operation.updated")
      #   @param event_type [Symbol, :"management_operation.updated"] The type of event that occurred.
    end
  end
end
