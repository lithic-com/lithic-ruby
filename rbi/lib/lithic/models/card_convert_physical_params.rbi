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
      sig { returns(T.nilable(Symbol)) }
      def shipping_method
      end

      sig { params(_: Symbol).returns(Symbol) }
      def shipping_method=(_)
      end

      sig do
        params(
          shipping_address: Lithic::Models::ShippingAddress,
          carrier: Lithic::Models::Carrier,
          product_id: String,
          shipping_method: Symbol,
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
              shipping_method: Symbol,
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
      class ShippingMethod < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        NUMBER_2_DAY = :"2-DAY"
        EXPEDITED = :EXPEDITED
        EXPRESS = :EXPRESS
        PRIORITY = :PRIORITY
        STANDARD = :STANDARD
        STANDARD_WITH_TRACKING = :STANDARD_WITH_TRACKING
      end
    end
  end
end
