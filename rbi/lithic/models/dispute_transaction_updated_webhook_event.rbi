# typed: strong

module Lithic
  module Models
    class DisputeTransactionUpdatedWebhookEvent < Lithic::Models::DisputeV2
      OrHash =
        T.type_alias do
          T.any(
            Lithic::DisputeTransactionUpdatedWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The Dispute object tracks the progression of a dispute throughout its lifecycle.
      sig { params(event_type: Symbol).returns(T.attached_class) }
      def self.new(
        # The type of event that occurred.
        event_type: :"dispute_transaction.updated"
      )
      end

      sig { override.returns({ event_type: Symbol }) }
      def to_hash
      end
    end
  end
end
