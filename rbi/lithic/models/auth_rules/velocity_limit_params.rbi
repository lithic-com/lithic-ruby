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

        sig { returns(Lithic::AuthRules::VelocityLimitParams::Filters) }
        attr_reader :filters

        sig do
          params(
            filters: Lithic::AuthRules::VelocityLimitParams::Filters::OrHash
          ).void
        end
        attr_writer :filters

        # The size of the trailing window to calculate Spend Velocity over in seconds. The
        # minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
        sig do
          returns(
            T.any(
              Integer,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::OrSymbol
            )
          )
        end
        attr_accessor :period

        sig { returns(Lithic::AuthRules::VelocityLimitParams::Scope::OrSymbol) }
        attr_accessor :scope

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
            filters: Lithic::AuthRules::VelocityLimitParams::Filters::OrHash,
            period:
              T.any(
                Integer,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::OrSymbol
              ),
            scope: Lithic::AuthRules::VelocityLimitParams::Scope::OrSymbol,
            limit_amount: T.nilable(Integer),
            limit_count: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          filters:,
          # The size of the trailing window to calculate Spend Velocity over in seconds. The
          # minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
          period:,
          scope:,
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
              filters: Lithic::AuthRules::VelocityLimitParams::Filters,
              period:
                T.any(
                  Integer,
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::OrSymbol
                ),
              scope: Lithic::AuthRules::VelocityLimitParams::Scope::OrSymbol,
              limit_amount: T.nilable(Integer),
              limit_count: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end

        class Filters < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::VelocityLimitParams::Filters,
                Lithic::Internal::AnyHash
              )
            end

          # ISO-3166-1 alpha-3 Country Codes to exclude from the velocity calculation.
          # Transactions matching any of the provided will be excluded from the calculated
          # velocity.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :exclude_countries

          # Merchant Category Codes to exclude from the velocity calculation. Transactions
          # matching this MCC will be excluded from the calculated velocity.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :exclude_mccs

          # ISO-3166-1 alpha-3 Country Codes to include in the velocity calculation.
          # Transactions not matching any of the provided will not be included in the
          # calculated velocity.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :include_countries

          # Merchant Category Codes to include in the velocity calculation. Transactions not
          # matching this MCC will not be included in the calculated velocity.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :include_mccs

          sig do
            params(
              exclude_countries: T.nilable(T::Array[String]),
              exclude_mccs: T.nilable(T::Array[String]),
              include_countries: T.nilable(T::Array[String]),
              include_mccs: T.nilable(T::Array[String])
            ).returns(T.attached_class)
          end
          def self.new(
            # ISO-3166-1 alpha-3 Country Codes to exclude from the velocity calculation.
            # Transactions matching any of the provided will be excluded from the calculated
            # velocity.
            exclude_countries: nil,
            # Merchant Category Codes to exclude from the velocity calculation. Transactions
            # matching this MCC will be excluded from the calculated velocity.
            exclude_mccs: nil,
            # ISO-3166-1 alpha-3 Country Codes to include in the velocity calculation.
            # Transactions not matching any of the provided will not be included in the
            # calculated velocity.
            include_countries: nil,
            # Merchant Category Codes to include in the velocity calculation. Transactions not
            # matching this MCC will not be included in the calculated velocity.
            include_mccs: nil
          )
          end

          sig do
            override.returns(
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
        # minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
        module Period
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Integer,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TaggedSymbol
              )
            end

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::VelocityLimitParams::Period::Variants]
            )
          end
          def self.variants
          end
        end

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
