# typed: strong

module Lithic
  module Models
    module AuthRules
      class VelocityLimitParams < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::VelocityLimitParams,
              Lithic::Internal::AnyHash
            )
          end

        # Velocity over the current day since 00:00 / 12 AM in Eastern Time
        sig do
          returns(
            T.any(
              Lithic::AuthRules::VelocityLimitPeriod::TrailingWindowObject,
              Lithic::AuthRules::VelocityLimitPeriod::FixedWindowDay,
              Lithic::AuthRules::VelocityLimitPeriod::FixedWindowWeek,
              Lithic::AuthRules::VelocityLimitPeriod::FixedWindowMonth,
              Lithic::AuthRules::VelocityLimitPeriod::FixedWindowYear
            )
          )
        end
        attr_accessor :period

        # The scope the velocity is calculated for
        sig { returns(Lithic::AuthRules::VelocityLimitParams::Scope::OrSymbol) }
        attr_accessor :scope

        sig { returns(T.nilable(Lithic::AuthRules::VelocityLimitFilters)) }
        attr_reader :filters

        sig do
          params(filters: Lithic::AuthRules::VelocityLimitFilters::OrHash).void
        end
        attr_writer :filters

        # The maximum amount of spend velocity allowed in the period in minor units (the
        # smallest unit of a currency, e.g. cents for USD). Transactions exceeding this
        # limit will be declined.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit_amount

        # The number of spend velocity impacting transactions may not exceed this limit in
        # the period. Transactions exceeding this limit will be declined. A spend velocity
        # impacting transaction is a transaction that has been authorized, and optionally
        # settled, or a force post (a transaction that settled without prior
        # authorization).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit_count

        sig do
          params(
            period:
              T.any(
                Lithic::AuthRules::VelocityLimitPeriod::TrailingWindowObject::OrHash,
                Lithic::AuthRules::VelocityLimitPeriod::FixedWindowDay::OrHash,
                Lithic::AuthRules::VelocityLimitPeriod::FixedWindowWeek::OrHash,
                Lithic::AuthRules::VelocityLimitPeriod::FixedWindowMonth::OrHash,
                Lithic::AuthRules::VelocityLimitPeriod::FixedWindowYear::OrHash
              ),
            scope: Lithic::AuthRules::VelocityLimitParams::Scope::OrSymbol,
            filters: Lithic::AuthRules::VelocityLimitFilters::OrHash,
            limit_amount: T.nilable(Integer),
            limit_count: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # Velocity over the current day since 00:00 / 12 AM in Eastern Time
          period:,
          # The scope the velocity is calculated for
          scope:,
          filters: nil,
          # The maximum amount of spend velocity allowed in the period in minor units (the
          # smallest unit of a currency, e.g. cents for USD). Transactions exceeding this
          # limit will be declined.
          limit_amount: nil,
          # The number of spend velocity impacting transactions may not exceed this limit in
          # the period. Transactions exceeding this limit will be declined. A spend velocity
          # impacting transaction is a transaction that has been authorized, and optionally
          # settled, or a force post (a transaction that settled without prior
          # authorization).
          limit_count: nil
        )
        end

        sig do
          override.returns(
            {
              period:
                T.any(
                  Lithic::AuthRules::VelocityLimitPeriod::TrailingWindowObject,
                  Lithic::AuthRules::VelocityLimitPeriod::FixedWindowDay,
                  Lithic::AuthRules::VelocityLimitPeriod::FixedWindowWeek,
                  Lithic::AuthRules::VelocityLimitPeriod::FixedWindowMonth,
                  Lithic::AuthRules::VelocityLimitPeriod::FixedWindowYear
                ),
              scope: Lithic::AuthRules::VelocityLimitParams::Scope::OrSymbol,
              filters: Lithic::AuthRules::VelocityLimitFilters,
              limit_amount: T.nilable(Integer),
              limit_count: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end

        # The scope the velocity is calculated for
        module Scope
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::AuthRules::VelocityLimitParams::Scope)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :CARD,
              Lithic::AuthRules::VelocityLimitParams::Scope::TaggedSymbol
            )
          ACCOUNT =
            T.let(
              :ACCOUNT,
              Lithic::AuthRules::VelocityLimitParams::Scope::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AuthRules::VelocityLimitParams::Scope::TaggedSymbol
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
