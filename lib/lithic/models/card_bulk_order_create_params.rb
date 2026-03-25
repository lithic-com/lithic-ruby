# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::CardBulkOrders#create
    class CardBulkOrderCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute customer_product_id
      #   Customer-specified product configuration for physical card manufacturing. This
      #   must be configured with Lithic before use
      #
      #   @return [String]
      required :customer_product_id, String

      # @!attribute shipping_address
      #   Shipping address for all cards in this bulk order
      #
      #   @return [Object]
      required :shipping_address, Lithic::Internal::Type::Unknown

      # @!attribute shipping_method
      #   Shipping method for all cards in this bulk order. BULK_PRIORITY, BULK_2_DAY, and
      #   BULK_EXPRESS are only available with Perfect Plastic Printing
      #
      #   @return [Symbol, Lithic::Models::CardBulkOrderCreateParams::ShippingMethod]
      required :shipping_method, enum: -> { Lithic::CardBulkOrderCreateParams::ShippingMethod }

      # @!method initialize(customer_product_id:, shipping_address:, shipping_method:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardBulkOrderCreateParams} for more details.
      #
      #   @param customer_product_id [String] Customer-specified product configuration for physical card manufacturing. This m
      #
      #   @param shipping_address [Object] Shipping address for all cards in this bulk order
      #
      #   @param shipping_method [Symbol, Lithic::Models::CardBulkOrderCreateParams::ShippingMethod] Shipping method for all cards in this bulk order. BULK_PRIORITY, BULK_2_DAY, and
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Shipping method for all cards in this bulk order. BULK_PRIORITY, BULK_2_DAY, and
      # BULK_EXPRESS are only available with Perfect Plastic Printing
      module ShippingMethod
        extend Lithic::Internal::Type::Enum

        BULK_EXPEDITED = :BULK_EXPEDITED
        BULK_PRIORITY = :BULK_PRIORITY
        BULK_2_DAY = :BULK_2_DAY
        BULK_EXPRESS = :BULK_EXPRESS

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
