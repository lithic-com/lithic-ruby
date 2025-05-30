# typed: strong

module Lithic
  module Models
    module Transactions
      module Events
        class EnhancedData < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Transactions::Events::EnhancedData,
                Lithic::Internal::AnyHash
              )
            end

          # A unique identifier for the enhanced commercial data.
          sig { returns(String) }
          attr_accessor :token

          sig { returns(Lithic::Transactions::Events::EnhancedData::Common) }
          attr_reader :common

          sig do
            params(
              common: Lithic::Transactions::Events::EnhancedData::Common::OrHash
            ).void
          end
          attr_writer :common

          # The token of the event that the enhanced data is associated with.
          sig { returns(String) }
          attr_accessor :event_token

          sig do
            returns(T::Array[Lithic::Transactions::Events::EnhancedData::Fleet])
          end
          attr_accessor :fleet

          # The token of the transaction that the enhanced data is associated with.
          sig { returns(String) }
          attr_accessor :transaction_token

          sig do
            params(
              token: String,
              common:
                Lithic::Transactions::Events::EnhancedData::Common::OrHash,
              event_token: String,
              fleet:
                T::Array[
                  Lithic::Transactions::Events::EnhancedData::Fleet::OrHash
                ],
              transaction_token: String
            ).returns(T.attached_class)
          end
          def self.new(
            # A unique identifier for the enhanced commercial data.
            token:,
            common:,
            # The token of the event that the enhanced data is associated with.
            event_token:,
            fleet:,
            # The token of the transaction that the enhanced data is associated with.
            transaction_token:
          )
          end

          sig do
            override.returns(
              {
                token: String,
                common: Lithic::Transactions::Events::EnhancedData::Common,
                event_token: String,
                fleet:
                  T::Array[Lithic::Transactions::Events::EnhancedData::Fleet],
                transaction_token: String
              }
            )
          end
          def to_hash
          end

          class Common < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Transactions::Events::EnhancedData::Common,
                  Lithic::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  Lithic::Transactions::Events::EnhancedData::Common::LineItem
                ]
              )
            end
            attr_accessor :line_items

            sig do
              returns(Lithic::Transactions::Events::EnhancedData::Common::Tax)
            end
            attr_reader :tax

            sig do
              params(
                tax:
                  Lithic::Transactions::Events::EnhancedData::Common::Tax::OrHash
              ).void
            end
            attr_writer :tax

            # A customer identifier.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_reference_number

            sig { params(customer_reference_number: String).void }
            attr_writer :customer_reference_number

            # A merchant identifier.
            sig { returns(T.nilable(String)) }
            attr_reader :merchant_reference_number

            sig { params(merchant_reference_number: String).void }
            attr_writer :merchant_reference_number

            # The date of the order.
            sig { returns(T.nilable(Date)) }
            attr_reader :order_date

            sig { params(order_date: Date).void }
            attr_writer :order_date

            sig do
              params(
                line_items:
                  T::Array[
                    Lithic::Transactions::Events::EnhancedData::Common::LineItem::OrHash
                  ],
                tax:
                  Lithic::Transactions::Events::EnhancedData::Common::Tax::OrHash,
                customer_reference_number: String,
                merchant_reference_number: String,
                order_date: Date
              ).returns(T.attached_class)
            end
            def self.new(
              line_items:,
              tax:,
              # A customer identifier.
              customer_reference_number: nil,
              # A merchant identifier.
              merchant_reference_number: nil,
              # The date of the order.
              order_date: nil
            )
            end

            sig do
              override.returns(
                {
                  line_items:
                    T::Array[
                      Lithic::Transactions::Events::EnhancedData::Common::LineItem
                    ],
                  tax: Lithic::Transactions::Events::EnhancedData::Common::Tax,
                  customer_reference_number: String,
                  merchant_reference_number: String,
                  order_date: Date
                }
              )
            end
            def to_hash
            end

            class LineItem < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::Transactions::Events::EnhancedData::Common::LineItem,
                    Lithic::Internal::AnyHash
                  )
                end

              # The price of the item purchased in merchant currency.
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              # A human-readable description of the item.
              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # An identifier for the item purchased.
              sig { returns(T.nilable(String)) }
              attr_reader :product_code

              sig { params(product_code: String).void }
              attr_writer :product_code

              # The quantity of the item purchased.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              # An L2/L3 enhanced commercial data line item.
              sig do
                params(
                  amount: Float,
                  description: String,
                  product_code: String,
                  quantity: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # The price of the item purchased in merchant currency.
                amount: nil,
                # A human-readable description of the item.
                description: nil,
                # An identifier for the item purchased.
                product_code: nil,
                # The quantity of the item purchased.
                quantity: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    description: String,
                    product_code: String,
                    quantity: Float
                  }
                )
              end
              def to_hash
              end
            end

            class Tax < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::Transactions::Events::EnhancedData::Common::Tax,
                    Lithic::Internal::AnyHash
                  )
                end

              # The amount of tax collected.
              sig { returns(T.nilable(Integer)) }
              attr_reader :amount

              sig { params(amount: Integer).void }
              attr_writer :amount

              # A flag indicating whether the transaction is tax exempt or not.
              sig do
                returns(
                  T.nilable(
                    Lithic::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol
                  )
                )
              end
              attr_reader :exempt

              sig do
                params(
                  exempt:
                    Lithic::Transactions::Events::EnhancedData::Common::Tax::Exempt::OrSymbol
                ).void
              end
              attr_writer :exempt

              # The tax ID of the merchant.
              sig { returns(T.nilable(String)) }
              attr_reader :merchant_tax_id

              sig { params(merchant_tax_id: String).void }
              attr_writer :merchant_tax_id

              sig do
                params(
                  amount: Integer,
                  exempt:
                    Lithic::Transactions::Events::EnhancedData::Common::Tax::Exempt::OrSymbol,
                  merchant_tax_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The amount of tax collected.
                amount: nil,
                # A flag indicating whether the transaction is tax exempt or not.
                exempt: nil,
                # The tax ID of the merchant.
                merchant_tax_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount: Integer,
                    exempt:
                      Lithic::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol,
                    merchant_tax_id: String
                  }
                )
              end
              def to_hash
              end

              # A flag indicating whether the transaction is tax exempt or not.
              module Exempt
                extend Lithic::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Lithic::Transactions::Events::EnhancedData::Common::Tax::Exempt
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TAX_INCLUDED =
                  T.let(
                    :TAX_INCLUDED,
                    Lithic::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol
                  )
                TAX_NOT_INCLUDED =
                  T.let(
                    :TAX_NOT_INCLUDED,
                    Lithic::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol
                  )
                NOT_SUPPORTED =
                  T.let(
                    :NOT_SUPPORTED,
                    Lithic::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Lithic::Transactions::Events::EnhancedData::Common::Tax::Exempt::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Fleet < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Transactions::Events::EnhancedData::Fleet,
                  Lithic::Internal::AnyHash
                )
              end

            sig do
              returns(
                Lithic::Transactions::Events::EnhancedData::Fleet::AmountTotals
              )
            end
            attr_reader :amount_totals

            sig do
              params(
                amount_totals:
                  Lithic::Transactions::Events::EnhancedData::Fleet::AmountTotals::OrHash
              ).void
            end
            attr_writer :amount_totals

            sig do
              returns(Lithic::Transactions::Events::EnhancedData::Fleet::Fuel)
            end
            attr_reader :fuel

            sig do
              params(
                fuel:
                  Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::OrHash
              ).void
            end
            attr_writer :fuel

            # The driver number entered into the terminal at the time of sale, with leading
            # zeros stripped.
            sig { returns(T.nilable(String)) }
            attr_reader :driver_number

            sig { params(driver_number: String).void }
            attr_writer :driver_number

            # The odometer reading entered into the terminal at the time of sale.
            sig { returns(T.nilable(Integer)) }
            attr_reader :odometer

            sig { params(odometer: Integer).void }
            attr_writer :odometer

            # The type of fuel service.
            sig do
              returns(
                T.nilable(
                  Lithic::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol
                )
              )
            end
            attr_reader :service_type

            sig do
              params(
                service_type:
                  Lithic::Transactions::Events::EnhancedData::Fleet::ServiceType::OrSymbol
              ).void
            end
            attr_writer :service_type

            # The vehicle number entered into the terminal at the time of sale, with leading
            # zeros stripped.
            sig { returns(T.nilable(String)) }
            attr_reader :vehicle_number

            sig { params(vehicle_number: String).void }
            attr_writer :vehicle_number

            sig do
              params(
                amount_totals:
                  Lithic::Transactions::Events::EnhancedData::Fleet::AmountTotals::OrHash,
                fuel:
                  Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::OrHash,
                driver_number: String,
                odometer: Integer,
                service_type:
                  Lithic::Transactions::Events::EnhancedData::Fleet::ServiceType::OrSymbol,
                vehicle_number: String
              ).returns(T.attached_class)
            end
            def self.new(
              amount_totals:,
              fuel:,
              # The driver number entered into the terminal at the time of sale, with leading
              # zeros stripped.
              driver_number: nil,
              # The odometer reading entered into the terminal at the time of sale.
              odometer: nil,
              # The type of fuel service.
              service_type: nil,
              # The vehicle number entered into the terminal at the time of sale, with leading
              # zeros stripped.
              vehicle_number: nil
            )
            end

            sig do
              override.returns(
                {
                  amount_totals:
                    Lithic::Transactions::Events::EnhancedData::Fleet::AmountTotals,
                  fuel: Lithic::Transactions::Events::EnhancedData::Fleet::Fuel,
                  driver_number: String,
                  odometer: Integer,
                  service_type:
                    Lithic::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol,
                  vehicle_number: String
                }
              )
            end
            def to_hash
            end

            class AmountTotals < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::Transactions::Events::EnhancedData::Fleet::AmountTotals,
                    Lithic::Internal::AnyHash
                  )
                end

              # The discount applied to the gross sale amount.
              sig { returns(T.nilable(Integer)) }
              attr_reader :discount

              sig { params(discount: Integer).void }
              attr_writer :discount

              # The gross sale amount.
              sig { returns(T.nilable(Integer)) }
              attr_reader :gross_sale

              sig { params(gross_sale: Integer).void }
              attr_writer :gross_sale

              # The amount after discount.
              sig { returns(T.nilable(Integer)) }
              attr_reader :net_sale

              sig { params(net_sale: Integer).void }
              attr_writer :net_sale

              sig do
                params(
                  discount: Integer,
                  gross_sale: Integer,
                  net_sale: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # The discount applied to the gross sale amount.
                discount: nil,
                # The gross sale amount.
                gross_sale: nil,
                # The amount after discount.
                net_sale: nil
              )
              end

              sig do
                override.returns(
                  { discount: Integer, gross_sale: Integer, net_sale: Integer }
                )
              end
              def to_hash
              end
            end

            class Fuel < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel,
                    Lithic::Internal::AnyHash
                  )
                end

              # The quantity of fuel purchased.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              # The type of fuel purchased.
              sig do
                returns(
                  T.nilable(
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::OrSymbol
                ).void
              end
              attr_writer :type

              # Unit of measure for fuel disbursement.
              sig do
                returns(
                  T.nilable(
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                )
              end
              attr_reader :unit_of_measure

              sig do
                params(
                  unit_of_measure:
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::OrSymbol
                ).void
              end
              attr_writer :unit_of_measure

              # The price per unit of fuel.
              sig { returns(T.nilable(Integer)) }
              attr_reader :unit_price

              sig { params(unit_price: Integer).void }
              attr_writer :unit_price

              sig do
                params(
                  quantity: Float,
                  type:
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::OrSymbol,
                  unit_of_measure:
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::OrSymbol,
                  unit_price: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # The quantity of fuel purchased.
                quantity: nil,
                # The type of fuel purchased.
                type: nil,
                # Unit of measure for fuel disbursement.
                unit_of_measure: nil,
                # The price per unit of fuel.
                unit_price: nil
              )
              end

              sig do
                override.returns(
                  {
                    quantity: Float,
                    type:
                      Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol,
                    unit_of_measure:
                      Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol,
                    unit_price: Integer
                  }
                )
              end
              def to_hash
              end

              # The type of fuel purchased.
              module Type
                extend Lithic::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                UNKNOWN =
                  T.let(
                    :UNKNOWN,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REGULAR =
                  T.let(
                    :REGULAR,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS =
                  T.let(
                    :MID_PLUS,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER =
                  T.let(
                    :PREMIUM_SUPER,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS_2 =
                  T.let(
                    :MID_PLUS_2,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_2 =
                  T.let(
                    :PREMIUM_SUPER_2,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                ETHANOL_5_7_BLEND =
                  T.let(
                    :ETHANOL_5_7_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS_ETHANOL_5_7_PERCENT_BLEND =
                  T.let(
                    :MID_PLUS_ETHANOL_5_7_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_ETHANOL_5_7_PERCENT_BLEND =
                  T.let(
                    :PREMIUM_SUPER_ETHANOL_5_7_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                ETHANOL_7_7_PERCENT_BLEND =
                  T.let(
                    :ETHANOL_7_7_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS_ETHANOL_7_7_PERCENT_BLEND =
                  T.let(
                    :MID_PLUS_ETHANOL_7_7_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                GREEN_GASOLINE_REGULAR =
                  T.let(
                    :GREEN_GASOLINE_REGULAR,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                GREEN_GASOLINE_MID_PLUS =
                  T.let(
                    :GREEN_GASOLINE_MID_PLUS,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                GREEN_GASOLINE_PREMIUM_SUPER =
                  T.let(
                    :GREEN_GASOLINE_PREMIUM_SUPER,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REGULAR_DIESEL_2 =
                  T.let(
                    :REGULAR_DIESEL_2,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_DIESEL_2 =
                  T.let(
                    :PREMIUM_DIESEL_2,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REGULAR_DIESEL_1 =
                  T.let(
                    :REGULAR_DIESEL_1,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                COMPRESSED_NATURAL_GAS =
                  T.let(
                    :COMPRESSED_NATURAL_GAS,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                LIQUID_PROPANE_GAS =
                  T.let(
                    :LIQUID_PROPANE_GAS,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                LIQUID_NATURAL_GAS =
                  T.let(
                    :LIQUID_NATURAL_GAS,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                E_85 =
                  T.let(
                    :E_85,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REFORMULATED_1 =
                  T.let(
                    :REFORMULATED_1,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REFORMULATED_2 =
                  T.let(
                    :REFORMULATED_2,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REFORMULATED_3 =
                  T.let(
                    :REFORMULATED_3,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REFORMULATED_4 =
                  T.let(
                    :REFORMULATED_4,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REFORMULATED_5 =
                  T.let(
                    :REFORMULATED_5,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_OFF_ROAD_1_AND_2_NON_TAXABLE =
                  T.let(
                    :DIESEL_OFF_ROAD_1_AND_2_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :DIESEL_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                UNDEFINED_FUEL =
                  T.let(
                    :UNDEFINED_FUEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                RACING_FUEL =
                  T.let(
                    :RACING_FUEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS_2_10_PERCENT_BLEND =
                  T.let(
                    :MID_PLUS_2_10_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_2_10_PERCENT_BLEND =
                  T.let(
                    :PREMIUM_SUPER_2_10_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS_ETHANOL_2_15_PERCENT_BLEND =
                  T.let(
                    :MID_PLUS_ETHANOL_2_15_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_ETHANOL_2_15_PERCENT_BLEND =
                  T.let(
                    :PREMIUM_SUPER_ETHANOL_2_15_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_ETHANOL_7_7_PERCENT_BLEND =
                  T.let(
                    :PREMIUM_SUPER_ETHANOL_7_7_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REGULAR_ETHANOL_10_PERCENT_BLEND =
                  T.let(
                    :REGULAR_ETHANOL_10_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS_ETHANOL_10_PERCENT_BLEND =
                  T.let(
                    :MID_PLUS_ETHANOL_10_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_ETHANOL_10_PERCENT_BLEND =
                  T.let(
                    :PREMIUM_SUPER_ETHANOL_10_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B2_DIESEL_BLEND_2_PERCENT_BIODIESEL =
                  T.let(
                    :B2_DIESEL_BLEND_2_PERCENT_BIODIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B5_DIESEL_BLEND_5_PERCENT_BIODIESEL =
                  T.let(
                    :B5_DIESEL_BLEND_5_PERCENT_BIODIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B10_DIESEL_BLEND_10_PERCENT_BIODIESEL =
                  T.let(
                    :B10_DIESEL_BLEND_10_PERCENT_BIODIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B11_DIESEL_BLEND_11_PERCENT_BIODIESEL =
                  T.let(
                    :B11_DIESEL_BLEND_11_PERCENT_BIODIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B15_DIESEL_BLEND_15_PERCENT_BIODIESEL =
                  T.let(
                    :B15_DIESEL_BLEND_15_PERCENT_BIODIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B20_DIESEL_BLEND_20_PERCENT_BIODIESEL =
                  T.let(
                    :B20_DIESEL_BLEND_20_PERCENT_BIODIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B100_DIESEL_BLEND_100_PERCENT_BIODIESEL =
                  T.let(
                    :B100_DIESEL_BLEND_100_PERCENT_BIODIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B1_DIESEL_BLEND_1_PERCENT_BIODIESEL =
                  T.let(
                    :B1_DIESEL_BLEND_1_PERCENT_BIODIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                ADDITIZED_DIESEL_2 =
                  T.let(
                    :ADDITIZED_DIESEL_2,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                ADDITIZED_DIESEL_3 =
                  T.let(
                    :ADDITIZED_DIESEL_3,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                RENEWABLE_DIESEL_R95 =
                  T.let(
                    :RENEWABLE_DIESEL_R95,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                RENEWABLE_DIESEL_BIODIESEL_6_20_PERCENT =
                  T.let(
                    :RENEWABLE_DIESEL_BIODIESEL_6_20_PERCENT,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_EXHAUST_FLUID =
                  T.let(
                    :DIESEL_EXHAUST_FLUID,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_DIESEL_1 =
                  T.let(
                    :PREMIUM_DIESEL_1,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                REGULAR_ETHANOL_15_PERCENT_BLEND =
                  T.let(
                    :REGULAR_ETHANOL_15_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MID_PLUS_ETHANOL_15_PERCENT_BLEND =
                  T.let(
                    :MID_PLUS_ETHANOL_15_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_SUPER_ETHANOL_15_PERCENT_BLEND =
                  T.let(
                    :PREMIUM_SUPER_ETHANOL_15_PERCENT_BLEND,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_DIESEL_BLEND_LESS_THAN_20_PERCENT_BIODIESEL =
                  T.let(
                    :PREMIUM_DIESEL_BLEND_LESS_THAN_20_PERCENT_BIODIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                PREMIUM_DIESEL_BLEND_GREATER_THAN_20_PERCENT_BIODIESEL =
                  T.let(
                    :PREMIUM_DIESEL_BLEND_GREATER_THAN_20_PERCENT_BIODIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B75_DIESEL_BLEND_75_PERCENT_BIODIESEL =
                  T.let(
                    :B75_DIESEL_BLEND_75_PERCENT_BIODIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                B99_DIESEL_BLEND_99_PERCENT_BIODIESEL =
                  T.let(
                    :B99_DIESEL_BLEND_99_PERCENT_BIODIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MISCELLANEOUS_FUEL =
                  T.let(
                    :MISCELLANEOUS_FUEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                JET_FUEL =
                  T.let(
                    :JET_FUEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                AVIATION_FUEL_REGULAR =
                  T.let(
                    :AVIATION_FUEL_REGULAR,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                AVIATION_FUEL_PREMIUM =
                  T.let(
                    :AVIATION_FUEL_PREMIUM,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                AVIATION_FUEL_JP8 =
                  T.let(
                    :AVIATION_FUEL_JP8,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                AVIATION_FUEL_4 =
                  T.let(
                    :AVIATION_FUEL_4,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                AVIATION_FUEL_5 =
                  T.let(
                    :AVIATION_FUEL_5,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIOJET_DIESEL =
                  T.let(
                    :BIOJET_DIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                AVIATION_BIOFUEL_GASOLINE =
                  T.let(
                    :AVIATION_BIOFUEL_GASOLINE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MISCELLANEOUS_AVIATION_FUEL =
                  T.let(
                    :MISCELLANEOUS_AVIATION_FUEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MARINE_FUEL_1 =
                  T.let(
                    :MARINE_FUEL_1,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MARINE_FUEL_2 =
                  T.let(
                    :MARINE_FUEL_2,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MARINE_FUEL_3 =
                  T.let(
                    :MARINE_FUEL_3,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MARINE_FUEL_4 =
                  T.let(
                    :MARINE_FUEL_4,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MARINE_FUEL_5 =
                  T.let(
                    :MARINE_FUEL_5,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MARINE_OTHER =
                  T.let(
                    :MARINE_OTHER,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MARINE_DIESEL =
                  T.let(
                    :MARINE_DIESEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MISCELLANEOUS_MARINE_FUEL =
                  T.let(
                    :MISCELLANEOUS_MARINE_FUEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                KEROSENE_LOW_SULFUR =
                  T.let(
                    :KEROSENE_LOW_SULFUR,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                WHITE_GAS =
                  T.let(
                    :WHITE_GAS,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                HEATING_OIL =
                  T.let(
                    :HEATING_OIL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                OTHER_FUEL_NON_TAXABLE =
                  T.let(
                    :OTHER_FUEL_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                KEROSENE_ULTRA_LOW_SULFUR =
                  T.let(
                    :KEROSENE_ULTRA_LOW_SULFUR,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                KEROSENE_LOW_SULFUR_NON_TAXABLE =
                  T.let(
                    :KEROSENE_LOW_SULFUR_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                KEROSENE_ULTRA_LOW_SULFUR_NON_TAXABLE =
                  T.let(
                    :KEROSENE_ULTRA_LOW_SULFUR_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                EVC_1_LEVEL_1_CHARGE_110_V_15_AMP =
                  T.let(
                    :EVC_1_LEVEL_1_CHARGE_110V_15_AMP,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                EVC_2_LEVEL_2_CHARGE_240_V_15_40_AMP =
                  T.let(
                    :EVC_2_LEVEL_2_CHARGE_240V_15_40_AMP,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                EVC_3_LEVEL_3_CHARGE_480_V_3_PHASE_CHARGE =
                  T.let(
                    :EVC_3_LEVEL_3_CHARGE_480V_3_PHASE_CHARGE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_2_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_2_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_5_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_5_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_10_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_10_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_11_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_11_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_15_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_15_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_20_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_20_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_1_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :DIESEL_1_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_2_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :DIESEL_2_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_1_PREMIUM_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :DIESEL_1_PREMIUM_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                DIESEL_2_PREMIUM_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :DIESEL_2_PREMIUM_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                ADDITIVE_DOSAGE =
                  T.let(
                    :ADDITIVE_DOSAGE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                ETHANOL_BLENDS_E16_E84 =
                  T.let(
                    :ETHANOL_BLENDS_E16_E84,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                LOW_OCTANE_UNL =
                  T.let(
                    :LOW_OCTANE_UNL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BLENDED_DIESEL_1_AND_2 =
                  T.let(
                    :BLENDED_DIESEL_1_AND_2,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                OFF_ROAD_REGULAR_NON_TAXABLE =
                  T.let(
                    :OFF_ROAD_REGULAR_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                OFF_ROAD_MID_PLUS_NON_TAXABLE =
                  T.let(
                    :OFF_ROAD_MID_PLUS_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                OFF_ROAD_PREMIUM_SUPER_NON_TAXABLE =
                  T.let(
                    :OFF_ROAD_PREMIUM_SUPER_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                OFF_ROAD_MID_PLUS_2_NON_TAXABLE =
                  T.let(
                    :OFF_ROAD_MID_PLUS_2_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                OFF_ROAD_PREMIUM_SUPER_2_NON_TAXABLE =
                  T.let(
                    :OFF_ROAD_PREMIUM_SUPER_2_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                RECREATIONAL_FUEL_90_OCTANE =
                  T.let(
                    :RECREATIONAL_FUEL_90_OCTANE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                HYDROGEN_H35 =
                  T.let(
                    :HYDROGEN_H35,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                HYDROGEN_H70 =
                  T.let(
                    :HYDROGEN_H70,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                RENEWABLE_DIESEL_R95_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :RENEWABLE_DIESEL_R95_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_1_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_1_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_75_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_75_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_99_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_99_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                BIODIESEL_BLEND_100_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :BIODIESEL_BLEND_100_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                RENEWABLE_DIESEL_BIODIESEL_6_20_PERCENT_OFF_ROAD_NON_TAXABLE =
                  T.let(
                    :RENEWABLE_DIESEL_BIODIESEL_6_20_PERCENT_OFF_ROAD_NON_TAXABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )
                MISCELLANEOUS_OTHER_FUEL =
                  T.let(
                    :MISCELLANEOUS_OTHER_FUEL,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Unit of measure for fuel disbursement.
              module UnitOfMeasure
                extend Lithic::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GALLONS =
                  T.let(
                    :GALLONS,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                LITERS =
                  T.let(
                    :LITERS,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                POUNDS =
                  T.let(
                    :POUNDS,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                KILOGRAMS =
                  T.let(
                    :KILOGRAMS,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                IMPERIAL_GALLONS =
                  T.let(
                    :IMPERIAL_GALLONS,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                NOT_APPLICABLE =
                  T.let(
                    :NOT_APPLICABLE,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )
                UNKNOWN =
                  T.let(
                    :UNKNOWN,
                    Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Lithic::Transactions::Events::EnhancedData::Fleet::Fuel::UnitOfMeasure::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # The type of fuel service.
            module ServiceType
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::Transactions::Events::EnhancedData::Fleet::ServiceType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UNKNOWN =
                T.let(
                  :UNKNOWN,
                  Lithic::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol
                )
              UNDEFINED =
                T.let(
                  :UNDEFINED,
                  Lithic::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol
                )
              SELF_SERVICE =
                T.let(
                  :SELF_SERVICE,
                  Lithic::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol
                )
              FULL_SERVICE =
                T.let(
                  :FULL_SERVICE,
                  Lithic::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol
                )
              NON_FUEL_ONLY =
                T.let(
                  :NON_FUEL_ONLY,
                  Lithic::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Transactions::Events::EnhancedData::Fleet::ServiceType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
