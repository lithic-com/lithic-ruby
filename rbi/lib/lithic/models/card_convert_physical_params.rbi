# typed: strong

module Lithic
  module Models
    class CardConvertPhysicalParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The shipping address this card will be sent to.
      sig { returns(Lithic::Models::ShippingAddress) }
      def shipping_address
      end

      sig { params(_: Lithic::Models::ShippingAddress).returns(Lithic::Models::ShippingAddress) }
      def shipping_address=(_)
      end

      # If omitted, the previous carrier will be used.
      sig { returns(T.nilable(Lithic::Models::Carrier)) }
      def carrier
      end

      sig { params(_: Lithic::Models::Carrier).returns(Lithic::Models::Carrier) }
      def carrier=(_)
      end

      # Specifies the configuration (e.g. physical card art) that the card should be
      #   manufactured with, and only applies to cards of type `PHYSICAL`. This must be
      #   configured with Lithic before use.
      sig { returns(T.nilable(String)) }
      def product_id
      end

      sig { params(_: String).returns(String) }
      def product_id=(_)
      end

      # Shipping method for the card. Use of options besides `STANDARD` require
      #   additional permissions.
      #
      #   - `STANDARD` - USPS regular mail or similar international option, with no
      #     tracking
      #   - `STANDARD_WITH_TRACKING` - USPS regular mail or similar international option,
      #     with tracking
      #   - `PRIORITY` - USPS Priority, 1-3 day shipping, with tracking
      #   - `EXPRESS` - FedEx Express, 3-day shipping, with tracking
      #   - `2_DAY` - FedEx 2-day shipping, with tracking
      #   - `EXPEDITED` - FedEx Standard Overnight or similar international option, with
      #     tracking
      sig { returns(T.nilable(Lithic::Models::CardConvertPhysicalParams::ShippingMethod::OrSymbol)) }
      def shipping_method
      end

      sig do
        params(_: Lithic::Models::CardConvertPhysicalParams::ShippingMethod::OrSymbol)
          .returns(Lithic::Models::CardConvertPhysicalParams::ShippingMethod::OrSymbol)
      end
      def shipping_method=(_)
      end

      sig do
        params(
          shipping_address: Lithic::Models::ShippingAddress,
          carrier: Lithic::Models::Carrier,
          product_id: String,
          shipping_method: Lithic::Models::CardConvertPhysicalParams::ShippingMethod::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(shipping_address:, carrier: nil, product_id: nil, shipping_method: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              shipping_address: Lithic::Models::ShippingAddress,
              carrier: Lithic::Models::Carrier,
              product_id: String,
              shipping_method: Lithic::Models::CardConvertPhysicalParams::ShippingMethod::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Shipping method for the card. Use of options besides `STANDARD` require
      #   additional permissions.
      #
      #   - `STANDARD` - USPS regular mail or similar international option, with no
      #     tracking
      #   - `STANDARD_WITH_TRACKING` - USPS regular mail or similar international option,
      #     with tracking
      #   - `PRIORITY` - USPS Priority, 1-3 day shipping, with tracking
      #   - `EXPRESS` - FedEx Express, 3-day shipping, with tracking
      #   - `2_DAY` - FedEx 2-day shipping, with tracking
      #   - `EXPEDITED` - FedEx Standard Overnight or similar international option, with
      #     tracking
      module ShippingMethod
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardConvertPhysicalParams::ShippingMethod) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::CardConvertPhysicalParams::ShippingMethod::TaggedSymbol) }

        NUMBER_2_DAY = T.let(:"2-DAY", Lithic::Models::CardConvertPhysicalParams::ShippingMethod::OrSymbol)
        EXPEDITED = T.let(:EXPEDITED, Lithic::Models::CardConvertPhysicalParams::ShippingMethod::OrSymbol)
        EXPRESS = T.let(:EXPRESS, Lithic::Models::CardConvertPhysicalParams::ShippingMethod::OrSymbol)
        PRIORITY = T.let(:PRIORITY, Lithic::Models::CardConvertPhysicalParams::ShippingMethod::OrSymbol)
        STANDARD = T.let(:STANDARD, Lithic::Models::CardConvertPhysicalParams::ShippingMethod::OrSymbol)
        STANDARD_WITH_TRACKING =
          T.let(:STANDARD_WITH_TRACKING, Lithic::Models::CardConvertPhysicalParams::ShippingMethod::OrSymbol)
      end
    end
  end
end
