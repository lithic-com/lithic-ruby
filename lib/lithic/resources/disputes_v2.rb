# frozen_string_literal: true

module Lithic
  module Resources
    class DisputesV2
      # Retrieves a specific dispute by its token.
      #
      # @overload retrieve(dispute_token, request_options: {})
      #
      # @param dispute_token [String] Token of the dispute to retrieve.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::DisputeV2]
      #
      # @see Lithic::Models::DisputesV2RetrieveParams
      def retrieve(dispute_token, params = {})
        @client.request(
          method: :get,
          path: ["v2/disputes/%1$s", dispute_token],
          model: Lithic::DisputeV2,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::DisputesV2ListParams} for more details.
      #
      # Returns a paginated list of disputes.
      #
      # @overload list(account_token: nil, begin_: nil, card_token: nil, disputed_transaction_token: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
      #
      # @param account_token [String] Filter by account token.
      #
      # @param begin_ [Time] RFC 3339 timestamp for filtering by created date, inclusive.
      #
      # @param card_token [String] Filter by card token.
      #
      # @param disputed_transaction_token [String] Filter by the token of the transaction being disputed. Corresponds with transact
      #
      # @param end_ [Time] RFC 3339 timestamp for filtering by created date, inclusive.
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param page_size [Integer] Number of items to return.
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::DisputeV2>]
      #
      # @see Lithic::Models::DisputesV2ListParams
      def list(params = {})
        parsed, options = Lithic::DisputesV2ListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v2/disputes",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::DisputeV2,
          options: options
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
