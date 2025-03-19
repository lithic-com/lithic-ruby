# typed: strong

module Lithic
  module Models
    module AuthRules
      # The window of time to calculate Spend Velocity over.
      #
      #   - `DAY`: Velocity over the current day since midnight Eastern Time.
      #   - `WEEK`: Velocity over the current week since 00:00 / 12 AM on Monday in
      #     Eastern Time.
      #   - `MONTH`: Velocity over the current month since 00:00 / 12 AM on the first of
      #     the month in Eastern Time.
      class VelocityLimitParamsPeriodWindow < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DAY = :DAY
        WEEK = :WEEK
        MONTH = :MONTH
      end
    end
  end
end
