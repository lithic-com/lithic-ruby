# typed: strong

module Lithic
  module Models
    class CardBulkOrderCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::CardBulkOrderCreateParams, Lithic::Internal::AnyHash)
        end

      # Customer-specified product configuration for physical card manufacturing. This
      # must be configured with Lithic before use
      sig { returns(String) }
      attr_accessor :customer_product_id

      # Shipping address for all cards in this bulk order
      sig { returns(T.anything) }
      attr_accessor :shipping_address

      # Shipping method for all cards in this bulk order
      sig do
        returns(Lithic::CardBulkOrderCreateParams::ShippingMethod::OrSymbol)
      end
      attr_accessor :shipping_method

      sig do
        params(
          customer_product_id: String,
          shipping_address: T.anything,
          shipping_method:
            Lithic::CardBulkOrderCreateParams::ShippingMethod::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            customer_product_id: String,
            shipping_address: T.anything,
            shipping_method:
              Lithic::CardBulkOrderCreateParams::ShippingMethod::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Shipping method for all cards in this bulk order
      module ShippingMethod
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardBulkOrderCreateParams::ShippingMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BULK_EXPEDITED =
          T.let(
            :BULK_EXPEDITED,
            Lithic::CardBulkOrderCreateParams::ShippingMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardBulkOrderCreateParams::ShippingMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
