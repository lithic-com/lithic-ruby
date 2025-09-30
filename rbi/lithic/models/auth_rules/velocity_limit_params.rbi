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

        # DEPRECATED: This has been deprecated in favor of the Trailing Window Objects
        #
        # The size of the trailing window to calculate Spend Velocity over in seconds. The
        # minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
        sig do
          returns(
            T.any(
              Integer,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindow::OrSymbol,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear
            )
          )
        end
        attr_accessor :period

        # The scope the velocity is calculated for
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
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindow::OrSymbol,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject::OrHash,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay::OrHash,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek::OrHash,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth::OrHash,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear::OrHash
              ),
            scope: Lithic::AuthRules::VelocityLimitParams::Scope::OrSymbol,
            limit_amount: T.nilable(Integer),
            limit_count: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          filters:,
          # DEPRECATED: This has been deprecated in favor of the Trailing Window Objects
          #
          # The size of the trailing window to calculate Spend Velocity over in seconds. The
          # minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
          period:,
          # The scope the velocity is calculated for
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
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindow::OrSymbol,
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject,
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay,
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek,
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth,
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear
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

          # PAN entry modes to include in the velocity calculation. Transactions not
          # matching any of the provided will not be included in the calculated velocity.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::OrSymbol
                ]
              )
            )
          end
          attr_accessor :include_pan_entry_modes

          sig do
            params(
              exclude_countries: T.nilable(T::Array[String]),
              exclude_mccs: T.nilable(T::Array[String]),
              include_countries: T.nilable(T::Array[String]),
              include_mccs: T.nilable(T::Array[String]),
              include_pan_entry_modes:
                T.nilable(
                  T::Array[
                    Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::OrSymbol
                  ]
                )
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
            include_mccs: nil,
            # PAN entry modes to include in the velocity calculation. Transactions not
            # matching any of the provided will not be included in the calculated velocity.
            include_pan_entry_modes: nil
          )
          end

          sig do
            override.returns(
              {
                exclude_countries: T.nilable(T::Array[String]),
                exclude_mccs: T.nilable(T::Array[String]),
                include_countries: T.nilable(T::Array[String]),
                include_mccs: T.nilable(T::Array[String]),
                include_pan_entry_modes:
                  T.nilable(
                    T::Array[
                      Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::OrSymbol
                    ]
                  )
              }
            )
          end
          def to_hash
          end

          module IncludePanEntryMode
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTO_ENTRY =
              T.let(
                :AUTO_ENTRY,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            BAR_CODE =
              T.let(
                :BAR_CODE,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            CONTACTLESS =
              T.let(
                :CONTACTLESS,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            CREDENTIAL_ON_FILE =
              T.let(
                :CREDENTIAL_ON_FILE,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            ECOMMERCE =
              T.let(
                :ECOMMERCE,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            ERROR_KEYED =
              T.let(
                :ERROR_KEYED,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            ERROR_MAGNETIC_STRIPE =
              T.let(
                :ERROR_MAGNETIC_STRIPE,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            ICC =
              T.let(
                :ICC,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            KEY_ENTERED =
              T.let(
                :KEY_ENTERED,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            MAGNETIC_STRIPE =
              T.let(
                :MAGNETIC_STRIPE,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            MANUAL =
              T.let(
                :MANUAL,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            OCR =
              T.let(
                :OCR,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            SECURE_CARDLESS =
              T.let(
                :SECURE_CARDLESS,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            UNSPECIFIED =
              T.let(
                :UNSPECIFIED,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :UNKNOWN,
                Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
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
