# typed: strong

module Lithic
  module Resources
    class Events
      sig { returns(Lithic::Resources::Events::Subscriptions) }
      attr_reader :subscriptions

      sig { returns(Lithic::Resources::Events::EventSubscriptions) }
      attr_reader :event_subscriptions

      # Get an event.
      sig do
        params(
          event_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Event)
      end
      def retrieve(event_token, request_options: {})
      end

      # List all events.
      sig do
        params(
          begin_: Time,
          end_: Time,
          ending_before: String,
          event_types: T::Array[Lithic::EventListParams::EventType::OrSymbol],
          page_size: Integer,
          starting_after: String,
          with_content: T::Boolean,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::CursorPage[Lithic::Event])
      end
      def list(
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Event types to filter events by.
        event_types: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        # Whether to include the event payload content in the response.
        with_content: nil,
        request_options: {}
      )
      end

      # List all the message attempts for a given event.
      sig do
        params(
          event_token: String,
          begin_: Time,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          status: Lithic::EventListAttemptsParams::Status::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::CursorPage[Lithic::MessageAttempt])
      end
      def list_attempts(
        event_token,
        # Date string in RFC 3339 format. Only entries created after the specified time
        # will be included. UTC time zone.
        begin_: nil,
        # Date string in RFC 3339 format. Only entries created before the specified time
        # will be included. UTC time zone.
        end_: nil,
        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
        ending_before: nil,
        # Page size (for pagination).
        page_size: nil,
        # A cursor representing an item's token after which a page of results should
        # begin. Used to retrieve the next page of results after this item.
        starting_after: nil,
        status: nil,
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
