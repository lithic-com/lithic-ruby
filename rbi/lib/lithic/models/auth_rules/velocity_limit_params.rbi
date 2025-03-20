# typed: strong

module Lithic
  module Models
    module AuthRules
      class VelocityLimitParams < Lithic::BaseModel
        sig { returns(Lithic::Models::AuthRules::VelocityLimitParams::Filters) }
        def filters
        end

        sig do
          params(_: Lithic::Models::AuthRules::VelocityLimitParams::Filters)
            .returns(Lithic::Models::AuthRules::VelocityLimitParams::Filters)
        end
        def filters=(_)
        end

        # The size of the trailing window to calculate Spend Velocity over in seconds. The
        #   minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
        sig { returns(T.any(Integer, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::OrSymbol)) }
        def period
        end

        sig do
          params(_: T.any(Integer, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::OrSymbol))
            .returns(T.any(Integer, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::OrSymbol))
        end
        def period=(_)
        end

        sig { returns(Lithic::Models::AuthRules::VelocityLimitParams::Scope::OrSymbol) }
        def scope
        end

        sig do
          params(_: Lithic::Models::AuthRules::VelocityLimitParams::Scope::OrSymbol)
            .returns(Lithic::Models::AuthRules::VelocityLimitParams::Scope::OrSymbol)
        end
        def scope=(_)
        end

        # The maximum amount of spend velocity allowed in the period in minor units (the
        #   smallest unit of a currency, e.g. cents for USD). Transactions exceeding this
        #   limit will be declined.
        sig { returns(T.nilable(Integer)) }
        def limit_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit_amount=(_)
        end

        # The number of spend velocity impacting transactions may not exceed this limit in
        #   the period. Transactions exceeding this limit will be declined. A spend velocity
        #   impacting transaction is a transaction that has been authorized, and optionally
        #   settled, or a force post (a transaction that settled without prior
        #   authorization).
        sig { returns(T.nilable(Integer)) }
        def limit_count
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit_count=(_)
        end

        sig do
          params(
            filters: Lithic::Models::AuthRules::VelocityLimitParams::Filters,
            period: T.any(Integer, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::OrSymbol),
            scope: Lithic::Models::AuthRules::VelocityLimitParams::Scope::OrSymbol,
            limit_amount: T.nilable(Integer),
            limit_count: T.nilable(Integer)
          )
            .returns(T.attached_class)
        end
        def self.new(filters:, period:, scope:, limit_amount: nil, limit_count: nil)
        end

        sig do
          override
            .returns(
              {
                filters: Lithic::Models::AuthRules::VelocityLimitParams::Filters,
                period: T.any(Integer, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::OrSymbol),
                scope: Lithic::Models::AuthRules::VelocityLimitParams::Scope::OrSymbol,
                limit_amount: T.nilable(Integer),
                limit_count: T.nilable(Integer)
              }
            )
        end
        def to_hash
        end

        class Filters < Lithic::BaseModel
          # ISO-3166-1 alpha-3 Country Codes to exclude from the velocity calculation.
          #   Transactions matching any of the provided will be excluded from the calculated
          #   velocity.
          sig { returns(T.nilable(T::Array[String])) }
          def exclude_countries
          end

          sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def exclude_countries=(_)
          end

          # Merchant Category Codes to exclude from the velocity calculation. Transactions
          #   matching this MCC will be excluded from the calculated velocity.
          sig { returns(T.nilable(T::Array[String])) }
          def exclude_mccs
          end

          sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def exclude_mccs=(_)
          end

          # ISO-3166-1 alpha-3 Country Codes to include in the velocity calculation.
          #   Transactions not matching any of the provided will not be included in the
          #   calculated velocity.
          sig { returns(T.nilable(T::Array[String])) }
          def include_countries
          end

          sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include_countries=(_)
          end

          # Merchant Category Codes to include in the velocity calculation. Transactions not
          #   matching this MCC will not be included in the calculated velocity.
          sig { returns(T.nilable(T::Array[String])) }
          def include_mccs
          end

          sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include_mccs=(_)
          end

          sig do
            params(
              exclude_countries: T.nilable(T::Array[String]),
              exclude_mccs: T.nilable(T::Array[String]),
              include_countries: T.nilable(T::Array[String]),
              include_mccs: T.nilable(T::Array[String])
            )
              .returns(T.attached_class)
          end
          def self.new(exclude_countries: nil, exclude_mccs: nil, include_countries: nil, include_mccs: nil)
          end

          sig do
            override
              .returns(
                {
                  exclude_countries: T.nilable(T::Array[String]),
                  exclude_mccs: T.nilable(T::Array[String]),
                  include_countries: T.nilable(T::Array[String]),
                  include_mccs: T.nilable(T::Array[String])
                }
              )
          end
          def to_hash
          end
        end

        # The size of the trailing window to calculate Spend Velocity over in seconds. The
        #   minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
        module Period
          extend Lithic::Union

          Variants =
            type_template(:out) { {fixed: T.any(Integer, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::OrSymbol)} }
        end

        module Scope
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AuthRules::VelocityLimitParams::Scope) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::AuthRules::VelocityLimitParams::Scope::TaggedSymbol) }

          CARD = T.let(:CARD, Lithic::Models::AuthRules::VelocityLimitParams::Scope::OrSymbol)
          ACCOUNT = T.let(:ACCOUNT, Lithic::Models::AuthRules::VelocityLimitParams::Scope::OrSymbol)
        end
      end
    end
  end
end
