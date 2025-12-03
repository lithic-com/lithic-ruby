# typed: strong

module Lithic
  module Models
    class CardBulkOrder < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Lithic::CardBulkOrder, Lithic::Internal::AnyHash) }

      # Globally unique identifier for the bulk order
      sig { returns(String) }
      attr_accessor :token

      # List of card tokens associated with this bulk order
      sig { returns(T::Array[String]) }
      attr_accessor :card_tokens

      # An RFC 3339 timestamp for when the bulk order was created. UTC time zone
      sig { returns(Time) }
      attr_accessor :created

      # Customer-specified product configuration for physical card manufacturing. This
      # must be configured with Lithic before use
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_product_id

      # Shipping address for all cards in this bulk order
      sig { returns(T.anything) }
      attr_accessor :shipping_address

      # Shipping method for all cards in this bulk order
      sig { returns(Lithic::CardBulkOrder::ShippingMethod::TaggedSymbol) }
      attr_accessor :shipping_method

      # Status of the bulk order. OPEN indicates the order is accepting cards. LOCKED
      # indicates the order is finalized and no more cards can be added
      sig { returns(Lithic::CardBulkOrder::Status::TaggedSymbol) }
      attr_accessor :status

      # An RFC 3339 timestamp for when the bulk order was last updated. UTC time zone
      sig { returns(Time) }
      attr_accessor :updated

      # Represents a bulk order for physical card shipments
      sig do
        params(
          token: String,
          card_tokens: T::Array[String],
          created: Time,
          customer_product_id: T.nilable(String),
          shipping_address: T.anything,
          shipping_method: Lithic::CardBulkOrder::ShippingMethod::OrSymbol,
          status: Lithic::CardBulkOrder::Status::OrSymbol,
          updated: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier for the bulk order
        token:,
        # List of card tokens associated with this bulk order
        card_tokens:,
        # An RFC 3339 timestamp for when the bulk order was created. UTC time zone
        created:,
        # Customer-specified product configuration for physical card manufacturing. This
        # must be configured with Lithic before use
        customer_product_id:,
        # Shipping address for all cards in this bulk order
        shipping_address:,
        # Shipping method for all cards in this bulk order
        shipping_method:,
        # Status of the bulk order. OPEN indicates the order is accepting cards. LOCKED
        # indicates the order is finalized and no more cards can be added
        status:,
        # An RFC 3339 timestamp for when the bulk order was last updated. UTC time zone
        updated:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            card_tokens: T::Array[String],
            created: Time,
            customer_product_id: T.nilable(String),
            shipping_address: T.anything,
            shipping_method:
              Lithic::CardBulkOrder::ShippingMethod::TaggedSymbol,
            status: Lithic::CardBulkOrder::Status::TaggedSymbol,
            updated: Time
          }
        )
      end
      def to_hash
      end

      # Shipping method for all cards in this bulk order
      module ShippingMethod
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::CardBulkOrder::ShippingMethod) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BULK_EXPEDITED =
          T.let(
            :BULK_EXPEDITED,
            Lithic::CardBulkOrder::ShippingMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::CardBulkOrder::ShippingMethod::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Status of the bulk order. OPEN indicates the order is accepting cards. LOCKED
      # indicates the order is finalized and no more cards can be added
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::CardBulkOrder::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN = T.let(:OPEN, Lithic::CardBulkOrder::Status::TaggedSymbol)
        LOCKED = T.let(:LOCKED, Lithic::CardBulkOrder::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::CardBulkOrder::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
