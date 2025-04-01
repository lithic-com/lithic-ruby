# frozen_string_literal: true

module Lithic
  module Resources
    class Events
      # @return [Lithic::Resources::Events::Subscriptions]
      attr_reader :subscriptions

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

      # List all events.
      #
      # @overload list(begin_: nil, end_: nil, ending_before: nil, event_types: nil, page_size: nil, starting_after: nil, with_content: nil, request_options: {})
      #
      # @param begin_ [Time]
      # @param end_ [Time]
      # @param ending_before [String]
      # @param event_types [Array<Symbol, Lithic::Models::EventListParams::EventType>]
      # @param page_size [Integer]
      # @param starting_after [String]
      # @param with_content [Boolean]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::CursorPage<Lithic::Models::Event>]
      #
      # @see Lithic::Models::EventListParams
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
      # @overload list_attempts(event_token, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, status: nil, request_options: {})
      #
      # @param event_token [String]
      # @param begin_ [Time]
      # @param end_ [Time]
      # @param ending_before [String]
      # @param page_size [Integer]
      # @param starting_after [String]
      # @param status [Symbol, Lithic::Models::EventListAttemptsParams::Status]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::CursorPage<Lithic::Models::MessageAttempt>]
      #
      # @see Lithic::Models::EventListAttemptsParams
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

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @subscriptions = Lithic::Resources::Events::Subscriptions.new(client: client)
      end
    end
  end
end
