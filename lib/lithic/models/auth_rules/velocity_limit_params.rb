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
        #   The size of the trailing window to calculate Spend Velocity over in seconds. The
        #   minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
        #
        #   @return [Integer, Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow]
        required :period, union: -> { Lithic::AuthRules::VelocityLimitParams::Period }

        # @!attribute scope
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
        #   @param period [Integer, Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow] The size of the trailing window to calculate Spend Velocity over in seconds. The
        #
        #   @param scope [Symbol, Lithic::Models::AuthRules::VelocityLimitParams::Scope]
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

          # @!method initialize(exclude_countries: nil, exclude_mccs: nil, include_countries: nil, include_mccs: nil)
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
        end

        # The size of the trailing window to calculate Spend Velocity over in seconds. The
        # minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
        #
        # @see Lithic::Models::AuthRules::VelocityLimitParams#period
        module Period
          extend Lithic::Internal::Type::Union

          # The size of the trailing window to calculate Spend Velocity over in seconds. The minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
          variant Integer

          # The window of time to calculate Spend Velocity over.
          #
          # * `DAY`: Velocity over the current day since midnight Eastern Time.
          # * `WEEK`: Velocity over the current week since 00:00 / 12 AM on Monday in Eastern Time.
          # * `MONTH`: Velocity over the current month since 00:00 / 12 AM on the first of the month in Eastern Time.
          variant enum: -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow }

          # @!method self.variants
          #   @return [Array(Integer, Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow)]
        end

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
