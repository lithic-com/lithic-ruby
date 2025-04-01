# frozen_string_literal: true

module Lithic
  module Resources
    class Events
      # @return [Lithic::Resources::Events::Subscriptions]
      attr_reader :subscriptions

      # Get an event.
      #
      # @param event_token [String]
      #
      # @param params [Lithic::Models::EventRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Event]
      def retrieve(event_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/events/%1$s", event_token],
          model: Lithic::Models::Event,
          options: params[:request_options]
        )
      end

      # List all events.
      #
      # @param params [Lithic::Models::EventListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [Array<Symbol, Lithic::Models::EventListParams::EventType>] :event_types Event types to filter events by.
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Boolean] :with_content Whether to include the event payload content in the response.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::Event>]
      def list(params = {})
        parsed, options = Lithic::Models::EventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/events",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::Event,
          options: options
        )
      end

      # List all the message attempts for a given event.
      #
      # @param event_token [String]
      #
      # @param params [Lithic::Models::EventListAttemptsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Symbol, Lithic::Models::EventListAttemptsParams::Status] :status
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::MessageAttempt>]
      def list_attempts(event_token, params = {})
        parsed, options = Lithic::Models::EventListAttemptsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/events/%1$s/attempts", event_token],
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::MessageAttempt,
          options: options
        )
      end

      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @subscriptions = Lithic::Resources::Events::Subscriptions.new(client: client)
      end
    end
  end
end
