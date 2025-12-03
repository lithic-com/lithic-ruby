# typed: strong

module Lithic
  module Resources
    class FundingEvents
      # Get funding event for program by id
      sig do
        params(
          funding_event_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::FundingEvent)
      end
      def retrieve(
        # Globally unique identifier for funding event.
        funding_event_token,
        request_options: {}
      )
      end

      # Get all funding events for program
      sig do
        params(
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::CursorPage[Lithic::FundingEvent])
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

      # Get funding event details by id
      sig do
        params(
          funding_event_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Models::FundingEventRetrieveDetailsResponse)
      end
      def retrieve_details(
        # Globally unique identifier for funding event.
        funding_event_token,
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
