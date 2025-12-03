# frozen_string_literal: true

module Lithic
  module Resources
    class FundingEvents
      # Get funding event for program by id
      #
      # @overload retrieve(funding_event_token, request_options: {})
      #
      # @param funding_event_token [String] Globally unique identifier for funding event.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::FundingEvent]
      #
      # @see Lithic::Models::FundingEventRetrieveParams
      def retrieve(funding_event_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/funding_events/%1$s", funding_event_token],
          model: Lithic::FundingEvent,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::FundingEventListParams} for more details.
      #
      # Get all funding events for program
      #
      # @overload list(ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::FundingEvent>]
      #
      # @see Lithic::Models::FundingEventListParams
      def list(params = {})
        parsed, options = Lithic::FundingEventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/funding_events",
          query: parsed,
          page: Lithic::Internal::CursorPage,
          model: Lithic::FundingEvent,
          options: options
        )
      end

      # Get funding event details by id
      #
      # @overload retrieve_details(funding_event_token, request_options: {})
      #
      # @param funding_event_token [String] Globally unique identifier for funding event.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::FundingEventRetrieveDetailsResponse]
      #
      # @see Lithic::Models::FundingEventRetrieveDetailsParams
      def retrieve_details(funding_event_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/funding_events/%1$s/details", funding_event_token],
          model: Lithic::Models::FundingEventRetrieveDetailsResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
