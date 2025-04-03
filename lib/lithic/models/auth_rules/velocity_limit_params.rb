# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class VelocityLimitParams < Lithic::Internal::Type::BaseModel
        # @!attribute filters
        #
        #   @return [Lithic::Models::AuthRules::VelocityLimitParams::Filters]
        required :filters, -> { Lithic::Models::AuthRules::VelocityLimitParams::Filters }

        # @!attribute period
        #   The size of the trailing window to calculate Spend Velocity over in seconds. The
        #     minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
        #
        #   @return [Integer, Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow]
        required :period, union: -> { Lithic::Models::AuthRules::VelocityLimitParams::Period }

        # @!attribute scope
        #
        #   @return [Symbol, Lithic::Models::AuthRules::VelocityLimitParams::Scope]
        required :scope, enum: -> { Lithic::Models::AuthRules::VelocityLimitParams::Scope }

        # @!attribute limit_amount
        #   The maximum amount of spend velocity allowed in the period in minor units (the
        #     smallest unit of a currency, e.g. cents for USD). Transactions exceeding this
        #     limit will be declined.
        #
        #   @return [Integer, nil]
        optional :limit_amount, Integer, nil?: true

        # @!attribute limit_count
        #   The number of spend velocity impacting transactions may not exceed this limit in
        #     the period. Transactions exceeding this limit will be declined. A spend velocity
        #     impacting transaction is a transaction that has been authorized, and optionally
        #     settled, or a force post (a transaction that settled without prior
        #     authorization).
        #
        #   @return [Integer, nil]
        optional :limit_count, Integer, nil?: true

        # @!parse
        #   # @param filters [Lithic::Models::AuthRules::VelocityLimitParams::Filters]
        #   # @param period [Integer, Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow]
        #   # @param scope [Symbol, Lithic::Models::AuthRules::VelocityLimitParams::Scope]
        #   # @param limit_amount [Integer, nil]
        #   # @param limit_count [Integer, nil]
        #   #
        #   def initialize(filters:, period:, scope:, limit_amount: nil, limit_count: nil, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

        # @see Lithic::Models::AuthRules::VelocityLimitParams#filters
        class Filters < Lithic::Internal::Type::BaseModel
          # @!attribute exclude_countries
          #   ISO-3166-1 alpha-3 Country Codes to exclude from the velocity calculation.
          #     Transactions matching any of the provided will be excluded from the calculated
          #     velocity.
          #
          #   @return [Array<String>, nil]
          optional :exclude_countries, Lithic::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute exclude_mccs
          #   Merchant Category Codes to exclude from the velocity calculation. Transactions
          #     matching this MCC will be excluded from the calculated velocity.
          #
          #   @return [Array<String>, nil]
          optional :exclude_mccs, Lithic::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute include_countries
          #   ISO-3166-1 alpha-3 Country Codes to include in the velocity calculation.
          #     Transactions not matching any of the provided will not be included in the
          #     calculated velocity.
          #
          #   @return [Array<String>, nil]
          optional :include_countries, Lithic::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute include_mccs
          #   Merchant Category Codes to include in the velocity calculation. Transactions not
          #     matching this MCC will not be included in the calculated velocity.
          #
          #   @return [Array<String>, nil]
          optional :include_mccs, Lithic::Internal::Type::ArrayOf[String], nil?: true

          # @!parse
          #   # @param exclude_countries [Array<String>, nil]
          #   # @param exclude_mccs [Array<String>, nil]
          #   # @param include_countries [Array<String>, nil]
          #   # @param include_mccs [Array<String>, nil]
          #   #
          #   def initialize(exclude_countries: nil, exclude_mccs: nil, include_countries: nil, include_mccs: nil, **) = super

          # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
        end

        # The size of the trailing window to calculate Spend Velocity over in seconds. The
        #   minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
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
          variant enum: -> { Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow }

          # @!parse
          #   # @return [Array(Integer, Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow)]
          #   def self.variants; end
        end

        # @see Lithic::Models::AuthRules::VelocityLimitParams#scope
        module Scope
          extend Lithic::Internal::Type::Enum

          CARD = :CARD
          ACCOUNT = :ACCOUNT

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
