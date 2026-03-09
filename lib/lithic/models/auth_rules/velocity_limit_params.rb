# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class VelocityLimitParams < Lithic::Internal::Type::BaseModel
        # @!attribute period
        #   Velocity over the current day since 00:00 / 12 AM in Eastern Time
        #
        #   @return [Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear]
        required :period, union: -> { Lithic::AuthRules::VelocityLimitPeriod }

        # @!attribute scope
        #   The scope the velocity is calculated for
        #
        #   @return [Symbol, Lithic::Models::AuthRules::VelocityLimitParams::Scope]
        required :scope, enum: -> { Lithic::AuthRules::VelocityLimitParams::Scope }

        # @!attribute filters
        #
        #   @return [Lithic::Models::AuthRules::VelocityLimitFilters, nil]
        optional :filters, -> { Lithic::AuthRules::VelocityLimitFilters }

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

        # @!method initialize(period:, scope:, filters: nil, limit_amount: nil, limit_count: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::VelocityLimitParams} for more details.
        #
        #   @param period [Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear] Velocity over the current day since 00:00 / 12 AM in Eastern Time
        #
        #   @param scope [Symbol, Lithic::Models::AuthRules::VelocityLimitParams::Scope] The scope the velocity is calculated for
        #
        #   @param filters [Lithic::Models::AuthRules::VelocityLimitFilters]
        #
        #   @param limit_amount [Integer, nil] The maximum amount of spend velocity allowed in the period in minor units (the s
        #
        #   @param limit_count [Integer, nil] The number of spend velocity impacting transactions may not exceed this limit in

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
