# typed: strong

module Lithic
  module Models
    class BookTransferTransactionCreatedWebhookEvent < Lithic::Models::BookTransferResponse
      OrHash =
        T.type_alias do
          T.any(
            Lithic::BookTransferTransactionCreatedWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # Book transfer transaction
      sig { params(event_type: Symbol).returns(T.attached_class) }
      def self.new(
        # The type of event that occurred.
        event_type: :"book_transfer_transaction.created"
      )
      end

      sig { override.returns({ event_type: Symbol }) }
      def to_hash
      end
    end
  end
end
