# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#reissue
    class CardReissueParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute carrier
      #   If omitted, the previous carrier will be used.
      #
      #   @return [Lithic::Carrier, nil]
      optional :carrier, -> { Lithic::Carrier }

      # @!attribute product_id
      #   Specifies the configuration (e.g. physical card art) that the card should be
      #   manufactured with, and only applies to cards of type `PHYSICAL`. This must be
      #   configured with Lithic before use.
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!attribute shipping_address
      #   If omitted, the previous shipping address will be used.
      #
      #   @return [Lithic::ShippingAddress, nil]
      optional :shipping_address, -> { Lithic::ShippingAddress }

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
      #   @return [Symbol, Lithic::CardReissueParams::ShippingMethod, nil]
      optional :shipping_method, enum: -> { Lithic::CardReissueParams::ShippingMethod }

      # @!method initialize(carrier: nil, product_id: nil, shipping_address: nil, shipping_method: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardReissueParams} for more details.
      #
      #   @param carrier [Lithic::Carrier] If omitted, the previous carrier will be used.
      #
      #   @param product_id [String] Specifies the configuration (e.g. physical card art) that the card should be man
      #
      #   @param shipping_address [Lithic::ShippingAddress] If omitted, the previous shipping address will be used.
      #
      #   @param shipping_method [Symbol, Lithic::CardReissueParams::ShippingMethod] Shipping method for the card. Only applies to cards of type PHYSICAL.
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
