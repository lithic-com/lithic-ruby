# typed: strong

module Lithic
  module Models
    class CardRenewParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::CardRenewParams, Lithic::Internal::AnyHash)
        end

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

      # Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` is provided,
      # an expiration date six years in the future will be generated.
      sig { returns(T.nilable(String)) }
      attr_reader :exp_month

      sig { params(exp_month: String).void }
      attr_writer :exp_month

      # Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year` is
      # provided, an expiration date six years in the future will be generated.
      sig { returns(T.nilable(String)) }
      attr_reader :exp_year

      sig { params(exp_year: String).void }
      attr_writer :exp_year

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
      # - `EXPRESS` - FedEx or UPS depending on card manufacturer, Express, 3-day
      #   shipping, with tracking
      # - `2_DAY` - FedEx or UPS depending on card manufacturer, 2-day shipping, with
      #   tracking
      # - `EXPEDITED` - FedEx or UPS depending on card manufacturer, Standard Overnight
      #   or similar international option, with tracking
      # - `BULK_EXPEDITED` - Bulk shipment with Expedited shipping
      sig do
        returns(T.nilable(Lithic::CardRenewParams::ShippingMethod::OrSymbol))
      end
      attr_reader :shipping_method

      sig do
        params(
          shipping_method: Lithic::CardRenewParams::ShippingMethod::OrSymbol
        ).void
      end
      attr_writer :shipping_method

      sig do
        params(
          shipping_address: Lithic::ShippingAddress::OrHash,
          carrier: Lithic::Carrier::OrHash,
          exp_month: String,
          exp_year: String,
          product_id: String,
          shipping_method: Lithic::CardRenewParams::ShippingMethod::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The shipping address this card will be sent to.
        shipping_address:,
        # If omitted, the previous carrier will be used.
        carrier: nil,
        # Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` is provided,
        # an expiration date six years in the future will be generated.
        exp_month: nil,
        # Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year` is
        # provided, an expiration date six years in the future will be generated.
        exp_year: nil,
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
        # - `EXPRESS` - FedEx or UPS depending on card manufacturer, Express, 3-day
        #   shipping, with tracking
        # - `2_DAY` - FedEx or UPS depending on card manufacturer, 2-day shipping, with
        #   tracking
        # - `EXPEDITED` - FedEx or UPS depending on card manufacturer, Standard Overnight
        #   or similar international option, with tracking
        # - `BULK_EXPEDITED` - Bulk shipment with Expedited shipping
        shipping_method: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            shipping_address: Lithic::ShippingAddress,
            carrier: Lithic::Carrier,
            exp_month: String,
            exp_year: String,
            product_id: String,
            shipping_method: Lithic::CardRenewParams::ShippingMethod::OrSymbol,
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
      # - `EXPRESS` - FedEx or UPS depending on card manufacturer, Express, 3-day
      #   shipping, with tracking
      # - `2_DAY` - FedEx or UPS depending on card manufacturer, 2-day shipping, with
      #   tracking
      # - `EXPEDITED` - FedEx or UPS depending on card manufacturer, Standard Overnight
      #   or similar international option, with tracking
      # - `BULK_EXPEDITED` - Bulk shipment with Expedited shipping
      module ShippingMethod
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::CardRenewParams::ShippingMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SHIPPING_METHOD_2_DAY =
          T.let(:"2_DAY", Lithic::CardRenewParams::ShippingMethod::TaggedSymbol)
        BULK_EXPEDITED =
          T.let(
            :BULK_EXPEDITED,
            Lithic::CardRenewParams::ShippingMethod::TaggedSymbol
          )
        EXPEDITED =
          T.let(
            :EXPEDITED,
            Lithic::CardRenewParams::ShippingMethod::TaggedSymbol
          )
        EXPRESS =
          T.let(:EXPRESS, Lithic::CardRenewParams::ShippingMethod::TaggedSymbol)
        PRIORITY =
          T.let(
            :PRIORITY,
            Lithic::CardRenewParams::ShippingMethod::TaggedSymbol
          )
        STANDARD =
          T.let(
            :STANDARD,
            Lithic::CardRenewParams::ShippingMethod::TaggedSymbol
          )
        STANDARD_WITH_TRACKING =
          T.let(
            :STANDARD_WITH_TRACKING,
            Lithic::CardRenewParams::ShippingMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::CardRenewParams::ShippingMethod::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
