# typed: strong

module Lithic
  module Models
    class CardReissueParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # If omitted, the previous carrier will be used.
      sig { returns(T.nilable(Lithic::Models::Carrier)) }
      attr_reader :carrier

      sig { params(carrier: T.any(Lithic::Models::Carrier, Lithic::Internal::AnyHash)).void }
      attr_writer :carrier

      # Specifies the configuration (e.g. physical card art) that the card should be
      # manufactured with, and only applies to cards of type `PHYSICAL`. This must be
      # configured with Lithic before use.
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      # If omitted, the previous shipping address will be used.
      sig { returns(T.nilable(Lithic::Models::ShippingAddress)) }
      attr_reader :shipping_address

      sig { params(shipping_address: T.any(Lithic::Models::ShippingAddress, Lithic::Internal::AnyHash)).void }
      attr_writer :shipping_address

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
      sig { returns(T.nilable(Lithic::Models::CardReissueParams::ShippingMethod::OrSymbol)) }
      attr_reader :shipping_method

      sig { params(shipping_method: Lithic::Models::CardReissueParams::ShippingMethod::OrSymbol).void }
      attr_writer :shipping_method

      sig do
        params(
          carrier: T.any(Lithic::Models::Carrier, Lithic::Internal::AnyHash),
          product_id: String,
          shipping_address: T.any(Lithic::Models::ShippingAddress, Lithic::Internal::AnyHash),
          shipping_method: Lithic::Models::CardReissueParams::ShippingMethod::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # If omitted, the previous carrier will be used.
        carrier: nil,
        # Specifies the configuration (e.g. physical card art) that the card should be
        # manufactured with, and only applies to cards of type `PHYSICAL`. This must be
        # configured with Lithic before use.
        product_id: nil,
        # If omitted, the previous shipping address will be used.
        shipping_address: nil,
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
      ); end
      sig do
        override
          .returns(
            {
              carrier: Lithic::Models::Carrier,
              product_id: String,
              shipping_address: Lithic::Models::ShippingAddress,
              shipping_method: Lithic::Models::CardReissueParams::ShippingMethod::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash; end

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

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardReissueParams::ShippingMethod) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SHIPPING_METHOD_2_DAY = T.let(:"2_DAY", Lithic::Models::CardReissueParams::ShippingMethod::TaggedSymbol)
        EXPEDITED = T.let(:EXPEDITED, Lithic::Models::CardReissueParams::ShippingMethod::TaggedSymbol)
        EXPRESS = T.let(:EXPRESS, Lithic::Models::CardReissueParams::ShippingMethod::TaggedSymbol)
        PRIORITY = T.let(:PRIORITY, Lithic::Models::CardReissueParams::ShippingMethod::TaggedSymbol)
        STANDARD = T.let(:STANDARD, Lithic::Models::CardReissueParams::ShippingMethod::TaggedSymbol)
        STANDARD_WITH_TRACKING =
          T.let(:STANDARD_WITH_TRACKING, Lithic::Models::CardReissueParams::ShippingMethod::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::CardReissueParams::ShippingMethod::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
