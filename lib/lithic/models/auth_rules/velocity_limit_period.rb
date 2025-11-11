# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # Velocity over the current day since 00:00 / 12 AM in Eastern Time
      module VelocityLimitPeriod
        extend Lithic::Internal::Type::Union

        variant -> { Lithic::AuthRules::VelocityLimitPeriod::TrailingWindowObject }

        # Velocity over the current day since 00:00 / 12 AM in Eastern Time
        variant -> { Lithic::AuthRules::VelocityLimitPeriod::FixedWindowDay }

        # Velocity over the current week since 00:00 / 12 AM in Eastern Time on specified `day_of_week`
        variant -> { Lithic::AuthRules::VelocityLimitPeriod::FixedWindowWeek }

        # Velocity over the current month since 00:00 / 12 AM in Eastern Time on specified `day_of_month`.
        variant -> { Lithic::AuthRules::VelocityLimitPeriod::FixedWindowMonth }

        # Velocity over the current year since 00:00 / 12 AM in Eastern Time on specified `month` and `day_of_month`. This validates the month and day of the year to start from is a real date. In the event that February 29th is selected, in non-leap years, the window will start from February 28th.
        variant -> { Lithic::AuthRules::VelocityLimitPeriod::FixedWindowYear }

        class TrailingWindowObject < Lithic::Internal::Type::BaseModel
          # @!attribute duration
          #   The size of the trailing window to calculate Spend Velocity over in seconds. The
          #   minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute type
          #
          #   @return [Symbol, :CUSTOM]
          required :type, const: :CUSTOM

          # @!method initialize(duration:, type: :CUSTOM)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject} for more
          #   details.
          #
          #   @param duration [Integer] The size of the trailing window to calculate Spend Velocity over in seconds. The
          #
          #   @param type [Symbol, :CUSTOM]
        end

        class FixedWindowDay < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :DAY]
          required :type, const: :DAY

          # @!method initialize(type: :DAY)
          #   Velocity over the current day since 00:00 / 12 AM in Eastern Time
          #
          #   @param type [Symbol, :DAY]
        end

        class FixedWindowWeek < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :WEEK]
          required :type, const: :WEEK

          # @!attribute day_of_week
          #   The day of the week to start the week from. Following ISO-8601, 1 is Monday and
          #   7 is Sunday. Defaults to Monday if not specified.
          #
          #   @return [Integer, nil]
          optional :day_of_week, Integer

          # @!method initialize(day_of_week: nil, type: :WEEK)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek} for more
          #   details.
          #
          #   Velocity over the current week since 00:00 / 12 AM in Eastern Time on specified
          #   `day_of_week`
          #
          #   @param day_of_week [Integer] The day of the week to start the week from. Following ISO-8601, 1 is Monday and
          #
          #   @param type [Symbol, :WEEK]
        end

        class FixedWindowMonth < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :MONTH]
          required :type, const: :MONTH

          # @!attribute day_of_month
          #   The day of the month to start from. Accepts values from 1 to 31, and will reset
          #   at the end of the month if the day exceeds the number of days in the month.
          #   Defaults to the 1st of the month if not specified.
          #
          #   @return [Integer, nil]
          optional :day_of_month, Integer

          # @!method initialize(day_of_month: nil, type: :MONTH)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth} for more
          #   details.
          #
          #   Velocity over the current month since 00:00 / 12 AM in Eastern Time on specified
          #   `day_of_month`.
          #
          #   @param day_of_month [Integer] The day of the month to start from. Accepts values from 1 to 31, and will reset
          #
          #   @param type [Symbol, :MONTH]
        end

        class FixedWindowYear < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :YEAR]
          required :type, const: :YEAR

          # @!attribute day_of_month
          #   The day of the month to start from. Defaults to the 1st of the month if not
          #   specified.
          #
          #   @return [Integer, nil]
          optional :day_of_month, Integer

          # @!attribute month
          #   The month to start from. 1 is January and 12 is December. Defaults to January if
          #   not specified.
          #
          #   @return [Integer, nil]
          optional :month, Integer

          # @!method initialize(day_of_month: nil, month: nil, type: :YEAR)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear} for more
          #   details.
          #
          #   Velocity over the current year since 00:00 / 12 AM in Eastern Time on specified
          #   `month` and `day_of_month`. This validates the month and day of the year to
          #   start from is a real date. In the event that February 29th is selected, in
          #   non-leap years, the window will start from February 28th.
          #
          #   @param day_of_month [Integer] The day of the month to start from. Defaults to the 1st of the month if not spec
          #
          #   @param month [Integer] The month to start from. 1 is January and 12 is December. Defaults to January if
          #
          #   @param type [Symbol, :YEAR]
        end

        # @!method self.variants
        #   @return [Array(Lithic::Models::AuthRules::VelocityLimitPeriod::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitPeriod::FixedWindowYear)]
      end
    end
  end
end
