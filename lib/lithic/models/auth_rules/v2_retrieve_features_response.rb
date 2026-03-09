# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#retrieve_features
      class V2RetrieveFeaturesResponse < Lithic::Internal::Type::BaseModel
        # @!attribute evaluated
        #   Timestamp at which the Features were evaluated
        #
        #   @return [Time]
        required :evaluated, Time

        # @!attribute features
        #   Calculated Features used for evaluation of the provided Auth Rule
        #
        #   @return [Array<Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature>]
        required :features,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature] }

        # @!method initialize(evaluated:, features:)
        #   @param evaluated [Time] Timestamp at which the Features were evaluated
        #
        #   @param features [Array<Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature>] Calculated Features used for evaluation of the provided Auth Rule

        class Feature < Lithic::Internal::Type::BaseModel
          # @!attribute filters
          #
          #   @return [Lithic::Models::AuthRules::VelocityLimitFilters]
          required :filters, -> { Lithic::AuthRules::VelocityLimitFilters }

          # @!attribute period
          #   Velocity over the current day since 00:00 / 12 AM in Eastern Time
          #
          #   @return [Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear]
          required :period, union: -> { Lithic::AuthRules::VelocityLimitPeriod }

          # @!attribute scope
          #   The scope the velocity is calculated for
          #
          #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope]
          required :scope, enum: -> { Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope }

          # @!attribute value
          #
          #   @return [Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value]
          required :value, -> { Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value }

          # @!method initialize(filters:, period:, scope:, value:)
          #   @param filters [Lithic::Models::AuthRules::VelocityLimitFilters]
          #
          #   @param period [Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear] Velocity over the current day since 00:00 / 12 AM in Eastern Time
          #
          #   @param scope [Symbol, Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope] The scope the velocity is calculated for
          #
          #   @param value [Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value]

          # The scope the velocity is calculated for
          #
          # @see Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature#scope
          module Scope
            extend Lithic::Internal::Type::Enum

            CARD = :CARD
            ACCOUNT = :ACCOUNT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature#value
          class Value < Lithic::Internal::Type::BaseModel
            # @!attribute amount
            #   Amount (in cents) for the given Auth Rule that is used as input for calculating
            #   the rule. For Velocity Limit rules this would be the calculated Velocity. For
            #   Conditional Rules using CARD*TRANSACTION_COUNT*\* this will be 0
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute count
            #   Number of velocity impacting transactions matching the given scope, period and
            #   filters
            #
            #   @return [Integer]
            required :count, Integer

            # @!method initialize(amount:, count:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value} for more
            #   details.
            #
            #   @param amount [Integer] Amount (in cents) for the given Auth Rule that is used as input for calculating
            #
            #   @param count [Integer] Number of velocity impacting transactions matching the given scope, period and f
          end
        end
      end
    end
  end
end
