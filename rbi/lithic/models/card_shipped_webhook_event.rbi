# typed: strong

module Lithic
  module Models
    class CardShippedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::CardShippedWebhookEvent, Lithic::Internal::AnyHash)
        end

      # The token of the bulk order associated with this card shipment, if applicable.
      sig { returns(T.nilable(String)) }
      attr_accessor :bulk_order_token

      # The token of the card that was shipped.
      sig { returns(String) }
      attr_accessor :card_token

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # The specific shipping method used to ship the card.
      sig do
        returns(Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol)
      end
      attr_accessor :shipping_method

      # The tracking number of the shipment.
      sig { returns(T.nilable(String)) }
      attr_accessor :tracking_number

      sig do
        params(
          bulk_order_token: T.nilable(String),
          card_token: String,
          shipping_method:
            Lithic::CardShippedWebhookEvent::ShippingMethod::OrSymbol,
          tracking_number: T.nilable(String),
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The token of the bulk order associated with this card shipment, if applicable.
        bulk_order_token:,
        # The token of the card that was shipped.
        card_token:,
        # The specific shipping method used to ship the card.
        shipping_method:,
        # The tracking number of the shipment.
        tracking_number:,
        # The type of event that occurred.
        event_type: :"card.shipped"
      )
      end

      sig do
        override.returns(
          {
            bulk_order_token: T.nilable(String),
            card_token: String,
            event_type: Symbol,
            shipping_method:
              Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol,
            tracking_number: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The specific shipping method used to ship the card.
      module ShippingMethod
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardShippedWebhookEvent::ShippingMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EX_US_EXPEDITED_WITH_TRACKING =
          T.let(
            :"Ex-US expedited with tracking",
            Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol
          )
        EX_US_STANDARD_WITH_TRACKING =
          T.let(
            :"Ex-US standard with tracking",
            Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol
          )
        EX_US_STANDARD_WITHOUT_TRACKING =
          T.let(
            :"Ex-US standard without tracking",
            Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol
          )
        FED_EX_2_DAYS =
          T.let(
            :"FedEx 2 days",
            Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol
          )
        FED_EX_EXPRESS =
          T.let(
            :"FedEx express",
            Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol
          )
        FED_EX_OVERNIGHT =
          T.let(
            :"FedEx overnight",
            Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol
          )
        USPS_PRIORITY =
          T.let(
            :"USPS priority",
            Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol
          )
        USPS_WITH_TRACKING =
          T.let(
            :"USPS with tracking",
            Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol
          )
        USPS_WITHOUT_TRACKING_ENVELOPE =
          T.let(
            :"USPS without tracking envelope",
            Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol
          )
        USPS_WITHOUT_TRACKING_ENVELOPE_NON_MACHINE =
          T.let(
            :"USPS without tracking envelope non-machine",
            Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol
          )
        USPS_WITHOUT_TRACKING_FLAT =
          T.let(
            :"USPS without tracking flat",
            Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardShippedWebhookEvent::ShippingMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
