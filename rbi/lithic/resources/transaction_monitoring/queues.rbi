# typed: strong

module Lithic
  module Resources
    class TransactionMonitoring
      class Queues
        # Creates a new queue for grouping transaction monitoring cases.
        sig do
          params(
            name: String,
            description: T.nilable(String),
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::TransactionMonitoring::Queue)
        end
        def create(
          # Human-readable name of the queue
          name:,
          # Optional description of the queue
          description: nil,
          request_options: {}
        )
        end

        # Retrieves a single transaction monitoring queue.
        sig do
          params(
            queue_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::TransactionMonitoring::Queue)
        end
        def retrieve(
          # Globally unique identifier for the queue.
          queue_token,
          request_options: {}
        )
        end

        # Updates a transaction monitoring queue.
        sig do
          params(
            queue_token: String,
            description: T.nilable(String),
            name: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::TransactionMonitoring::Queue)
        end
        def update(
          # Globally unique identifier for the queue.
          queue_token,
          # New description for the queue, or `null` to clear it
          description: nil,
          # New name for the queue
          name: nil,
          request_options: {}
        )
        end

        # Lists transaction monitoring queues.
        sig do
          params(
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::Internal::CursorPage[Lithic::TransactionMonitoring::Queue]
          )
        end
        def list(
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Page size (for pagination).
          page_size: nil,
          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          request_options: {}
        )
        end

        # Deletes a transaction monitoring queue.
        sig do
          params(
            queue_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Globally unique identifier for the queue.
          queue_token,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
