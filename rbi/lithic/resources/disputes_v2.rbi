# typed: strong

module Lithic
  module Resources
    class DisputesV2
      # Retrieves a specific dispute by its token.
      sig do
        params(
          dispute_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::DisputeV2)
      end
      def retrieve(
        # Token of the dispute to retrieve.
        dispute_token,
        request_options: {}
      )
      end

      # Returns a paginated list of disputes.
      sig do
        params(
          account_token: String,
          begin_: Time,
          card_token: String,
          disputed_transaction_token: String,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::CursorPage[Lithic::DisputeV2])
      end
      def list(
        # Filter by account token.
        account_token: nil,
        # RFC 3339 timestamp for filtering by created date, inclusive.
        begin_: nil,
        # Filter by card token.
        card_token: nil,
        # Filter by the token of the transaction being disputed. Corresponds with
        # transaction_series.related_transaction_token in the Dispute.
        disputed_transaction_token: nil,
        # RFC 3339 timestamp for filtering by created date, inclusive.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Number of items to return.
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
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
