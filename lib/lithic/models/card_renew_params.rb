# frozen_string_literal: true

module Lithic
  module Models
    class CardRenewParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute shipping_address
      #   The shipping address this card will be sent to.
      #
      #   @return [Lithic::Models::ShippingAddress]
      required :shipping_address, -> { Lithic::Models::ShippingAddress }

      # @!attribute [r] carrier
      #   If omitted, the previous carrier will be used.
      #
      #   @return [Lithic::Models::Carrier, nil]
      optional :carrier, -> { Lithic::Models::Carrier }

      # @!parse
      #   # @return [Lithic::Models::Carrier]
      #   attr_writer :carrier

      # @!attribute [r] exp_month
      #   Two digit (MM) expiry month. If neither `exp_month` nor `exp_year` is provided,
      #     an expiration date six years in the future will be generated.
      #
      #   @return [String, nil]
      optional :exp_month, String

      # @!parse
      #   # @return [String]
      #   attr_writer :exp_month

      # @!attribute [r] exp_year
      #   Four digit (yyyy) expiry year. If neither `exp_month` nor `exp_year` is
      #     provided, an expiration date six years in the future will be generated.
      #
      #   @return [String, nil]
      optional :exp_year, String

      # @!parse
      #   # @return [String]
      #   attr_writer :exp_year

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
      #   @return [Symbol, Lithic::Models::CardRenewParams::ShippingMethod, nil]
      optional :shipping_method, enum: -> { Lithic::Models::CardRenewParams::ShippingMethod }

      # @!parse
      #   # @return [Symbol, Lithic::Models::CardRenewParams::ShippingMethod]
      #   attr_writer :shipping_method

      # @!parse
      #   # @param shipping_address [Lithic::Models::ShippingAddress]
      #   # @param carrier [Lithic::Models::Carrier]
      #   # @param exp_month [String]
      #   # @param exp_year [String]
      #   # @param product_id [String]
      #   # @param shipping_method [Symbol, Lithic::Models::CardRenewParams::ShippingMethod]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     shipping_address:,
      #     carrier: nil,
      #     exp_month: nil,
      #     exp_year: nil,
      #     product_id: nil,
      #     shipping_method: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

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
