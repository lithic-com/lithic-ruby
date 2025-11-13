# frozen_string_literal: true

module Lithic
  module Models
    module Transactions
      module Events
        # @see Lithic::Resources::Transactions::Events::EnhancedCommercialData#retrieve
        class EnhancedData < Lithic::Internal::Type::BaseModel
          # @!attribute token
          #   A unique identifier for the enhanced commercial data.
          #
          #   @return [String]
          required :token, String

          # @!attribute common
          #
          #   @return [Lithic::Models::Transactions::Events::EnhancedData::Common]
          required :common, -> { Lithic::Transactions::Events::EnhancedData::Common }

          # @!attribute event_token
          #   The token of the event that the enhanced data is associated with.
          #
          #   @return [String]
          required :event_token, String

          # @!attribute fleet
          #
          #   @return [Array<Lithic::Models::Transactions::Events::EnhancedData::Fleet>]
          required :fleet, -> { Lithic::Internal::Type::ArrayOf[Lithic::Transactions::Events::EnhancedData::Fleet] }

          # @!attribute transaction_token
          #   The token of the transaction that the enhanced data is associated with.
          #
          #   @return [String]
          required :transaction_token, String

          # @!method initialize(token:, common:, event_token:, fleet:, transaction_token:)
          #   @param token [String] A unique identifier for the enhanced commercial data.
          #
          #   @param common [Lithic::Models::Transactions::Events::EnhancedData::Common]
          #
          #   @param event_token [String] The token of the event that the enhanced data is associated with.
          #
          #   @param fleet [Array<Lithic::Models::Transactions::Events::EnhancedData::Fleet>]
          #
          #   @param transaction_token [String] The token of the transaction that the enhanced data is associated with.

          # @see Lithic::Models::Transactions::Events::EnhancedData#common
          class Common < Lithic::Internal::Type::BaseModel
            # @!attribute line_items
            #
            #   @return [Array<Lithic::Models::Transactions::Events::EnhancedData::Common::LineItem>]
            required :line_items,
                     -> { Lithic::Internal::Type::ArrayOf[Lithic::Transactions::Events::EnhancedData::Common::LineItem] }

            # @!attribute tax
            #
            #   @return [Lithic::Models::Transactions::Events::EnhancedData::Common::Tax]
            required :tax, -> { Lithic::Transactions::Events::EnhancedData::Common::Tax }

            # @!attribute customer_reference_number
            #   A customer identifier.
            #
            #   @return [String, nil]
            optional :customer_reference_number, String, nil?: true

            # @!attribute merchant_reference_number
            #   A merchant identifier.
            #
            #   @return [String, nil]
            optional :merchant_reference_number, String, nil?: true

            # @!attribute order_date
            #   The date of the order.
            #
            #   @return [Date, nil]
            optional :order_date, Date, nil?: true

            # @!method initialize(line_items:, tax:, customer_reference_number: nil, merchant_reference_number: nil, order_date: nil)
            #   @param line_items [Array<Lithic::Models::Transactions::Events::EnhancedData::Common::LineItem>]
            #
            #   @param tax [Lithic::Models::Transactions::Events::EnhancedData::Common::Tax]
            #
            #   @param customer_reference_number [String, nil] A customer identifier.
            #
            #   @param merchant_reference_number [String, nil] A merchant identifier.
            #
            #   @param order_date [Date, nil] The date of the order.

            class LineItem < Lithic::Internal::Type::BaseModel
              # @!attribute amount
              #   The price of the item purchased in merchant currency.
              #
              #   @return [String, nil]
              optional :amount, String, nil?: true

              # @!attribute description
              #   A human-readable description of the item.
              #
              #   @return [String, nil]
              optional :description, String, nil?: true

              # @!attribute product_code
              #   An identifier for the item purchased.
              #
              #   @return [String, nil]
              optional :product_code, String, nil?: true

              # @!attribute quantity
              #   The quantity of the item purchased.
              #
              #   @return [String, nil]
              optional :quantity, String, nil?: true

              # @!method initialize(amount: nil, description: nil, product_code: nil, quantity: nil)
              #   An L2/L3 enhanced commercial data line item.
              #
              #   @param amount [String, nil] The price of the item purchased in merchant currency.
              #
              #   @param description [String, nil] A human-readable description of the item.
              #
              #   @param product_code [String, nil] An identifier for the item purchased.
              #
              #   @param quantity [String, nil] The quantity of the item purchased.
            end

            # @see Lithic::Models::Transactions::Events::EnhancedData::Common#tax
            class Tax < Lithic::Internal::Type::BaseModel
              # @!attribute amount
              #   The amount of tax collected.
              #
              #   @return [Integer, nil]
              optional :amount, Integer, nil?: true

              # @!attribute exempt
              #   A flag indicating whether the transaction is tax exempt or not.
              #
              #   @return [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt, nil]
              optional :exempt,
                       enum: -> {
                         Lithic::Transactions::Events::EnhancedData::Common::Tax::Exempt
                       },
                       nil?: true

              # @!attribute merchant_tax_id
              #   The tax ID of the merchant.
              #
              #   @return [String, nil]
              optional :merchant_tax_id, String, nil?: true

              # @!method initialize(amount: nil, exempt: nil, merchant_tax_id: nil)
              #   @param amount [Integer, nil] The amount of tax collected.
              #
              #   @param exempt [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt, nil] A flag indicating whether the transaction is tax exempt or not.
              #
              #   @param merchant_tax_id [String, nil] The tax ID of the merchant.

              # A flag indicating whether the transaction is tax exempt or not.
              #
              # @see Lithic::Models::Transactions::Events::EnhancedData::Common::Tax#exempt
              module Exempt
                extend Lithic::Internal::Type::Enum

                TAX_INCLUDED = :TAX_INCLUDED
                TAX_NOT_INCLUDED = :TAX_NOT_INCLUDED
                NOT_SUPPORTED = :NOT_SUPPORTED

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Fleet < Lithic::Internal::Type::BaseModel
            # @!attribute amount_totals
            #
            #   @return [Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals]
            required :amount_totals, -> { Lithic::Transactions::Events::EnhancedData::Fleet::AmountTotals }

            # @!attribute fuel
            #
            #   @return [Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel]
            required :fuel, -> { Lithic::Transactions::Events::EnhancedData::Fleet::Fuel }

            # @!attribute driver_number
            #   The driver number entered into the terminal at the time of sale, with leading
            #   zeros stripped.
            #
            #   @return [String, nil]
            optional :driver_number, String, nil?: true

            # @!attribute odometer
            #   The odometer reading entered into the terminal at the time of sale.
            #
            #   @return [Integer, nil]
            optional :odometer, Integer, nil?: true

            # @!attribute service_type
            #   The type of fuel service.
            #
            #   @return [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType, nil]
            optional :service_type, enum: -> { Lithic::Transactions::Events::EnhancedData::Fleet::ServiceType }

            # @!attribute vehicle_number
            #   The vehicle number entered into the terminal at the time of sale, with leading
            #   zeros stripped.
            #
            #   @return [String, nil]
            optional :vehicle_number, String, nil?: true

            # @!method initialize(amount_totals:, fuel:, driver_number: nil, odometer: nil, service_type: nil, vehicle_number: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::Transactions::Events::EnhancedData::Fleet} for more details.
            #
            #   @param amount_totals [Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals]
            #
            #   @param fuel [Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel]
            #
            #   @param driver_number [String, nil] The driver number entered into the terminal at the time of sale, with leading ze
            #
            #   @param odometer [Integer, nil] The odometer reading entered into the terminal at the time of sale.
            #
            #   @param service_type [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType] The type of fuel service.
            #
            #   @param vehicle_number [String, nil] The vehicle number entered into the terminal at the time of sale, with leading z

            # @see Lithic::Models::Transactions::Events::EnhancedData::Fleet#amount_totals
            class AmountTotals < Lithic::Internal::Type::BaseModel
              # @!attribute discount
              #   The discount applied to the gross sale amount.
              #
              #   @return [Integer, nil]
              optional :discount, Integer, nil?: true

              # @!attribute gross_sale
              #   The gross sale amount.
              #
              #   @return [Integer, nil]
              optional :gross_sale, Integer, nil?: true

              # @!attribute net_sale
              #   The amount after discount.
              #
              #   @return [Integer, nil]
              optional :net_sale, Integer, nil?: true

              # @!method initialize(discount: nil, gross_sale: nil, net_sale: nil)
              #   @param discount [Integer, nil] The discount applied to the gross sale amount.
              #
              #   @param gross_sale [Integer, nil] The gross sale amount.
              #
              #   @param net_sale [Integer, nil] The amount after discount.
            end

            # @see Lithic::Models::Transactions::Events::EnhancedData::Fleet#fuel
            class Fuel < Lithic::Internal::Type::BaseModel
              # @!attribute quantity
              #   The quantity of fuel purchased.
              #
              #   @return [String, nil]
              optional :quantity, String, nil?: true

              # @!attribute type
              #   The type of fuel purchased.
              #
              #   @return [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type, nil]
              optional :type,
                       enum: -> {
                         Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type
                       },
                       nil?: true

              # @!attribute unit_of_measure
              #   Unit of measure for fuel disbursement.
              #
              #   @return [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure, nil]
              optional :unit_of_measure,
                       enum: -> { Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure },
                       nil?: true

              # @!attribute unit_price
              #   The price per unit of fuel.
              #
              #   @return [Integer, nil]
              optional :unit_price, Integer, nil?: true

              # @!method initialize(quantity: nil, type: nil, unit_of_measure: nil, unit_price: nil)
              #   @param quantity [String, nil] The quantity of fuel purchased.
              #
              #   @param type [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type, nil] The type of fuel purchased.
              #
              #   @param unit_of_measure [Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure, nil] Unit of measure for fuel disbursement.
              #
              #   @param unit_price [Integer, nil] The price per unit of fuel.

              # The type of fuel purchased.
              #
              # @see Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel#type
              module Type
                extend Lithic::Internal::Type::Enum

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

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Unit of measure for fuel disbursement.
              #
              # @see Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel#unit_of_measure
              module UnitOfMeasure
                extend Lithic::Internal::Type::Enum

                GALLONS = :GALLONS
                LITERS = :LITERS
                POUNDS = :POUNDS
                KILOGRAMS = :KILOGRAMS
                IMPERIAL_GALLONS = :IMPERIAL_GALLONS
                NOT_APPLICABLE = :NOT_APPLICABLE
                UNKNOWN = :UNKNOWN

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # The type of fuel service.
            #
            # @see Lithic::Models::Transactions::Events::EnhancedData::Fleet#service_type
            module ServiceType
              extend Lithic::Internal::Type::Enum

              UNKNOWN = :UNKNOWN
              UNDEFINED = :UNDEFINED
              SELF_SERVICE = :SELF_SERVICE
              FULL_SERVICE = :FULL_SERVICE
              NON_FUEL_ONLY = :NON_FUEL_ONLY

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
