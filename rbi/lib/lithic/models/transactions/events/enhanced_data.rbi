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
            params(_: T.any(Lithic::Models::Transactions::Events::EnhancedData::Common, Lithic::Util::AnyHash))
              .returns(T.any(Lithic::Models::Transactions::Events::EnhancedData::Common, Lithic::Util::AnyHash))
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
              common: T.any(Lithic::Models::Transactions::Events::EnhancedData::Common, Lithic::Util::AnyHash),
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
              params(_: T.any(Lithic::Models::Transactions::Events::EnhancedData::Common::Tax, Lithic::Util::AnyHash))
                .returns(T.any(Lithic::Models::Transactions::Events::EnhancedData::Common::Tax, Lithic::Util::AnyHash))
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
                tax: T.any(Lithic::Models::Transactions::Events::EnhancedData::Common::Tax, Lithic::Util::AnyHash),
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
              sig { returns(T.nilable(Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol)) }
              def exempt
              end

              sig do
                params(_: Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol)
                  .returns(Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol)
              end
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
                params(
                  amount: Integer,
                  exempt: Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol,
                  merchant_tax_id: String
                )
                  .returns(T.attached_class)
              end
              def self.new(amount: nil, exempt: nil, merchant_tax_id: nil)
              end

              sig do
                override
                  .returns(
                    {
                      amount: Integer,
                      exempt: Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol,
                      merchant_tax_id: String
                    }
                  )
              end
              def to_hash
              end

              # A flag indicating whether the transaction is tax exempt or not.
              module Exempt
                extend Lithic::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt) }
                OrSymbol =
                  T.type_alias { T.any(Symbol, Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol) }

                TAX_INCLUDED =
                  T.let(
                    :TAX_INCLUDED,
                    Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol
                  )
                TAX_NOT_INCLUDED =
                  T.let(
                    :TAX_NOT_INCLUDED,
                    Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol
                  )
                NOT_SUPPORTED =
                  T.let(
                    :NOT_SUPPORTED,
                    Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(T::Array[Lithic::Models::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol])
                  end
                  def values
                  end
                end
              end
            end
          end

          class Fleet < Lithic::BaseModel
            sig { returns(Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals) }
            def amount_totals
            end

            sig do
              params(
                _: T.any(Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals, Lithic::Util::AnyHash)
              )
                .returns(
                  T.any(Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals, Lithic::Util::AnyHash)
                )
            end
            def amount_totals=(_)
            end

            sig { returns(Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel) }
            def fuel
            end

            sig do
              params(_: T.any(Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel, Lithic::Util::AnyHash))
                .returns(T.any(Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel, Lithic::Util::AnyHash))
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
            sig { returns(T.nilable(Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol)) }
            def service_type
            end

            sig do
              params(_: Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol)
                .returns(Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol)
            end
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
                amount_totals: T.any(Lithic::Models::Transactions::Events::EnhancedData::Fleet::AmountTotals, Lithic::Util::AnyHash),
                fuel: T.any(Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel, Lithic::Util::AnyHash),
                driver_number: String,
                odometer: Integer,
                service_type: Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol,
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
                    service_type: Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol,
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
              sig { returns(T.nilable(Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)) }
              def type
              end

              sig do
                params(_: Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                  .returns(Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
              end
              def type=(_)
              end

              # Unit of measure for fuel disbursement.
              sig do
                returns(
                  T.nilable(Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol)
                )
              end
              def unit_of_measure
              end

              sig do
                params(_: Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol)
                  .returns(Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol)
              end
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
                params(
                  quantity: Float,
                  type: Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol,
                  unit_of_measure: Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol,
                  unit_price: Integer
                )
                  .returns(T.attached_class)
              end
              def self.new(quantity: nil, type: nil, unit_of_measure: nil, unit_price: nil)
              end

              sig do
                override
                  .returns(
                    {
                      quantity: Float,
                      type: Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol,
                      unit_of_measure: Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol,
                      unit_price: Integer
                    }
                  )
              end
              def to_hash
              end

              # The type of fuel purchased.
              module Type
                extend Lithic::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type) }
                OrSymbol =
                  T.type_alias { T.any(Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol) }

                UNKNOWN =
                  T.let(:UNKNOWN, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                REGULAR =
                  T.let(:REGULAR, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                MID_PLUS =
                  T.let(:MID_PLUS, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                PREMIUM_SUPER =
                  T.let(:PREMIUM_SUPER, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                MID_PLUS_2 =
                  T.let(:MID_PLUS_2, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                PREMIUM_SUPER_2 =
                  T.let(
                    :PREMIUM_SUPER_2,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                ETHANOL_5_7_BLEND =
                  T.let(
                    :ETHANOL_5_7_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS_ETHANOL_5_7_PERCENT_BLEND =
                  T.let(
                    :MID_PLUS_ETHANOL_5_7_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_ETHANOL_5_7_PERCENT_BLEND =
                  T.let(
                    :PREMIUM_SUPER_ETHANOL_5_7_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                ETHANOL_7_7_PERCENT_BLEND =
                  T.let(
                    :ETHANOL_7_7_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS_ETHANOL_7_7_PERCENT_BLEND =
                  T.let(
                    :MID_PLUS_ETHANOL_7_7_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                GREEN_GASOLINE_REGULAR =
                  T.let(
                    :GREEN_GASOLINE_REGULAR,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                GREEN_GASOLINE_MID_PLUS =
                  T.let(
                    :GREEN_GASOLINE_MID_PLUS,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                GREEN_GASOLINE_PREMIUM_SUPER =
                  T.let(
                    :GREEN_GASOLINE_PREMIUM_SUPER,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REGULAR_DIESEL_2 =
                  T.let(
                    :REGULAR_DIESEL_2,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_DIESEL_2 =
                  T.let(
                    :PREMIUM_DIESEL_2,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REGULAR_DIESEL_1 =
                  T.let(
                    :REGULAR_DIESEL_1,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                COMPRESSED_NATURAL_GAS =
                  T.let(
                    :COMPRESSED_NATURAL_GAS,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                LIQUID_PROPANE_GAS =
                  T.let(
                    :LIQUID_PROPANE_GAS,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                LIQUID_NATURAL_GAS =
                  T.let(
                    :LIQUID_NATURAL_GAS,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                E_85 = T.let(:E_85, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                REFORMULATED_1 =
                  T.let(
                    :REFORMULATED_1,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REFORMULATED_2 =
                  T.let(
                    :REFORMULATED_2,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REFORMULATED_3 =
                  T.let(
                    :REFORMULATED_3,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REFORMULATED_4 =
                  T.let(
                    :REFORMULATED_4,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REFORMULATED_5 =
                  T.let(
                    :REFORMULATED_5,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_OFF_ROAD_1_AND_2_NON_TAXABLE =
                  T.let(
                    :DIESEL_OFF_ROAD_1_AND_2_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :DIESEL_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                UNDEFINED_FUEL =
                  T.let(
                    :UNDEFINED_FUEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                RACING_FUEL =
                  T.let(:RACING_FUEL, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                MID_PLUS_2_10_PERCENT_BLEND =
                  T.let(
                    :MID_PLUS_2_10_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_2_10_PERCENT_BLEND =
                  T.let(
                    :PREMIUM_SUPER_2_10_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS_ETHANOL_2_15_PERCENT_BLEND =
                  T.let(
                    :MID_PLUS_ETHANOL_2_15_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_ETHANOL_2_15_PERCENT_BLEND =
                  T.let(
                    :PREMIUM_SUPER_ETHANOL_2_15_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_ETHANOL_7_7_PERCENT_BLEND =
                  T.let(
                    :PREMIUM_SUPER_ETHANOL_7_7_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REGULAR_ETHANOL_10_PERCENT_BLEND =
                  T.let(
                    :REGULAR_ETHANOL_10_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS_ETHANOL_10_PERCENT_BLEND =
                  T.let(
                    :MID_PLUS_ETHANOL_10_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_ETHANOL_10_PERCENT_BLEND =
                  T.let(
                    :PREMIUM_SUPER_ETHANOL_10_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B2_DIESEL_BLEND_2_PERCENT_BIODIESEL =
                  T.let(
                    :B2_DIESEL_BLEND_2_PERCENT_BIODIESEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B5_DIESEL_BLEND_5_PERCENT_BIODIESEL =
                  T.let(
                    :B5_DIESEL_BLEND_5_PERCENT_BIODIESEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B10_DIESEL_BLEND_10_PERCENT_BIODIESEL =
                  T.let(
                    :B10_DIESEL_BLEND_10_PERCENT_BIODIESEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B11_DIESEL_BLEND_11_PERCENT_BIODIESEL =
                  T.let(
                    :B11_DIESEL_BLEND_11_PERCENT_BIODIESEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B15_DIESEL_BLEND_15_PERCENT_BIODIESEL =
                  T.let(
                    :B15_DIESEL_BLEND_15_PERCENT_BIODIESEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B20_DIESEL_BLEND_20_PERCENT_BIODIESEL =
                  T.let(
                    :B20_DIESEL_BLEND_20_PERCENT_BIODIESEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B100_DIESEL_BLEND_100_PERCENT_BIODIESEL =
                  T.let(
                    :B100_DIESEL_BLEND_100_PERCENT_BIODIESEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B1_DIESEL_BLEND_1_PERCENT_BIODIESEL =
                  T.let(
                    :B1_DIESEL_BLEND_1_PERCENT_BIODIESEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                ADDITIZED_DIESEL_2 =
                  T.let(
                    :ADDITIZED_DIESEL_2,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                ADDITIZED_DIESEL_3 =
                  T.let(
                    :ADDITIZED_DIESEL_3,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                RENEWABLE_DIESEL_R95 =
                  T.let(
                    :RENEWABLE_DIESEL_R95,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                RENEWABLE_DIESEL_BIODIESEL_6_20_PERCENT =
                  T.let(
                    :RENEWABLE_DIESEL_BIODIESEL_6_20_PERCENT,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_EXHAUST_FLUID =
                  T.let(
                    :DIESEL_EXHAUST_FLUID,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_DIESEL_1 =
                  T.let(
                    :PREMIUM_DIESEL_1,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REGULAR_ETHANOL_15_PERCENT_BLEND =
                  T.let(
                    :REGULAR_ETHANOL_15_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS_ETHANOL_15_PERCENT_BLEND =
                  T.let(
                    :MID_PLUS_ETHANOL_15_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_ETHANOL_15_PERCENT_BLEND =
                  T.let(
                    :PREMIUM_SUPER_ETHANOL_15_PERCENT_BLEND,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_DIESEL_BLEND_LESS_THAN_20_PERCENT_BIODIESEL =
                  T.let(
                    :PREMIUM_DIESEL_BLEND_LESS_THAN_20_PERCENT_BIODIESEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_DIESEL_BLEND_GREATER_THAN_20_PERCENT_BIODIESEL =
                  T.let(
                    :PREMIUM_DIESEL_BLEND_GREATER_THAN_20_PERCENT_BIODIESEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B75_DIESEL_BLEND_75_PERCENT_BIODIESEL =
                  T.let(
                    :B75_DIESEL_BLEND_75_PERCENT_BIODIESEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B99_DIESEL_BLEND_99_PERCENT_BIODIESEL =
                  T.let(
                    :B99_DIESEL_BLEND_99_PERCENT_BIODIESEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MISCELLANEOUS_FUEL =
                  T.let(
                    :MISCELLANEOUS_FUEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                JET_FUEL =
                  T.let(:JET_FUEL, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                AVIATION_FUEL_REGULAR =
                  T.let(
                    :AVIATION_FUEL_REGULAR,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                AVIATION_FUEL_PREMIUM =
                  T.let(
                    :AVIATION_FUEL_PREMIUM,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                AVIATION_FUEL_JP8 =
                  T.let(
                    :AVIATION_FUEL_JP8,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                AVIATION_FUEL_4 =
                  T.let(
                    :AVIATION_FUEL_4,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                AVIATION_FUEL_5 =
                  T.let(
                    :AVIATION_FUEL_5,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIOJET_DIESEL =
                  T.let(:BIOJET_DIESEL, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                AVIATION_BIOFUEL_GASOLINE =
                  T.let(
                    :AVIATION_BIOFUEL_GASOLINE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MISCELLANEOUS_AVIATION_FUEL =
                  T.let(
                    :MISCELLANEOUS_AVIATION_FUEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MARINE_FUEL_1 =
                  T.let(:MARINE_FUEL_1, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                MARINE_FUEL_2 =
                  T.let(:MARINE_FUEL_2, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                MARINE_FUEL_3 =
                  T.let(:MARINE_FUEL_3, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                MARINE_FUEL_4 =
                  T.let(:MARINE_FUEL_4, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                MARINE_FUEL_5 =
                  T.let(:MARINE_FUEL_5, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                MARINE_OTHER =
                  T.let(:MARINE_OTHER, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                MARINE_DIESEL =
                  T.let(:MARINE_DIESEL, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                MISCELLANEOUS_MARINE_FUEL =
                  T.let(
                    :MISCELLANEOUS_MARINE_FUEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                KEROSENE_LOW_SULFUR =
                  T.let(
                    :KEROSENE_LOW_SULFUR,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                WHITE_GAS =
                  T.let(:WHITE_GAS, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                HEATING_OIL =
                  T.let(:HEATING_OIL, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                OTHER_FUEL_NON_TAXABLE =
                  T.let(
                    :OTHER_FUEL_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                KEROSENE_ULTRA_LOW_SULFUR =
                  T.let(
                    :KEROSENE_ULTRA_LOW_SULFUR,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                KEROSENE_LOW_SULFUR_NON_TAXABLE =
                  T.let(
                    :KEROSENE_LOW_SULFUR_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                KEROSENE_ULTRA_LOW_SULFUR_NON_TAXABLE =
                  T.let(
                    :KEROSENE_ULTRA_LOW_SULFUR_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                EVC_1_LEVEL_1_CHARGE_110_V_15_AMP =
                  T.let(
                    :EVC_1_LEVEL_1_CHARGE_110V_15_AMP,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                EVC_2_LEVEL_2_CHARGE_240_V_15_40_AMP =
                  T.let(
                    :EVC_2_LEVEL_2_CHARGE_240V_15_40_AMP,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                EVC_3_LEVEL_3_CHARGE_480_V_3_PHASE_CHARGE =
                  T.let(
                    :EVC_3_LEVEL_3_CHARGE_480V_3_PHASE_CHARGE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_2_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_2_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_5_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_5_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_10_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_10_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_11_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_11_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_15_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_15_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_20_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_20_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_1_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :DIESEL_1_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_2_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :DIESEL_2_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_1_PREMIUM_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :DIESEL_1_PREMIUM_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_2_PREMIUM_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :DIESEL_2_PREMIUM_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                ADDITIVE_DOSAGE =
                  T.let(
                    :ADDITIVE_DOSAGE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                ETHANOL_BLENDS_E16_E84 =
                  T.let(
                    :ETHANOL_BLENDS_E16_E84,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                LOW_OCTANE_UNL =
                  T.let(
                    :LOW_OCTANE_UNL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BLENDED_DIESEL_1_AND_2 =
                  T.let(
                    :BLENDED_DIESEL_1_AND_2,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                OFF_ROAD_REGULAR_NON_TAXABLE =
                  T.let(
                    :OFF_ROAD_REGULAR_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                OFF_ROAD_MID_PLUS_NON_TAXABLE =
                  T.let(
                    :OFF_ROAD_MID_PLUS_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                OFF_ROAD_PREMIUM_SUPER_NON_TAXABLE =
                  T.let(
                    :OFF_ROAD_PREMIUM_SUPER_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                OFF_ROAD_MID_PLUS_2_NON_TAXABLE =
                  T.let(
                    :OFF_ROAD_MID_PLUS_2_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                OFF_ROAD_PREMIUM_SUPER_2_NON_TAXABLE =
                  T.let(
                    :OFF_ROAD_PREMIUM_SUPER_2_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                RECREATIONAL_FUEL_90_OCTANE =
                  T.let(
                    :RECREATIONAL_FUEL_90_OCTANE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                HYDROGEN_H35 =
                  T.let(:HYDROGEN_H35, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                HYDROGEN_H70 =
                  T.let(:HYDROGEN_H70, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol)
                RENEWABLE_DIESEL_R95_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :RENEWABLE_DIESEL_R95_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_1_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_1_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_75_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_75_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_99_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_99_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_100_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_100_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                RENEWABLE_DIESEL_BIODIESEL_6_20_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :RENEWABLE_DIESEL_BIODIESEL_6_20_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MISCELLANEOUS_OTHER_FUEL =
                  T.let(
                    :MISCELLANEOUS_OTHER_FUEL,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(T::Array[Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol])
                  end
                  def values
                  end
                end
              end

              # Unit of measure for fuel disbursement.
              module UnitOfMeasure
                extend Lithic::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure) }
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                    )
                  end

                GALLONS =
                  T.let(
                    :GALLONS,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                LITERS =
                  T.let(
                    :LITERS,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                POUNDS =
                  T.let(
                    :POUNDS,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                KILOGRAMS =
                  T.let(
                    :KILOGRAMS,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                IMPERIAL_GALLONS =
                  T.let(
                    :IMPERIAL_GALLONS,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                NOT_APPLICABLE =
                  T.let(
                    :NOT_APPLICABLE,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                UNKNOWN =
                  T.let(
                    :UNKNOWN,
                    Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[Lithic::Models::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol]
                      )
                  end
                  def values
                  end
                end
              end
            end

            # The type of fuel service.
            module ServiceType
              extend Lithic::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType) }
              OrSymbol =
                T.type_alias { T.any(Symbol, Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol) }

              UNKNOWN =
                T.let(:UNKNOWN, Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol)
              UNDEFINED =
                T.let(:UNDEFINED, Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol)
              SELF_SERVICE =
                T.let(:SELF_SERVICE, Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol)
              FULL_SERVICE =
                T.let(:FULL_SERVICE, Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol)
              NON_FUEL_ONLY =
                T.let(
                  :NON_FUEL_ONLY,
                  Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(T::Array[Lithic::Models::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol])
                end
                def values
                end
              end
            end
          end
        end
      end
    end
  end
end
