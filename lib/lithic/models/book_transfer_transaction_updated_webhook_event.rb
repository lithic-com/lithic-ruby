# frozen_string_literal: true

module Lithic
  module Models
    class BookTransferTransactionUpdatedWebhookEvent < Lithic::Models::BookTransferResponse
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"book_transfer_transaction.updated"]
      required :event_type, const: :"book_transfer_transaction.updated"

      # @!method initialize(event_type: :"book_transfer_transaction.updated")
      #   Book transfer transaction
      #
      #   @param event_type [Symbol, :"book_transfer_transaction.updated"] The type of event that occurred.
    end
  end
end
