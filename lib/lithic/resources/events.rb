# frozen_string_literal: true

module Lithic
  module Resources
    class Events
      # @return [Lithic::Resources::Events::Subscriptions]
      attr_reader :subscriptions

      # @return [Lithic::Resources::Events::EventSubscriptions]
      attr_reader :event_subscriptions

      # Get an event.
      #
      # @overload retrieve(event_token, request_options: {})
      #
      # @param event_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Event]
      #
      # @see Lithic::Models::EventRetrieveParams
      def retrieve(event_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/events/%1$s", event_token],
          model: Lithic::Models::Event,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::EventListParams} for more details.
      #
      # List all events.
      #
      # @overload list(begin_: nil, end_: nil, ending_before: nil, event_types: nil, page_size: nil, starting_after: nil, with_content: nil, request_options: {})
      #
      # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      # ...
      #
      # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      # ...
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      # ...
      #
      # @param event_types [Array<Symbol, Lithic::Models::EventListParams::EventType>] Event types to filter events by.
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      # ...
      #
      # @param with_content [Boolean] Whether to include the event payload content in the response.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::Event>]
      #
      # @see Lithic::Models::EventListParams
      def list(params = {})
        parsed, options = Lithic::Models::EventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/events",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::Event,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::EventListAttemptsParams} for more details.
      #
      # List all the message attempts for a given event.
      #
      # @overload list_attempts(event_token, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, status: nil, request_options: {})
      #
      # @param event_token [String]
      #
      # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      # ...
      #
      # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      # ...
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      # ...
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      # ...
      #
      # @param status [Symbol, Lithic::Models::EventListAttemptsParams::Status]
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::MessageAttempt>]
      #
      # @see Lithic::Models::EventListAttemptsParams
      def list_attempts(event_token, params = {})
        parsed, options = Lithic::Models::EventListAttemptsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/events/%1$s/attempts", event_token],
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::Models::MessageAttempt,
          options: options
        )
      end

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @subscriptions = Lithic::Resources::Events::Subscriptions.new(client: client)
        @event_subscriptions = Lithic::Resources::Events::EventSubscriptions.new(client: client)
      end
    end
  end
end
