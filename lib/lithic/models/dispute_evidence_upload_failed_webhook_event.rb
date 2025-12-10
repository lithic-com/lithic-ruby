# frozen_string_literal: true

module Lithic
  module Models
    class DisputeEvidenceUploadFailedWebhookEvent < Lithic::Models::DisputeEvidence
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"dispute_evidence.upload_failed"]
      required :event_type, const: :"dispute_evidence.upload_failed"

      # @!method initialize(event_type: :"dispute_evidence.upload_failed")
      #   Dispute evidence.
      #
      #   @param event_type [Symbol, :"dispute_evidence.upload_failed"] The type of event that occurred.
    end
  end
end
