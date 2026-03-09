# typed: strong

module Lithic
  module Models
    module AuthRules
      class VelocityLimitFilters < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::VelocityLimitFilters,
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
                Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::OrSymbol
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
                  Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::OrSymbol
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
                    Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::OrSymbol
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
                Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTO_ENTRY =
            T.let(
              :AUTO_ENTRY,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          BAR_CODE =
            T.let(
              :BAR_CODE,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          CONTACTLESS =
            T.let(
              :CONTACTLESS,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          CREDENTIAL_ON_FILE =
            T.let(
              :CREDENTIAL_ON_FILE,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          ECOMMERCE =
            T.let(
              :ECOMMERCE,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          ERROR_KEYED =
            T.let(
              :ERROR_KEYED,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          ERROR_MAGNETIC_STRIPE =
            T.let(
              :ERROR_MAGNETIC_STRIPE,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          ICC =
            T.let(
              :ICC,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          KEY_ENTERED =
            T.let(
              :KEY_ENTERED,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          MAGNETIC_STRIPE =
            T.let(
              :MAGNETIC_STRIPE,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          MANUAL =
            T.let(
              :MANUAL,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          OCR =
            T.let(
              :OCR,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          SECURE_CARDLESS =
            T.let(
              :SECURE_CARDLESS,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          UNSPECIFIED =
            T.let(
              :UNSPECIFIED,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AuthRules::VelocityLimitFilters::IncludePanEntryMode::TaggedSymbol
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
