# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2RetrieveFeaturesResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AuthRules::V2RetrieveFeaturesResponse,
              Lithic::Internal::AnyHash
            )
          end

        # Timestamp at which the Features were evaluated
        sig { returns(Time) }
        attr_accessor :evaluated

        # Calculated Features used for evaluation of the provided Auth Rule
        sig do
          returns(
            T::Array[
              Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature
            ]
          )
        end
        attr_accessor :features

        sig do
          params(
            evaluated: Time,
            features:
              T::Array[
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Timestamp at which the Features were evaluated
          evaluated:,
          # Calculated Features used for evaluation of the provided Auth Rule
          features:
        )
        end

        sig do
          override.returns(
            {
              evaluated: Time,
              features:
                T::Array[
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature
                ]
            }
          )
        end
        def to_hash
        end

        class Feature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature,
                Lithic::Internal::AnyHash
              )
            end

          sig do
            returns(
              Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters
            )
          end
          attr_reader :filters

          sig do
            params(
              filters:
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::OrHash
            ).void
          end
          attr_writer :filters

          # DEPRECATED: This has been deprecated in favor of the Trailing Window Objects
          #
          # The size of the trailing window to calculate Spend Velocity over in seconds. The
          # minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
          sig do
            returns(
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::Variants
            )
          end
          attr_accessor :period

          # The scope the velocity is calculated for
          sig do
            returns(
              Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope::TaggedSymbol
            )
          end
          attr_accessor :scope

          sig do
            returns(
              Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value
            )
          end
          attr_reader :value

          sig do
            params(
              value:
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value::OrHash
            ).void
          end
          attr_writer :value

          sig do
            params(
              filters:
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::OrHash,
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
              scope:
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope::OrSymbol,
              value:
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value::OrHash
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
            value:
          )
          end

          sig do
            override.returns(
              {
                filters:
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters,
                period:
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::Variants,
                scope:
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope::TaggedSymbol,
                value:
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value
              }
            )
          end
          def to_hash
          end

          class Filters < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters,
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
                    Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
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
                      Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::OrSymbol
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
                        Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
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
                    Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AUTO_ENTRY =
                T.let(
                  :AUTO_ENTRY,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              BAR_CODE =
                T.let(
                  :BAR_CODE,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              CONTACTLESS =
                T.let(
                  :CONTACTLESS,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              CREDENTIAL_ON_FILE =
                T.let(
                  :CREDENTIAL_ON_FILE,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              ECOMMERCE =
                T.let(
                  :ECOMMERCE,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              ERROR_KEYED =
                T.let(
                  :ERROR_KEYED,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              ERROR_MAGNETIC_STRIPE =
                T.let(
                  :ERROR_MAGNETIC_STRIPE,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              ICC =
                T.let(
                  :ICC,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              KEY_ENTERED =
                T.let(
                  :KEY_ENTERED,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              MAGNETIC_STRIPE =
                T.let(
                  :MAGNETIC_STRIPE,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              MANUAL =
                T.let(
                  :MANUAL,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              OCR =
                T.let(
                  :OCR,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              SECURE_CARDLESS =
                T.let(
                  :SECURE_CARDLESS,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              UNSPECIFIED =
                T.let(
                  :UNSPECIFIED,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )
              UNKNOWN =
                T.let(
                  :UNKNOWN,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Filters::IncludePanEntryMode::TaggedSymbol
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
                T.all(
                  Symbol,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CARD =
              T.let(
                :CARD,
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope::TaggedSymbol
              )
            ACCOUNT =
              T.let(
                :ACCOUNT,
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Value < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value,
                  Lithic::Internal::AnyHash
                )
              end

            # Amount (in cents) for the given Auth Rule that is used as input for calculating
            # the rule. For Velocity Limit rules this would be the calculated Velocity. For
            # Conditional Rules using CARD*TRANSACTION_COUNT*\* this will be 0
            sig { returns(Integer) }
            attr_accessor :amount

            # Number of velocity impacting transactions matching the given scope, period and
            # filters
            sig { returns(Integer) }
            attr_accessor :count

            sig do
              params(amount: Integer, count: Integer).returns(T.attached_class)
            end
            def self.new(
              # Amount (in cents) for the given Auth Rule that is used as input for calculating
              # the rule. For Velocity Limit rules this would be the calculated Velocity. For
              # Conditional Rules using CARD*TRANSACTION_COUNT*\* this will be 0
              amount:,
              # Number of velocity impacting transactions matching the given scope, period and
              # filters
              count:
            )
            end

            sig { override.returns({ amount: Integer, count: Integer }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
