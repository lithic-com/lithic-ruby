# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#renew
    class CardRenewParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute shipping_address
      #   The shipping address this card will be sent to.
      #
      #   @return [Lithic::Models::ShippingAddress]
      required :shipping_address, -> { Lithic::ShippingAddress }

      # @!attribute carrier
      #   If omitted, the previous carrier will be used.
      #
      #   @return [Lithic::Models::Carrier, nil]
      optional :carrier, -> { Lithic::Carrier }

      # @!attribute exp_month
      #   Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` is provided,
      #   an expiration date six years in the future will be generated.
      #
      #   @return [String, nil]
      optional :exp_month, String

      # @!attribute exp_year
      #   Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year` is
      #   provided, an expiration date six years in the future will be generated.
      #
      #   @return [String, nil]
      optional :exp_year, String

      # @!attribute product_id
      #   Specifies the configuration (e.g. physical card art) that the card should be
      #   manufactured with, and only applies to cards of type `PHYSICAL`. This must be
      #   configured with Lithic before use.
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!attribute shipping_method
      #   Shipping method for the card. Only applies to cards of type PHYSICAL. Use of
      #   options besides `STANDARD` require additional permissions.
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
      #
      #   @return [Symbol, Lithic::Models::CardRenewParams::ShippingMethod, nil]
      optional :shipping_method, enum: -> { Lithic::CardRenewParams::ShippingMethod }

      # @!method initialize(shipping_address:, carrier: nil, exp_month: nil, exp_year: nil, product_id: nil, shipping_method: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardRenewParams} for more details.
      #
      #   @param shipping_address [Lithic::Models::ShippingAddress] The shipping address this card will be sent to.
      #
      #   @param carrier [Lithic::Models::Carrier] If omitted, the previous carrier will be used.
      #
      #   @param exp_month [String] Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` is provided,
      #
      #   @param exp_year [String] Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year` is provided
      #
      #   @param product_id [String] Specifies the configuration (e.g. physical card art) that the card should be man
      #
      #   @param shipping_method [Symbol, Lithic::Models::CardRenewParams::ShippingMethod] Shipping method for the card. Only applies to cards of type PHYSICAL.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

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

        SHIPPING_METHOD_2_DAY = :"2_DAY"
        EXPEDITED = :EXPEDITED
        EXPRESS = :EXPRESS
        PRIORITY = :PRIORITY
        STANDARD = :STANDARD
        STANDARD_WITH_TRACKING = :STANDARD_WITH_TRACKING

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
