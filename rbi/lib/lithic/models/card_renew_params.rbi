# typed: strong

module Lithic
  module Models
    class CardRenewParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # The shipping address this card will be sent to.
      sig { returns(Lithic::Models::ShippingAddress) }
      attr_reader :shipping_address

      sig { params(shipping_address: T.any(Lithic::Models::ShippingAddress, Lithic::Internal::AnyHash)).void }
      attr_writer :shipping_address

      # If omitted, the previous carrier will be used.
      sig { returns(T.nilable(Lithic::Models::Carrier)) }
      attr_reader :carrier

      sig { params(carrier: T.any(Lithic::Models::Carrier, Lithic::Internal::AnyHash)).void }
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
      # - `EXPRESS` - FedEx Express, 3-day shipping, with tracking
      # - `2_DAY` - FedEx 2-day shipping, with tracking
      # - `EXPEDITED` - FedEx Standard Overnight or similar international option, with
      #   tracking
      sig { returns(T.nilable(Lithic::Models::CardRenewParams::ShippingMethod::OrSymbol)) }
      attr_reader :shipping_method

      sig { params(shipping_method: Lithic::Models::CardRenewParams::ShippingMethod::OrSymbol).void }
      attr_writer :shipping_method

      sig do
        params(
          shipping_address: T.any(Lithic::Models::ShippingAddress, Lithic::Internal::AnyHash),
          carrier: T.any(Lithic::Models::Carrier, Lithic::Internal::AnyHash),
          exp_month: String,
          exp_year: String,
          product_id: String,
          shipping_method: Lithic::Models::CardRenewParams::ShippingMethod::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        shipping_address:,
        carrier: nil,
        exp_month: nil,
        exp_year: nil,
        product_id: nil,
        shipping_method: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              shipping_address: Lithic::Models::ShippingAddress,
              carrier: Lithic::Models::Carrier,
              exp_month: String,
              exp_year: String,
              product_id: String,
              shipping_method: Lithic::Models::CardRenewParams::ShippingMethod::OrSymbol,
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

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::CardRenewParams::ShippingMethod) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SHIPPING_METHOD_2_DAY = T.let(:"2_DAY", Lithic::Models::CardRenewParams::ShippingMethod::TaggedSymbol)
        EXPEDITED = T.let(:EXPEDITED, Lithic::Models::CardRenewParams::ShippingMethod::TaggedSymbol)
        EXPRESS = T.let(:EXPRESS, Lithic::Models::CardRenewParams::ShippingMethod::TaggedSymbol)
        PRIORITY = T.let(:PRIORITY, Lithic::Models::CardRenewParams::ShippingMethod::TaggedSymbol)
        STANDARD = T.let(:STANDARD, Lithic::Models::CardRenewParams::ShippingMethod::TaggedSymbol)
        STANDARD_WITH_TRACKING =
          T.let(:STANDARD_WITH_TRACKING, Lithic::Models::CardRenewParams::ShippingMethod::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::CardRenewParams::ShippingMethod::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
