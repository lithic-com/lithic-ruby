# frozen_string_literal: true

module Lithic
  module Models
    module Transactions
      module Events
        # @see Lithic::Resources::Transactions::Events::EnhancedCommercialData#retrieve
        class EnhancedData < Lithic::BaseModel
          # @!attribute token
          #   A unique identifier for the enhanced commercial data.
          #
          #   @return [String]
          required :token, String

          # @!attribute common
          #
          #   @return [Lithic::Models::Transactions::Events::EnhancedData::Common]
          required :common, -> { Lithic::Models::Transactions::Events::EnhancedData::Common }

          # @!attribute event_token
          #   The token of the event that the enhanced data is associated with.
          #
          #   @return [String]
          required :event_token, String

          # @!attribute fleet
          #
          #   @return [Array<Lithic::Models::Transactions::Events::EnhancedData::Fleet>]
          required :fleet, -> { Lithic::ArrayOf[Lithic::Models::Transactions::Events::EnhancedData::Fleet] }

          # @!attribute transaction_token
          #   The token of the transaction that the enhanced data is associated with.
          #
          #   @return [String]
          required :transaction_token, String

          # @!parse
          #   # @param token [String]
          #   # @param common [Lithic::Models::Transactions::Events::EnhancedData::Common]
          #   # @param event_token [String]
          #   # @param fleet [Array<Lithic::Models::Transactions::Events::EnhancedData::Fleet>]
          #   # @param transaction_token [String]
          #   #
          #   def initialize(token:, common:, event_token:, fleet:, transaction_token:, **) = super

          # def initialize: (Hash | Lithic::BaseModel) -> void

          # @see Lithic::Models::Transactions::Events::EnhancedData#common
          class Common < Lithic::BaseModel
            # @!attribute line_items
            #
            #   @return [Array<Lithic::Models::Transactions::Events::EnhancedData::Common::LineItem>]
            required :line_items,
                     -> { Lithic::ArrayOf[Lithic::Models::Transactions::Events::EnhancedData::Common::LineItem] }

            # @!attribute tax
            #
            #   @return [Lithic::Models::Transactions::Events::EnhancedData::Common::Tax]
            required :tax, -> { Lithic::Models::Transactions::Events::EnhancedData::Common::Tax }

            # @!attribute [r] customer_reference_number
            #   A customer identifier.
            #
            #   @return [String, nil]
            optional :customer_reference_number, String

            # @!parse
            #   # @return [String]
            #   attr_writer :customer_reference_number

            # @!attribute [r] merchant_reference_number
            #   A merchant identifier.
            #
            #   @return [String, nil]
            optional :merchant_reference_number, String

            # @!parse
            #   # @return [String]
            #   attr_writer :merchant_reference_number

            # @!attribute [r] order_date
            #   The date of the order.
            #
            #   @return [Date, nil]
            optional :order_date, Date

            # @!parse
            #   # @return [Date]
            #   attr_writer :order_date

            # @!parse
            #   # @param line_items [Array<Lithic::Models::Transactions::Events::EnhancedData::Common::LineItem>]
            #   # @param tax [Lithic::Models::Transactions::Events::EnhancedData::Common::Tax]
            #   # @param customer_reference_number [String]
            #   # @param merchant_reference_number [String]
            #   # @param order_date [Date]
            #   #
            #   def initialize(line_items:, tax:, customer_reference_number: nil, merchant_reference_number: nil, order_date: nil, **) = super

            # def initialize: (Hash | Lithic::BaseModel) -> void

            class LineItem < Lithic::BaseModel
              # @!attribute [r] amount
              #   The price of the item purchased in merchant currency.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] description
              #   A human-readable description of the item.
              #
              #   @return [String, nil]
              optional :description, String

              # @!parse
              #   # @return [String]
              #   attr_writer :description

              # @!attribute [r] product_code
              #   An identifier for the item purchased.
              #
              #   @return [String, nil]
              optional :product_code, String

              # @!parse
              #   # @return [String]
              #   attr_writer :product_code

              # @!attribute [r] quantity
              #   The quantity of the item purchased.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!parse
              #   # An L2/L3 enhanced commercial data line item.
              #   #
              #   # @param amount [Float]
              #   # @param description [String]
              #   # @param product_code [String]
              #   # @param quantity [Float]
              #   #
              #   def initialize(amount: nil, description: nil, product_code: nil, quantity: nil, **) = super

              # def initialize: (Hash | Lithic::BaseModel) -> void
            end

            # @see Lithic::Models::Transactions::Events::EnhancedData::Common#tax
            class Tax < Lithic::BaseModel
              # @!attribute [r] amount
              #   The amount of tax collected.
              #
              #   @return [Integer, nil]
              optional :amount, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :amount

              # @!attribute [r] exempt
              #   A flag indicating whether the transaction is tax exempt or not.
              #
              #   @return [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt, nil]
              optional :exempt, enum: -> { Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt }

              # @!parse
              #   # @return [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt]
              #   attr_writer :exempt

              # @!attribute [r] merchant_tax_id
              #   The tax ID of the merchant.
              #
              #   @return [String, nil]
              optional :merchant_tax_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :merchant_tax_id

              # @!parse
              #   # @param amount [Integer]
              #   # @param exempt [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt]
              #   # @param merchant_tax_id [String]
              #   #
              #   def initialize(amount: nil, exempt: nil, merchant_tax_id: nil, **) = super

              # def initialize: (Hash | Lithic::BaseModel) -> void

              # A flag indicating whether the transaction is tax exempt or not.
              #
              # @see Lithic::Models::Transactions::Events::EnhancedData::Common::Tax#exempt
              module Exempt
                extend Lithic::Enum

                TAX_INCLUDED = :TAX_INCLUDED
                TAX_NOT_INCLUDED = :TAX_NOT_INCLUDED
                NOT_SUPPORTED = :NOT_SUPPORTED

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class Fleet < Lithic::BaseModel
            # @!attribute amount_totals
            #
            #   @return [Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals]
            required :amount_totals, -> { Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals }

            # @!attribute fuel
            #
            #   @return [Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel]
            required :fuel, -> { Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel }

            # @!attribute [r] driver_number
            #   The driver number entered into the terminal at the time of sale, with leading
            #     zeros stripped.
            #
            #   @return [String, nil]
            optional :driver_number, String

            # @!parse
            #   # @return [String]
            #   attr_writer :driver_number

            # @!attribute [r] odometer
            #   The odometer reading entered into the terminal at the time of sale.
            #
            #   @return [Integer, nil]
            optional :odometer, Integer

            # @!parse
            #   # @return [Integer]
            #   attr_writer :odometer

            # @!attribute [r] service_type
            #   The type of fuel service.
            #
            #   @return [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType, nil]
            optional :service_type,
                     enum: -> { Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType }

            # @!parse
            #   # @return [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType]
            #   attr_writer :service_type

            # @!attribute [r] vehicle_number
            #   The vehicle number entered into the terminal at the time of sale, with leading
            #     zeros stripped.
            #
            #   @return [String, nil]
            optional :vehicle_number, String

            # @!parse
            #   # @return [String]
            #   attr_writer :vehicle_number

            # @!parse
            #   # @param amount_totals [Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals]
            #   # @param fuel [Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel]
            #   # @param driver_number [String]
            #   # @param odometer [Integer]
            #   # @param service_type [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType]
            #   # @param vehicle_number [String]
            #   #
            #   def initialize(amount_totals:, fuel:, driver_number: nil, odometer: nil, service_type: nil, vehicle_number: nil, **) = super

            # def initialize: (Hash | Lithic::BaseModel) -> void

            # @see Lithic::Models::Transactions::Events::EnhancedData::Fleet#amount_totals
            class AmountTotals < Lithic::BaseModel
              # @!attribute [r] discount
              #   The discount applied to the gross sale amount.
              #
              #   @return [Integer, nil]
              optional :discount, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :discount

              # @!attribute [r] gross_sale
              #   The gross sale amount.
              #
              #   @return [Integer, nil]
              optional :gross_sale, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :gross_sale

              # @!attribute [r] net_sale
              #   The amount after discount.
              #
              #   @return [Integer, nil]
              optional :net_sale, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :net_sale

              # @!parse
              #   # @param discount [Integer]
              #   # @param gross_sale [Integer]
              #   # @param net_sale [Integer]
              #   #
              #   def initialize(discount: nil, gross_sale: nil, net_sale: nil, **) = super

              # def initialize: (Hash | Lithic::BaseModel) -> void
            end

            # @see Lithic::Models::Transactions::Events::EnhancedData::Fleet#fuel
            class Fuel < Lithic::BaseModel
              # @!attribute [r] quantity
              #   The quantity of fuel purchased.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] type
              #   The type of fuel purchased.
              #
              #   @return [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type, nil]
              optional :type, enum: -> { Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type }

              # @!parse
              #   # @return [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type]
              #   attr_writer :type

              # @!attribute [r] unit_of_measure
              #   Unit of measure for fuel disbursement.
              #
              #   @return [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure, nil]
              optional :unit_of_measure,
                       enum: -> { Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure }

              # @!parse
              #   # @return [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure]
              #   attr_writer :unit_of_measure

              # @!attribute [r] unit_price
              #   The price per unit of fuel.
              #
              #   @return [Integer, nil]
              optional :unit_price, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :unit_price

              # @!parse
              #   # @param quantity [Float]
              #   # @param type [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type]
              #   # @param unit_of_measure [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure]
              #   # @param unit_price [Integer]
              #   #
              #   def initialize(quantity: nil, type: nil, unit_of_measure: nil, unit_price: nil, **) = super

              # def initialize: (Hash | Lithic::BaseModel) -> void

              # The type of fuel purchased.
              #
              # @see Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel#type
              module Type
                extend Lithic::Enum

                UNKNOWN = :UNKNOWN
                REGULAR = :REGULAR
                MID_PLUS = :MID_PLUS
                PREMIUM_SUPER = :PREMIUM_SUPER
                MID_PLUS_2 = :MID_PLUS_2
                PREMIUM_SUPER_2 = :PREMIUM_SUPER_2
                ETHANOL_5_7_BLEND = :ETHANOL_5_7_BLEND
                MID_PLUS_ETHANOL_5_7_PERCENT_BLEND = :MID_PLUS_ETHANOL_5_7_PERCENT_BLEND
                PREMIUM_SUPER_ETHANOL_5_7_PERCENT_BLEND = :PREMIUM_SUPER_ETHANOL_5_7_PERCENT_BLEND
                ETHANOL_7_7_PERCENT_BLEND = :ETHANOL_7_7_PERCENT_BLEND
                MID_PLUS_ETHANOL_7_7_PERCENT_BLEND = :MID_PLUS_ETHANOL_7_7_PERCENT_BLEND
                GREEN_GASOLINE_REGULAR = :GREEN_GASOLINE_REGULAR
                GREEN_GASOLINE_MID_PLUS = :GREEN_GASOLINE_MID_PLUS
                GREEN_GASOLINE_PREMIUM_SUPER = :GREEN_GASOLINE_PREMIUM_SUPER
                REGULAR_DIESEL_2 = :REGULAR_DIESEL_2
                PREMIUM_DIESEL_2 = :PREMIUM_DIESEL_2
                REGULAR_DIESEL_1 = :REGULAR_DIESEL_1
                COMPRESSED_NATURAL_GAS = :COMPRESSED_NATURAL_GAS
                LIQUID_PROPANE_GAS = :LIQUID_PROPANE_GAS
                LIQUID_NATURAL_GAS = :LIQUID_NATURAL_GAS
                E_85 = :E_85
                REFORMULATED_1 = :REFORMULATED_1
                REFORMULATED_2 = :REFORMULATED_2
                REFORMULATED_3 = :REFORMULATED_3
                REFORMULATED_4 = :REFORMULATED_4
                REFORMULATED_5 = :REFORMULATED_5
                DIESEL_OFF_ROAD_1_AND_2_NON_TAXABLE = :DIESEL_OFF_ROAD_1_AND_2_NON_TAXABLE
                DIESEL_OFF_ROAD_NON_TAXABLE = :DIESEL_OFF_ROAD_NON_TAXABLE
                BIODIESEL_BLEND_OFF_ROAD_NON_TAXABLE = :BIODIESEL_BLEND_OFF_ROAD_NON_TAXABLE
                UNDEFINED_FUEL = :UNDEFINED_FUEL
                RACING_FUEL = :RACING_FUEL
                MID_PLUS_2_10_PERCENT_BLEND = :MID_PLUS_2_10_PERCENT_BLEND
                PREMIUM_SUPER_2_10_PERCENT_BLEND = :PREMIUM_SUPER_2_10_PERCENT_BLEND
                MID_PLUS_ETHANOL_2_15_PERCENT_BLEND = :MID_PLUS_ETHANOL_2_15_PERCENT_BLEND
                PREMIUM_SUPER_ETHANOL_2_15_PERCENT_BLEND = :PREMIUM_SUPER_ETHANOL_2_15_PERCENT_BLEND
                PREMIUM_SUPER_ETHANOL_7_7_PERCENT_BLEND = :PREMIUM_SUPER_ETHANOL_7_7_PERCENT_BLEND
                REGULAR_ETHANOL_10_PERCENT_BLEND = :REGULAR_ETHANOL_10_PERCENT_BLEND
                MID_PLUS_ETHANOL_10_PERCENT_BLEND = :MID_PLUS_ETHANOL_10_PERCENT_BLEND
                PREMIUM_SUPER_ETHANOL_10_PERCENT_BLEND = :PREMIUM_SUPER_ETHANOL_10_PERCENT_BLEND
                B2_DIESEL_BLEND_2_PERCENT_BIODIESEL = :B2_DIESEL_BLEND_2_PERCENT_BIODIESEL
                B5_DIESEL_BLEND_5_PERCENT_BIODIESEL = :B5_DIESEL_BLEND_5_PERCENT_BIODIESEL
                B10_DIESEL_BLEND_10_PERCENT_BIODIESEL = :B10_DIESEL_BLEND_10_PERCENT_BIODIESEL
                B11_DIESEL_BLEND_11_PERCENT_BIODIESEL = :B11_DIESEL_BLEND_11_PERCENT_BIODIESEL
                B15_DIESEL_BLEND_15_PERCENT_BIODIESEL = :B15_DIESEL_BLEND_15_PERCENT_BIODIESEL
                B20_DIESEL_BLEND_20_PERCENT_BIODIESEL = :B20_DIESEL_BLEND_20_PERCENT_BIODIESEL
                B100_DIESEL_BLEND_100_PERCENT_BIODIESEL = :B100_DIESEL_BLEND_100_PERCENT_BIODIESEL
                B1_DIESEL_BLEND_1_PERCENT_BIODIESEL = :B1_DIESEL_BLEND_1_PERCENT_BIODIESEL
                ADDITIZED_DIESEL_2 = :ADDITIZED_DIESEL_2
                ADDITIZED_DIESEL_3 = :ADDITIZED_DIESEL_3
                RENEWABLE_DIESEL_R95 = :RENEWABLE_DIESEL_R95
                RENEWABLE_DIESEL_BIODIESEL_6_20_PERCENT = :RENEWABLE_DIESEL_BIODIESEL_6_20_PERCENT
                DIESEL_EXHAUST_FLUID = :DIESEL_EXHAUST_FLUID
                PREMIUM_DIESEL_1 = :PREMIUM_DIESEL_1
                REGULAR_ETHANOL_15_PERCENT_BLEND = :REGULAR_ETHANOL_15_PERCENT_BLEND
                MID_PLUS_ETHANOL_15_PERCENT_BLEND = :MID_PLUS_ETHANOL_15_PERCENT_BLEND
                PREMIUM_SUPER_ETHANOL_15_PERCENT_BLEND = :PREMIUM_SUPER_ETHANOL_15_PERCENT_BLEND
                PREMIUM_DIESEL_BLEND_LESS_THAN_20_PERCENT_BIODIESEL =
                  :PREMIUM_DIESEL_BLEND_LESS_THAN_20_PERCENT_BIODIESEL
                PREMIUM_DIESEL_BLEND_GREATER_THAN_20_PERCENT_BIODIESEL =
                  :PREMIUM_DIESEL_BLEND_GREATER_THAN_20_PERCENT_BIODIESEL
                B75_DIESEL_BLEND_75_PERCENT_BIODIESEL = :B75_DIESEL_BLEND_75_PERCENT_BIODIESEL
                B99_DIESEL_BLEND_99_PERCENT_BIODIESEL = :B99_DIESEL_BLEND_99_PERCENT_BIODIESEL
                MISCELLANEOUS_FUEL = :MISCELLANEOUS_FUEL
                JET_FUEL = :JET_FUEL
                AVIATION_FUEL_REGULAR = :AVIATION_FUEL_REGULAR
                AVIATION_FUEL_PREMIUM = :AVIATION_FUEL_PREMIUM
                AVIATION_FUEL_JP8 = :AVIATION_FUEL_JP8
                AVIATION_FUEL_4 = :AVIATION_FUEL_4
                AVIATION_FUEL_5 = :AVIATION_FUEL_5
                BIOJET_DIESEL = :BIOJET_DIESEL
                AVIATION_BIOFUEL_GASOLINE = :AVIATION_BIOFUEL_GASOLINE
                MISCELLANEOUS_AVIATION_FUEL = :MISCELLANEOUS_AVIATION_FUEL
                MARINE_FUEL_1 = :MARINE_FUEL_1
                MARINE_FUEL_2 = :MARINE_FUEL_2
                MARINE_FUEL_3 = :MARINE_FUEL_3
                MARINE_FUEL_4 = :MARINE_FUEL_4
                MARINE_FUEL_5 = :MARINE_FUEL_5
                MARINE_OTHER = :MARINE_OTHER
                MARINE_DIESEL = :MARINE_DIESEL
                MISCELLANEOUS_MARINE_FUEL = :MISCELLANEOUS_MARINE_FUEL
                KEROSENE_LOW_SULFUR = :KEROSENE_LOW_SULFUR
                WHITE_GAS = :WHITE_GAS
                HEATING_OIL = :HEATING_OIL
                OTHER_FUEL_NON_TAXABLE = :OTHER_FUEL_NON_TAXABLE
                KEROSENE_ULTRA_LOW_SULFUR = :KEROSENE_ULTRA_LOW_SULFUR
                KEROSENE_LOW_SULFUR_NON_TAXABLE = :KEROSENE_LOW_SULFUR_NON_TAXABLE
                KEROSENE_ULTRA_LOW_SULFUR_NON_TAXABLE = :KEROSENE_ULTRA_LOW_SULFUR_NON_TAXABLE
                EVC_1_LEVEL_1_CHARGE_110_V_15_AMP = :EVC_1_LEVEL_1_CHARGE_110V_15_AMP
                EVC_2_LEVEL_2_CHARGE_240_V_15_40_AMP = :EVC_2_LEVEL_2_CHARGE_240V_15_40_AMP
                EVC_3_LEVEL_3_CHARGE_480_V_3_PHASE_CHARGE = :EVC_3_LEVEL_3_CHARGE_480V_3_PHASE_CHARGE
                BIODIESEL_BLEND_2_PERCENT_OFF_ROAD_NON_TAXABLE = :BIODIESEL_BLEND_2_PERCENT_OFF_ROAD_NON_TAXABLE
                BIODIESEL_BLEND_5_PERCENT_OFF_ROAD_NON_TAXABLE = :BIODIESEL_BLEND_5_PERCENT_OFF_ROAD_NON_TAXABLE
                BIODIESEL_BLEND_10_PERCENT_OFF_ROAD_NON_TAXABLE = :BIODIESEL_BLEND_10_PERCENT_OFF_ROAD_NON_TAXABLE
                BIODIESEL_BLEND_11_PERCENT_OFF_ROAD_NON_TAXABLE = :BIODIESEL_BLEND_11_PERCENT_OFF_ROAD_NON_TAXABLE
                BIODIESEL_BLEND_15_PERCENT_OFF_ROAD_NON_TAXABLE = :BIODIESEL_BLEND_15_PERCENT_OFF_ROAD_NON_TAXABLE
                BIODIESEL_BLEND_20_PERCENT_OFF_ROAD_NON_TAXABLE = :BIODIESEL_BLEND_20_PERCENT_OFF_ROAD_NON_TAXABLE
                DIESEL_1_OFF_ROAD_NON_TAXABLE = :DIESEL_1_OFF_ROAD_NON_TAXABLE
                DIESEL_2_OFF_ROAD_NON_TAXABLE = :DIESEL_2_OFF_ROAD_NON_TAXABLE
                DIESEL_1_PREMIUM_OFF_ROAD_NON_TAXABLE = :DIESEL_1_PREMIUM_OFF_ROAD_NON_TAXABLE
                DIESEL_2_PREMIUM_OFF_ROAD_NON_TAXABLE = :DIESEL_2_PREMIUM_OFF_ROAD_NON_TAXABLE
                ADDITIVE_DOSAGE = :ADDITIVE_DOSAGE
                ETHANOL_BLENDS_E16_E84 = :ETHANOL_BLENDS_E16_E84
                LOW_OCTANE_UNL = :LOW_OCTANE_UNL
                BLENDED_DIESEL_1_AND_2 = :BLENDED_DIESEL_1_AND_2
                OFF_ROAD_REGULAR_NON_TAXABLE = :OFF_ROAD_REGULAR_NON_TAXABLE
                OFF_ROAD_MID_PLUS_NON_TAXABLE = :OFF_ROAD_MID_PLUS_NON_TAXABLE
                OFF_ROAD_PREMIUM_SUPER_NON_TAXABLE = :OFF_ROAD_PREMIUM_SUPER_NON_TAXABLE
                OFF_ROAD_MID_PLUS_2_NON_TAXABLE = :OFF_ROAD_MID_PLUS_2_NON_TAXABLE
                OFF_ROAD_PREMIUM_SUPER_2_NON_TAXABLE = :OFF_ROAD_PREMIUM_SUPER_2_NON_TAXABLE
                RECREATIONAL_FUEL_90_OCTANE = :RECREATIONAL_FUEL_90_OCTANE
                HYDROGEN_H35 = :HYDROGEN_H35
                HYDROGEN_H70 = :HYDROGEN_H70
                RENEWABLE_DIESEL_R95_OFF_ROAD_NON_TAXABLE = :RENEWABLE_DIESEL_R95_OFF_ROAD_NON_TAXABLE
                BIODIESEL_BLEND_1_PERCENT_OFF_ROAD_NON_TAXABLE = :BIODIESEL_BLEND_1_PERCENT_OFF_ROAD_NON_TAXABLE
                BIODIESEL_BLEND_75_PERCENT_OFF_ROAD_NON_TAXABLE = :BIODIESEL_BLEND_75_PERCENT_OFF_ROAD_NON_TAXABLE
                BIODIESEL_BLEND_99_PERCENT_OFF_ROAD_NON_TAXABLE = :BIODIESEL_BLEND_99_PERCENT_OFF_ROAD_NON_TAXABLE
                BIODIESEL_BLEND_100_PERCENT_OFF_ROAD_NON_TAXABLE = :BIODIESEL_BLEND_100_PERCENT_OFF_ROAD_NON_TAXABLE
                RENEWABLE_DIESEL_BIODIESEL_6_20_PERCENT_OFF_ROAD_NON_TAXABLE =
                  :RENEWABLE_DIESEL_BIODIESEL_6_20_PERCENT_OFF_ROAD_NON_TAXABLE
                MISCELLANEOUS_OTHER_FUEL = :MISCELLANEOUS_OTHER_FUEL

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # Unit of measure for fuel disbursement.
              #
              # @see Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel#unit_of_measure
              module UnitOfMeasure
                extend Lithic::Enum

                GALLONS = :GALLONS
                LITERS = :LITERS
                POUNDS = :POUNDS
                KILOGRAMS = :KILOGRAMS
                IMPERIAL_GALLONS = :IMPERIAL_GALLONS
                NOT_APPLICABLE = :NOT_APPLICABLE
                UNKNOWN = :UNKNOWN

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # The type of fuel service.
            #
            # @see Lithic::Models::Transactions::Events::EnhancedData::Fleet#service_type
            module ServiceType
              extend Lithic::Enum

              UNKNOWN = :UNKNOWN
              UNDEFINED = :UNDEFINED
              SELF_SERVICE = :SELF_SERVICE
              FULL_SERVICE = :FULL_SERVICE
              NON_FUEL_ONLY = :NON_FUEL_ONLY

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end
          end
        end
      end
    end
  end
end
