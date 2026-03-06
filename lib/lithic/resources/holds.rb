# frozen_string_literal: true

module Lithic
  module Resources
    class Holds
      # Create a hold on a financial account. Holds reserve funds by moving them from
      # available to pending balance. They can be resolved via settlement (linked to a
      # payment or book transfer), voiding, or expiration.
      #
      # @overload create(financial_account_token, amount:, token: nil, expiration_datetime: nil, memo: nil, user_defined_id: nil, request_options: {})
      #
      # @param financial_account_token [String] Globally unique identifier for the financial account.
      #
      # @param amount [Integer] Amount to hold in cents
      #
      # @param token [String] Customer-provided token for idempotency. Becomes the hold token.
      #
      # @param expiration_datetime [Time] When the hold should auto-expire
      #
      # @param memo [String, nil] Reason for the hold
      #
      # @param user_defined_id [String] User-provided identifier for the hold
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Hold]
      #
      # @see Lithic::Models::HoldCreateParams
      def create(financial_account_token, params)
        parsed, options = Lithic::HoldCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/financial_accounts/%1$s/holds", financial_account_token],
          body: parsed,
          model: Lithic::Hold,
          options: options
        )
      end

      # Get hold by token.
      #
      # @overload retrieve(hold_token, request_options: {})
      #
      # @param hold_token [String] Globally unique identifier for the hold.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Hold]
      #
      # @see Lithic::Models::HoldRetrieveParams
      def retrieve(hold_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/holds/%1$s", hold_token],
          model: Lithic::Hold,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::HoldListParams} for more details.
      #
      # List holds for a financial account.
      #
      # @overload list(financial_account_token, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, status: nil, request_options: {})
      #
      # @param financial_account_token [String] Globally unique identifier for the financial account.
      #
      # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param status [Symbol, Lithic::Models::HoldListParams::Status] Hold status to filter by.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::Hold>]
      #
      # @see Lithic::Models::HoldListParams
      def list(financial_account_token, params = {})
        parsed, options = Lithic::HoldListParams.dump_request(params)
        query = Lithic::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["v1/financial_accounts/%1$s/holds", financial_account_token],
          query: query.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::Hold,
          options: options
        )
      end

      # Void an active hold. This returns the held funds from pending back to available
      # balance. Only holds in PENDING status can be voided.
      #
      # @overload void(hold_token, memo: nil, request_options: {})
      #
      # @param hold_token [String] Globally unique identifier for the hold.
      #
      # @param memo [String, nil] Reason for voiding the hold
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Hold]
      #
      # @see Lithic::Models::HoldVoidParams
      def void(hold_token, params = {})
        parsed, options = Lithic::HoldVoidParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/holds/%1$s/void", hold_token],
          body: parsed,
          model: Lithic::Hold,
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
