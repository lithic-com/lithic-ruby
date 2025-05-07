# typed: strong

module Lithic
  module Models
    class CardConvertPhysicalParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # The shipping address this card will be sent to.
      sig { returns(Lithic::ShippingAddress) }
      attr_reader :shipping_address

      sig { params(shipping_address: Lithic::ShippingAddress::OrHash).void }
      attr_writer :shipping_address

      # If omitted, the previous carrier will be used.
      sig { returns(T.nilable(Lithic::Carrier)) }
      attr_reader :carrier

      sig { params(carrier: Lithic::Carrier::OrHash).void }
      attr_writer :carrier

      # Specifies the configuration (e.g. physical card art) that the card should be
      # manufactured with, and only applies to cards of type `PHYSICAL`. This must be
      # configured with Lithic before use.
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      # Shipping method for the card. Only applies to cards of type PHYSICAL. Use of
      # options besides `STANDARD` require additional permissions.
      #
      # - `STANDARD` - USPS regular mail or similar international option, with no
      #   tracking
      # - `STANDARD_WITH_TRACKING` - USPS regular mail or similar international option,
      #   with tracking
      # - `PRIORITY` - USPS Priority, 1-3 day shipping, with tracking
      # - `EXPRESS` - FedEx Express, 3-day shipping, with tracking
      # - `2_DAY` - FedEx 2-day shipping, with tracking
      # - `EXPEDITED` - FedEx Standard Overnight or similar international option, with
      #   tracking
      sig do
        returns(
          T.nilable(Lithic::CardConvertPhysicalParams::ShippingMethod::OrSymbol)
        )
      end
      attr_reader :shipping_method

      sig do
        params(
          shipping_method:
            Lithic::CardConvertPhysicalParams::ShippingMethod::OrSymbol
        ).void
      end
      attr_writer :shipping_method

      sig do
        params(
          shipping_address: Lithic::ShippingAddress::OrHash,
          carrier: Lithic::Carrier::OrHash,
          product_id: String,
          shipping_method:
            Lithic::CardConvertPhysicalParams::ShippingMethod::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The shipping address this card will be sent to.
        shipping_address:,
        # If omitted, the previous carrier will be used.
        carrier: nil,
        # Specifies the configuration (e.g. physical card art) that the card should be
        # manufactured with, and only applies to cards of type `PHYSICAL`. This must be
        # configured with Lithic before use.
        product_id: nil,
        # Shipping method for the card. Only applies to cards of type PHYSICAL. Use of
        # options besides `STANDARD` require additional permissions.
        #
        # - `STANDARD` - USPS regular mail or similar international option, with no
        #   tracking
        # - `STANDARD_WITH_TRACKING` - USPS regular mail or similar international option,
        #   with tracking
        # - `PRIORITY` - USPS Priority, 1-3 day shipping, with tracking
        # - `EXPRESS` - FedEx Express, 3-day shipping, with tracking
        # - `2_DAY` - FedEx 2-day shipping, with tracking
        # - `EXPEDITED` - FedEx Standard Overnight or similar international option, with
        #   tracking
        shipping_method: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            shipping_address: Lithic::ShippingAddress,
            carrier: Lithic::Carrier,
            product_id: String,
            shipping_method:
              Lithic::CardConvertPhysicalParams::ShippingMethod::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Shipping method for the card. Only applies to cards of type PHYSICAL. Use of
      # options besides `STANDARD` require additional permissions.
      #
      # - `STANDARD` - USPS regular mail or similar international option, with no
      #   tracking
      # - `STANDARD_WITH_TRACKING` - USPS regular mail or similar international option,
      #   with tracking
      # - `PRIORITY` - USPS Priority, 1-3 day shipping, with tracking
      # - `EXPRESS` - FedEx Express, 3-day shipping, with tracking
      # - `2_DAY` - FedEx 2-day shipping, with tracking
      # - `EXPEDITED` - FedEx Standard Overnight or similar international option, with
      #   tracking
      module ShippingMethod
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardConvertPhysicalParams::ShippingMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SHIPPING_METHOD_2_DAY =
          T.let(
            :"2_DAY",
            Lithic::CardConvertPhysicalParams::ShippingMethod::TaggedSymbol
          )
        EXPEDITED =
          T.let(
            :EXPEDITED,
            Lithic::CardConvertPhysicalParams::ShippingMethod::TaggedSymbol
          )
        EXPRESS =
          T.let(
            :EXPRESS,
            Lithic::CardConvertPhysicalParams::ShippingMethod::TaggedSymbol
          )
        PRIORITY =
          T.let(
            :PRIORITY,
            Lithic::CardConvertPhysicalParams::ShippingMethod::TaggedSymbol
          )
        STANDARD =
          T.let(
            :STANDARD,
            Lithic::CardConvertPhysicalParams::ShippingMethod::TaggedSymbol
          )
        STANDARD_WITH_TRACKING =
          T.let(
            :STANDARD_WITH_TRACKING,
            Lithic::CardConvertPhysicalParams::ShippingMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::CardConvertPhysicalParams::ShippingMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
