# frozen_string_literal: true

module Lithic
  module Models
    class BookTransferTransactionCreatedWebhookEvent < Lithic::Models::BookTransferResponse
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"book_transfer_transaction.created"]
      required :event_type, const: :"book_transfer_transaction.created"

      # @!method initialize(event_type: :"book_transfer_transaction.created")
      #   Book transfer transaction
      #
      #   @param event_type [Symbol, :"book_transfer_transaction.created"] The type of event that occurred.
    end
  end
end
