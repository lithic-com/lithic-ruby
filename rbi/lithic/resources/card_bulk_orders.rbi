# typed: strong

module Lithic
  module Resources
    class CardBulkOrders
      # Create a new bulk order for physical card shipments **[BETA]**. Cards can be
      # added to the order via the POST /v1/cards endpoint by specifying the
      # bulk_order_token. Lock the order via PATCH
      # /v1/card_bulk_orders/{bulk_order_token} to prepare for shipment. Please work
      # with your Customer Success Manager and card personalization bureau to ensure
      # bulk shipping is supported for your program.
      sig do
        params(
          customer_product_id: String,
          shipping_address: T.anything,
          shipping_method:
            Lithic::CardBulkOrderCreateParams::ShippingMethod::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::CardBulkOrder)
      end
      def create(
        # Customer-specified product configuration for physical card manufacturing. This
        # must be configured with Lithic before use
        customer_product_id:,
        # Shipping address for all cards in this bulk order
        shipping_address:,
        # Shipping method for all cards in this bulk order
        shipping_method:,
        request_options: {}
      )
      end

      # Retrieve a specific bulk order by token **[BETA]**
      sig do
        params(
          bulk_order_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::CardBulkOrder)
      end
      def retrieve(
        # Globally unique identifier for the bulk order
        bulk_order_token,
        request_options: {}
      )
      end

      # Update a bulk order **[BETA]**. Primarily used to lock the order, preventing
      # additional cards from being added
      sig do
        params(
          bulk_order_token: String,
          status: Lithic::CardBulkOrderUpdateParams::Status::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::CardBulkOrder)
      end
      def update(
        # Globally unique identifier for the bulk order
        bulk_order_token,
        # Status to update the bulk order to. Use LOCKED to finalize the order
        status:,
        request_options: {}
      )
      end

      # List bulk orders for physical card shipments **[BETA]**
      sig do
        params(
          begin_: Time,
          end_: Time,
          ending_before: String,
          page_size: Integer,
          starting_after: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(Lithic::Internal::CursorPage[Lithic::CardBulkOrder])
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
        # Page size (for pagination).
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
