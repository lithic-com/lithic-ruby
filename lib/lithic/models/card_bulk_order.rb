# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::CardBulkOrders#create
    class CardBulkOrder < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier for the bulk order
      #
      #   @return [String]
      required :token, String

      # @!attribute card_tokens
      #   List of card tokens associated with this bulk order
      #
      #   @return [Array<String>]
      required :card_tokens, Lithic::Internal::Type::ArrayOf[String]

      # @!attribute created
      #   An RFC 3339 timestamp for when the bulk order was created. UTC time zone
      #
      #   @return [Time]
      required :created, Time

      # @!attribute customer_product_id
      #   Customer-specified product configuration for physical card manufacturing. This
      #   must be configured with Lithic before use
      #
      #   @return [String, nil]
      required :customer_product_id, String, nil?: true

      # @!attribute shipping_address
      #   Shipping address for all cards in this bulk order
      #
      #   @return [Object]
      required :shipping_address, Lithic::Internal::Type::Unknown

      # @!attribute shipping_method
      #   Shipping method for all cards in this bulk order
      #
      #   @return [Symbol, Lithic::Models::CardBulkOrder::ShippingMethod]
      required :shipping_method, enum: -> { Lithic::CardBulkOrder::ShippingMethod }

      # @!attribute status
      #   Status of the bulk order. OPEN indicates the order is accepting cards. LOCKED
      #   indicates the order is finalized and no more cards can be added
      #
      #   @return [Symbol, Lithic::Models::CardBulkOrder::Status]
      required :status, enum: -> { Lithic::CardBulkOrder::Status }

      # @!attribute updated
      #   An RFC 3339 timestamp for when the bulk order was last updated. UTC time zone
      #
      #   @return [Time]
      required :updated, Time

      # @!method initialize(token:, card_tokens:, created:, customer_product_id:, shipping_address:, shipping_method:, status:, updated:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardBulkOrder} for more details.
      #
      #   Represents a bulk order for physical card shipments
      #
      #   @param token [String] Globally unique identifier for the bulk order
      #
      #   @param card_tokens [Array<String>] List of card tokens associated with this bulk order
      #
      #   @param created [Time] An RFC 3339 timestamp for when the bulk order was created. UTC time zone
      #
      #   @param customer_product_id [String, nil] Customer-specified product configuration for physical card manufacturing. This m
      #
      #   @param shipping_address [Object] Shipping address for all cards in this bulk order
      #
      #   @param shipping_method [Symbol, Lithic::Models::CardBulkOrder::ShippingMethod] Shipping method for all cards in this bulk order
      #
      #   @param status [Symbol, Lithic::Models::CardBulkOrder::Status] Status of the bulk order. OPEN indicates the order is accepting cards. LOCKED in
      #
      #   @param updated [Time] An RFC 3339 timestamp for when the bulk order was last updated. UTC time zone

      # Shipping method for all cards in this bulk order
      #
      # @see Lithic::Models::CardBulkOrder#shipping_method
      module ShippingMethod
        extend Lithic::Internal::Type::Enum

        BULK_EXPEDITED = :BULK_EXPEDITED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of the bulk order. OPEN indicates the order is accepting cards. LOCKED
      # indicates the order is finalized and no more cards can be added
      #
      # @see Lithic::Models::CardBulkOrder#status
      module Status
        extend Lithic::Internal::Type::Enum

        OPEN = :OPEN
        LOCKED = :LOCKED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
