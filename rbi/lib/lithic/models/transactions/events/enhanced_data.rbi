# typed: strong

module Lithic
  module Models
    module Transactions
      module Events
        class EnhancedData < Lithic::BaseModel
          # A unique identifier for the enhanced commercial data.
          sig { returns(String) }
          def token
          end

          sig { params(_: String).returns(String) }
          def token=(_)
          end

          sig { returns(Lithic::Models::Transactions::Events::EnhancedData::Common) }
          def common
          end

          sig do
            params(_: Lithic::Models::Transactions::Events::EnhancedData::Common)
              .returns(Lithic::Models::Transactions::Events::EnhancedData::Common)
          end
          def common=(_)
          end

          # The token of the event that the enhanced data is associated with.
          sig { returns(String) }
          def event_token
          end

          sig { params(_: String).returns(String) }
          def event_token=(_)
          end

          sig { returns(T::Array[Lithic::Models::Transactions::Events::EnhancedData::Fleet]) }
          def fleet
          end

          sig do
            params(_: T::Array[Lithic::Models::Transactions::Events::EnhancedData::Fleet])
              .returns(T::Array[Lithic::Models::Transactions::Events::EnhancedData::Fleet])
          end
          def fleet=(_)
          end

          # The token of the transaction that the enhanced data is associated with.
          sig { returns(String) }
          def transaction_token
          end

          sig { params(_: String).returns(String) }
          def transaction_token=(_)
          end

          sig do
            params(
              token: String,
              common: Lithic::Models::Transactions::Events::EnhancedData::Common,
              event_token: String,
              fleet: T::Array[Lithic::Models::Transactions::Events::EnhancedData::Fleet],
              transaction_token: String
            )
              .returns(T.attached_class)
          end
          def self.new(token:, common:, event_token:, fleet:, transaction_token:)
          end

          sig do
            override
              .returns(
                {
                  token: String,
                  common: Lithic::Models::Transactions::Events::EnhancedData::Common,
                  event_token: String,
                  fleet: T::Array[Lithic::Models::Transactions::Events::EnhancedData::Fleet],
                  transaction_token: String
                }
              )
          end
          def to_hash
          end

          class Common < Lithic::BaseModel
            sig { returns(T::Array[Lithic::Models::Transactions::Events::EnhancedData::Common::LineItem]) }
            def line_items
            end

            sig do
              params(_: T::Array[Lithic::Models::Transactions::Events::EnhancedData::Common::LineItem])
                .returns(T::Array[Lithic::Models::Transactions::Events::EnhancedData::Common::LineItem])
            end
            def line_items=(_)
            end

            sig { returns(Lithic::Models::Transactions::Events::EnhancedData::Common::Tax) }
            def tax
            end

            sig do
              params(_: Lithic::Models::Transactions::Events::EnhancedData::Common::Tax)
                .returns(Lithic::Models::Transactions::Events::EnhancedData::Common::Tax)
            end
            def tax=(_)
            end

            # A customer identifier.
            sig { returns(T.nilable(String)) }
            def customer_reference_number
            end

            sig { params(_: String).returns(String) }
            def customer_reference_number=(_)
            end

            # A merchant identifier.
            sig { returns(T.nilable(String)) }
            def merchant_reference_number
            end

            sig { params(_: String).returns(String) }
            def merchant_reference_number=(_)
            end

            # The date of the order.
            sig { returns(T.nilable(Date)) }
            def order_date
            end

            sig { params(_: Date).returns(Date) }
            def order_date=(_)
            end

            sig do
              params(
                line_items: T::Array[Lithic::Models::Transactions::Events::EnhancedData::Common::LineItem],
                tax: Lithic::Models::Transactions::Events::EnhancedData::Common::Tax,
                customer_reference_number: String,
                merchant_reference_number: String,
                order_date: Date
              )
                .returns(T.attached_class)
            end
            def self.new(line_items:, tax:, customer_reference_number: nil, merchant_reference_number: nil, order_date: nil)
            end

            sig do
              override
                .returns(
                  {
                    line_items: T::Array[Lithic::Models::Transactions::Events::EnhancedData::Common::LineItem],
                    tax: Lithic::Models::Transactions::Events::EnhancedData::Common::Tax,
                    customer_reference_number: String,
                    merchant_reference_number: String,
                    order_date: Date
                  }
                )
            end
            def to_hash
            end

            class LineItem < Lithic::BaseModel
              # The price of the item purchased in merchant currency.
              sig { returns(T.nilable(Float)) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              # A human-readable description of the item.
              sig { returns(T.nilable(String)) }
              def description
              end

              sig { params(_: String).returns(String) }
              def description=(_)
              end

              # An identifier for the item purchased.
              sig { returns(T.nilable(String)) }
              def product_code
              end

              sig { params(_: String).returns(String) }
              def product_code=(_)
              end

              # The quantity of the item purchased.
              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              # An L2/L3 enhanced commercial data line item.
              sig do
                params(
                  amount: Float,
                  description: String,
                  product_code: String,
                  quantity: Float
                ).returns(T.attached_class)
              end
              def self.new(amount: nil, description: nil, product_code: nil, quantity: nil)
              end

              sig do
                override.returns({amount: Float, description: String, product_code: String, quantity: Float})
              end
              def to_hash
              end
            end

            class Tax < Lithic::BaseModel
              # The amount of tax collected.
              sig { returns(T.nilable(Integer)) }
              def amount
              end

              sig { params(_: Integer).returns(Integer) }
              def amount=(_)
              end

              # A flag indicating whether the transaction is tax exempt or not.
              sig { returns(T.nilable(Symbol)) }
              def exempt
              end

              sig { params(_: Symbol).returns(Symbol) }
              def exempt=(_)
              end

              # The tax ID of the merchant.
              sig { returns(T.nilable(String)) }
              def merchant_tax_id
              end

              sig { params(_: String).returns(String) }
              def merchant_tax_id=(_)
              end

              sig do
                params(amount: Integer, exempt: Symbol, merchant_tax_id: String).returns(T.attached_class)
              end
              def self.new(amount: nil, exempt: nil, merchant_tax_id: nil)
              end

              sig { override.returns({amount: Integer, exempt: Symbol, merchant_tax_id: String}) }
              def to_hash
              end

              # A flag indicating whether the transaction is tax exempt or not.
              class Exempt < Lithic::Enum
                abstract!

                Value = type_template(:out) { {fixed: Symbol} }

                TAX_INCLUDED = :TAX_INCLUDED
                TAX_NOT_INCLUDED = :TAX_NOT_INCLUDED
                NOT_SUPPORTED = :NOT_SUPPORTED
              end
            end
          end

          class Fleet < Lithic::BaseModel
            sig { returns(Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals) }
            def amount_totals
            end

            sig do
              params(_: Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals)
                .returns(Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals)
            end
            def amount_totals=(_)
            end

            sig { returns(Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel) }
            def fuel
            end

            sig do
              params(_: Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel)
                .returns(Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel)
            end
            def fuel=(_)
            end

            # The driver number entered into the terminal at the time of sale, with leading
            #   zeros stripped.
            sig { returns(T.nilable(String)) }
            def driver_number
            end

            sig { params(_: String).returns(String) }
            def driver_number=(_)
            end

            # The odometer reading entered into the terminal at the time of sale.
            sig { returns(T.nilable(Integer)) }
            def odometer
            end

            sig { params(_: Integer).returns(Integer) }
            def odometer=(_)
            end

            # The type of fuel service.
            sig { returns(T.nilable(Symbol)) }
            def service_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def service_type=(_)
            end

            # The vehicle number entered into the terminal at the time of sale, with leading
            #   zeros stripped.
            sig { returns(T.nilable(String)) }
            def vehicle_number
            end

            sig { params(_: String).returns(String) }
            def vehicle_number=(_)
            end

            sig do
              params(
                amount_totals: Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals,
                fuel: Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel,
                driver_number: String,
                odometer: Integer,
                service_type: Symbol,
                vehicle_number: String
              )
                .returns(T.attached_class)
            end
            def self.new(amount_totals:, fuel:, driver_number: nil, odometer: nil, service_type: nil, vehicle_number: nil)
            end

            sig do
              override
                .returns(
                  {
                    amount_totals: Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals,
                    fuel: Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel,
                    driver_number: String,
                    odometer: Integer,
                    service_type: Symbol,
                    vehicle_number: String
                  }
                )
            end
            def to_hash
            end

            class AmountTotals < Lithic::BaseModel
              # The discount applied to the gross sale amount.
              sig { returns(T.nilable(Integer)) }
              def discount
              end

              sig { params(_: Integer).returns(Integer) }
              def discount=(_)
              end

              # The gross sale amount.
              sig { returns(T.nilable(Integer)) }
              def gross_sale
              end

              sig { params(_: Integer).returns(Integer) }
              def gross_sale=(_)
              end

              # The amount after discount.
              sig { returns(T.nilable(Integer)) }
              def net_sale
              end

              sig { params(_: Integer).returns(Integer) }
              def net_sale=(_)
              end

              sig do
                params(discount: Integer, gross_sale: Integer, net_sale: Integer).returns(T.attached_class)
              end
              def self.new(discount: nil, gross_sale: nil, net_sale: nil)
              end

              sig { override.returns({discount: Integer, gross_sale: Integer, net_sale: Integer}) }
              def to_hash
              end
            end

            class Fuel < Lithic::BaseModel
              # The quantity of fuel purchased.
              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              # The type of fuel purchased.
              sig { returns(T.nilable(Symbol)) }
              def type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def type=(_)
              end

              # Unit of measure for fuel disbursement.
              sig { returns(T.nilable(Symbol)) }
              def unit_of_measure
              end

              sig { params(_: Symbol).returns(Symbol) }
              def unit_of_measure=(_)
              end

              # The price per unit of fuel.
              sig { returns(T.nilable(Integer)) }
              def unit_price
              end

              sig { params(_: Integer).returns(Integer) }
              def unit_price=(_)
              end

              sig do
                params(quantity: Float, type: Symbol, unit_of_measure: Symbol, unit_price: Integer)
                  .returns(T.attached_class)
              end
              def self.new(quantity: nil, type: nil, unit_of_measure: nil, unit_price: nil)
              end

              sig do
                override.returns(
                  {
                    quantity: Float,
                    type: Symbol,
                    unit_of_measure: Symbol,
                    unit_price: Integer
                  }
                )
              end
              def to_hash
              end

              # The type of fuel purchased.
              class Type < Lithic::Enum
                abstract!

                Value = type_template(:out) { {fixed: Symbol} }

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
              end

              # Unit of measure for fuel disbursement.
              class UnitOfMeasure < Lithic::Enum
                abstract!

                Value = type_template(:out) { {fixed: Symbol} }

                GALLONS = :GALLONS
                LITERS = :LITERS
                POUNDS = :POUNDS
                KILOGRAMS = :KILOGRAMS
                IMPERIAL_GALLONS = :IMPERIAL_GALLONS
                NOT_APPLICABLE = :NOT_APPLICABLE
                UNKNOWN = :UNKNOWN
              end
            end

            # The type of fuel service.
            class ServiceType < Lithic::Enum
              abstract!

              Value = type_template(:out) { {fixed: Symbol} }

              UNKNOWN = :UNKNOWN
              UNDEFINED = :UNDEFINED
              SELF_SERVICE = :SELF_SERVICE
              FULL_SERVICE = :FULL_SERVICE
              NON_FUEL_ONLY = :NON_FUEL_ONLY
            end
          end
        end
      end
    end
  end
end
