# frozen_string_literal: true

module Lithic
  module Resources
    class CardBulkOrders
      # Some parameter documentations has been truncated, see
      # {Lithic::Models::CardBulkOrderCreateParams} for more details.
      #
      # Create a new bulk order for physical card shipments **[BETA]**. Cards can be
      # added to the order via the POST /v1/cards endpoint by specifying the
      # bulk_order_token. Lock the order via PATCH
      # /v1/card_bulk_orders/{bulk_order_token} to prepare for shipment. Please work
      # with your Customer Success Manager and card personalization bureau to ensure
      # bulk shipping is supported for your program.
      #
      # @overload create(customer_product_id:, shipping_address:, shipping_method:, request_options: {})
      #
      # @param customer_product_id [String] Customer-specified product configuration for physical card manufacturing. This m
      #
      # @param shipping_address [Object] Shipping address for all cards in this bulk order
      #
      # @param shipping_method [Symbol, Lithic::Models::CardBulkOrderCreateParams::ShippingMethod] Shipping method for all cards in this bulk order
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardBulkOrder]
      #
      # @see Lithic::Models::CardBulkOrderCreateParams
      def create(params)
        parsed, options = Lithic::CardBulkOrderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/card_bulk_orders",
          body: parsed,
          model: Lithic::CardBulkOrder,
          options: options
        )
      end

      # Retrieve a specific bulk order by token **[BETA]**
      #
      # @overload retrieve(bulk_order_token, request_options: {})
      #
      # @param bulk_order_token [String] Globally unique identifier for the bulk order
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardBulkOrder]
      #
      # @see Lithic::Models::CardBulkOrderRetrieveParams
      def retrieve(bulk_order_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/card_bulk_orders/%1$s", bulk_order_token],
          model: Lithic::CardBulkOrder,
          options: params[:request_options]
        )
      end

      # Update a bulk order **[BETA]**. Primarily used to lock the order, preventing
      # additional cards from being added
      #
      # @overload update(bulk_order_token, status:, request_options: {})
      #
      # @param bulk_order_token [String] Globally unique identifier for the bulk order
      #
      # @param status [Symbol, Lithic::Models::CardBulkOrderUpdateParams::Status] Status to update the bulk order to. Use LOCKED to finalize the order
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::CardBulkOrder]
      #
      # @see Lithic::Models::CardBulkOrderUpdateParams
      def update(bulk_order_token, params)
        parsed, options = Lithic::CardBulkOrderUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/card_bulk_orders/%1$s", bulk_order_token],
          body: parsed,
          model: Lithic::CardBulkOrder,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::CardBulkOrderListParams} for more details.
      #
      # List bulk orders for physical card shipments **[BETA]**
      #
      # @overload list(begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
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
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::CardBulkOrder>]
      #
      # @see Lithic::Models::CardBulkOrderListParams
      def list(params = {})
        parsed, options = Lithic::CardBulkOrderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/card_bulk_orders",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::CardBulkOrder,
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
