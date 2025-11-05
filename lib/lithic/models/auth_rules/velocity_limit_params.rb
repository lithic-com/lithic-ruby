# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class VelocityLimitParams < Lithic::Internal::Type::BaseModel
        # @!attribute filters
        #
        #   @return [Lithic::Models::AuthRules::VelocityLimitParams::Filters]
        required :filters, -> { Lithic::AuthRules::VelocityLimitParams::Filters }

        # @!attribute period
        #   Velocity over the current day since 00:00 / 12 AM in Eastern Time
        #
        #   @return [Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear]
        required :period, union: -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow }

        # @!attribute scope
        #   The scope the velocity is calculated for
        #
        #   @return [Symbol, Lithic::Models::AuthRules::VelocityLimitParams::Scope]
        required :scope, enum: -> { Lithic::AuthRules::VelocityLimitParams::Scope }

        # @!attribute limit_amount
        #   The maximum amount of spend velocity allowed in the period in minor units (the
        #   smallest unit of a currency, e.g. cents for USD). Transactions exceeding this
        #   limit will be declined.
        #
        #   @return [Integer, nil]
        optional :limit_amount, Integer, nil?: true

        # @!attribute limit_count
        #   The number of spend velocity impacting transactions may not exceed this limit in
        #   the period. Transactions exceeding this limit will be declined. A spend velocity
        #   impacting transaction is a transaction that has been authorized, and optionally
        #   settled, or a force post (a transaction that settled without prior
        #   authorization).
        #
        #   @return [Integer, nil]
        optional :limit_count, Integer, nil?: true

        # @!method initialize(filters:, period:, scope:, limit_amount: nil, limit_count: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::VelocityLimitParams} for more details.
        #
        #   @param filters [Lithic::Models::AuthRules::VelocityLimitParams::Filters]
        #
        #   @param period [Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear] Velocity over the current day since 00:00 / 12 AM in Eastern Time
        #
        #   @param scope [Symbol, Lithic::Models::AuthRules::VelocityLimitParams::Scope] The scope the velocity is calculated for
        #
        #   @param limit_amount [Integer, nil] The maximum amount of spend velocity allowed in the period in minor units (the s
        #
        #   @param limit_count [Integer, nil] The number of spend velocity impacting transactions may not exceed this limit in

        # @see Lithic::Models::AuthRules::VelocityLimitParams#filters
        class Filters < Lithic::Internal::Type::BaseModel
          # @!attribute exclude_countries
          #   ISO-3166-1 alpha-3 Country Codes to exclude from the velocity calculation.
          #   Transactions matching any of the provided will be excluded from the calculated
          #   velocity.
          #
          #   @return [Array<String>, nil]
          optional :exclude_countries, Lithic::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute exclude_mccs
          #   Merchant Category Codes to exclude from the velocity calculation. Transactions
          #   matching this MCC will be excluded from the calculated velocity.
          #
          #   @return [Array<String>, nil]
          optional :exclude_mccs, Lithic::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute include_countries
          #   ISO-3166-1 alpha-3 Country Codes to include in the velocity calculation.
          #   Transactions not matching any of the provided will not be included in the
          #   calculated velocity.
          #
          #   @return [Array<String>, nil]
          optional :include_countries, Lithic::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute include_mccs
          #   Merchant Category Codes to include in the velocity calculation. Transactions not
          #   matching this MCC will not be included in the calculated velocity.
          #
          #   @return [Array<String>, nil]
          optional :include_mccs, Lithic::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute include_pan_entry_modes
          #   PAN entry modes to include in the velocity calculation. Transactions not
          #   matching any of the provided will not be included in the calculated velocity.
          #
          #   @return [Array<Symbol, Lithic::Models::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode>, nil]
          optional :include_pan_entry_modes,
                   -> {
                     Lithic::Internal::Type::ArrayOf[enum: Lithic::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode]
                   },
                   nil?: true

          # @!method initialize(exclude_countries: nil, exclude_mccs: nil, include_countries: nil, include_mccs: nil, include_pan_entry_modes: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::VelocityLimitParams::Filters} for more details.
          #
          #   @param exclude_countries [Array<String>, nil] ISO-3166-1 alpha-3 Country Codes to exclude from the velocity calculation. Trans
          #
          #   @param exclude_mccs [Array<String>, nil] Merchant Category Codes to exclude from the velocity calculation. Transactions m
          #
          #   @param include_countries [Array<String>, nil] ISO-3166-1 alpha-3 Country Codes to include in the velocity calculation. Transac
          #
          #   @param include_mccs [Array<String>, nil] Merchant Category Codes to include in the velocity calculation. Transactions not
          #
          #   @param include_pan_entry_modes [Array<Symbol, Lithic::Models::AuthRules::VelocityLimitParams::Filters::IncludePanEntryMode>, nil] PAN entry modes to include in the velocity calculation. Transactions not matchin

          module IncludePanEntryMode
            extend Lithic::Internal::Type::Enum

            AUTO_ENTRY = :AUTO_ENTRY
            BAR_CODE = :BAR_CODE
            CONTACTLESS = :CONTACTLESS
            CREDENTIAL_ON_FILE = :CREDENTIAL_ON_FILE
            ECOMMERCE = :ECOMMERCE
            ERROR_KEYED = :ERROR_KEYED
            ERROR_MAGNETIC_STRIPE = :ERROR_MAGNETIC_STRIPE
            ICC = :ICC
            KEY_ENTERED = :KEY_ENTERED
            MAGNETIC_STRIPE = :MAGNETIC_STRIPE
            MANUAL = :MANUAL
            OCR = :OCR
            SECURE_CARDLESS = :SECURE_CARDLESS
            UNSPECIFIED = :UNSPECIFIED
            UNKNOWN = :UNKNOWN

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The scope the velocity is calculated for
        #
        # @see Lithic::Models::AuthRules::VelocityLimitParams#scope
        module Scope
          extend Lithic::Internal::Type::Enum

          CARD = :CARD
          ACCOUNT = :ACCOUNT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
