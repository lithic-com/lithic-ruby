# frozen_string_literal: true

module Lithic
  module Models
    class CardReissueParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] carrier
      #   If omitted, the previous carrier will be used.
      #
      #   @return [Lithic::Models::Carrier, nil]
      optional :carrier, -> { Lithic::Models::Carrier }

      # @!parse
      #   # @return [Lithic::Models::Carrier]
      #   attr_writer :carrier

      # @!attribute [r] product_id
      #   Specifies the configuration (e.g. physical card art) that the card should be
      #     manufactured with, and only applies to cards of type `PHYSICAL`. This must be
      #     configured with Lithic before use.
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :product_id

      # @!attribute [r] shipping_address
      #   If omitted, the previous shipping address will be used.
      #
      #   @return [Lithic::Models::ShippingAddress, nil]
      optional :shipping_address, -> { Lithic::Models::ShippingAddress }

      # @!parse
      #   # @return [Lithic::Models::ShippingAddress]
      #   attr_writer :shipping_address

      # @!attribute [r] shipping_method
      #   Shipping method for the card. Use of options besides `STANDARD` require
      #     additional permissions.
      #
      #     - `STANDARD` - USPS regular mail or similar international option, with no
      #       tracking
      #     - `STANDARD_WITH_TRACKING` - USPS regular mail or similar international option,
      #       with tracking
      #     - `PRIORITY` - USPS Priority, 1-3 day shipping, with tracking
      #     - `EXPRESS` - FedEx Express, 3-day shipping, with tracking
      #     - `2_DAY` - FedEx 2-day shipping, with tracking
      #     - `EXPEDITED` - FedEx Standard Overnight or similar international option, with
      #       tracking
      #
      #   @return [Symbol, Lithic::Models::CardReissueParams::ShippingMethod, nil]
      optional :shipping_method, enum: -> { Lithic::Models::CardReissueParams::ShippingMethod }

      # @!parse
      #   # @return [Symbol, Lithic::Models::CardReissueParams::ShippingMethod]
      #   attr_writer :shipping_method

      # @!parse
      #   # @param carrier [Lithic::Models::Carrier]
      #   # @param product_id [String]
      #   # @param shipping_address [Lithic::Models::ShippingAddress]
      #   # @param shipping_method [Symbol, Lithic::Models::CardReissueParams::ShippingMethod]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(carrier: nil, product_id: nil, shipping_address: nil, shipping_method: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

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

        NUMBER_2_DAY = :"2-DAY"
        EXPEDITED = :EXPEDITED
        EXPRESS = :EXPRESS
        PRIORITY = :PRIORITY
        STANDARD = :STANDARD
        STANDARD_WITH_TRACKING = :STANDARD_WITH_TRACKING

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
