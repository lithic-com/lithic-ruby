# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # DEPRECATED: This has been deprecated in favor of the Trailing Window Objects
      #
      # The size of the trailing window to calculate Spend Velocity over in seconds. The
      # minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
      module VelocityLimitParamsPeriodWindow
        extend Lithic::Internal::Type::Union

        # DEPRECATED: This has been deprecated in favor of the Trailing Window Objects
        #
        # The size of the trailing window to calculate Spend Velocity over in seconds. The minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
        variant Integer

        # DEPRECATED: This has been deprecated in favor of the other Fixed Window Objects
        #
        # The window of time to calculate Spend Velocity over.
        #
        # * `DAY`: Velocity over the current day since midnight Eastern Time.
        # * `WEEK`: Velocity over the current week since 00:00 / 12 AM on Monday in Eastern Time.
        # * `MONTH`: Velocity over the current month since 00:00 / 12 AM on the first of the month in Eastern Time.
        # * `YEAR`: Velocity over the current year since 00:00 / 12 AM on January 1st in Eastern Time.
        variant enum: -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindow }

        variant -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject }

        # Velocity over the current day since 00:00 / 12 AM in Eastern Time
        variant -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay }

        # Velocity over the current week since 00:00 / 12 AM in Eastern Time on specified `day_of_week`
        variant -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek }

        # Velocity over the current month since 00:00 / 12 AM in Eastern Time on specified `day_of_month`.
        variant -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth }

        # Velocity over the current year since 00:00 / 12 AM in Eastern Time on specified `month` and `day_of_month`. This validates the month and day of the year to start from is a real date. In the event that February 29th is selected, in non-leap years, the window will start from February 28th.
        variant -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear }

        # @deprecated
        #
        # DEPRECATED: This has been deprecated in favor of the other Fixed Window Objects
        #
        # The window of time to calculate Spend Velocity over.
        #
        # - `DAY`: Velocity over the current day since midnight Eastern Time.
        # - `WEEK`: Velocity over the current week since 00:00 / 12 AM on Monday in
        #   Eastern Time.
        # - `MONTH`: Velocity over the current month since 00:00 / 12 AM on the first of
        #   the month in Eastern Time.
        # - `YEAR`: Velocity over the current year since 00:00 / 12 AM on January 1st in
        #   Eastern Time.
        module FixedWindow
          extend Lithic::Internal::Type::Enum

          DAY = :DAY
          WEEK = :WEEK
          MONTH = :MONTH
          YEAR = :YEAR

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class TrailingWindowObject < Lithic::Internal::Type::BaseModel
          # @!attribute duration
          #   The size of the trailing window to calculate Spend Velocity over in seconds. The
          #   minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
          #
          #   @return [Integer, nil]
          optional :duration, Integer

          # @!attribute type
          #
          #   @return [Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject::Type, nil]
          optional :type,
                   enum: -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject::Type }

          # @!method initialize(duration: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject}
          #   for more details.
          #
          #   @param duration [Integer] The size of the trailing window to calculate Spend Velocity over in seconds. The
          #
          #   @param type [Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject::Type]

          # @see Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject#type
          module Type
            extend Lithic::Internal::Type::Enum

            CUSTOM = :CUSTOM

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class FixedWindowDay < Lithic::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay::Type, nil]
          optional :type, enum: -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay::Type }

          # @!method initialize(type: nil)
          #   Velocity over the current day since 00:00 / 12 AM in Eastern Time
          #
          #   @param type [Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay::Type]

          # @see Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay#type
          module Type
            extend Lithic::Internal::Type::Enum

            DAY = :DAY

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class FixedWindowWeek < Lithic::Internal::Type::BaseModel
          # @!attribute day_of_week
          #   The day of the week to start the week from. Following ISO-8601, 1 is Monday and
          #   7 is Sunday. Defaults to Monday if not specified.
          #
          #   @return [Integer, nil]
          optional :day_of_week, Integer

          # @!attribute type
          #
          #   @return [Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek::Type, nil]
          optional :type, enum: -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek::Type }

          # @!method initialize(day_of_week: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek}
          #   for more details.
          #
          #   Velocity over the current week since 00:00 / 12 AM in Eastern Time on specified
          #   `day_of_week`
          #
          #   @param day_of_week [Integer] The day of the week to start the week from. Following ISO-8601, 1 is Monday and
          #
          #   @param type [Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek::Type]

          # @see Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek#type
          module Type
            extend Lithic::Internal::Type::Enum

            WEEK = :WEEK

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class FixedWindowMonth < Lithic::Internal::Type::BaseModel
          # @!attribute day_of_month
          #   The day of the month to start from. Accepts values from 1 to 31, and will reset
          #   at the end of the month if the day exceeds the number of days in the month.
          #   Defaults to the 1st of the month if not specified.
          #
          #   @return [Integer, nil]
          optional :day_of_month, Integer

          # @!attribute type
          #
          #   @return [Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth::Type, nil]
          optional :type, enum: -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth::Type }

          # @!method initialize(day_of_month: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth}
          #   for more details.
          #
          #   Velocity over the current month since 00:00 / 12 AM in Eastern Time on specified
          #   `day_of_month`.
          #
          #   @param day_of_month [Integer] The day of the month to start from. Accepts values from 1 to 31, and will reset
          #
          #   @param type [Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth::Type]

          # @see Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth#type
          module Type
            extend Lithic::Internal::Type::Enum

            MONTH = :MONTH

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class FixedWindowYear < Lithic::Internal::Type::BaseModel
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

          # @!attribute type
          #
          #   @return [Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear::Type, nil]
          optional :type, enum: -> { Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear::Type }

          # @!method initialize(day_of_month: nil, month: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear}
          #   for more details.
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
          #   @param type [Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear::Type]

          # @see Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear#type
          module Type
            extend Lithic::Internal::Type::Enum

            YEAR = :YEAR

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Integer, Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindow, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear)]
      end
    end
  end
end
