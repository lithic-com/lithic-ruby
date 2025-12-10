# typed: strong

module Lithic
  module Models
    class DisputeEvidenceUploadFailedWebhookEvent < Lithic::Models::DisputeEvidence
      OrHash =
        T.type_alias do
          T.any(
            Lithic::DisputeEvidenceUploadFailedWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # Dispute evidence.
      sig { params(event_type: Symbol).returns(T.attached_class) }
      def self.new(
        # The type of event that occurred.
        event_type: :"dispute_evidence.upload_failed"
      )
      end

      sig { override.returns({ event_type: Symbol }) }
      def to_hash
      end
    end
  end
end
