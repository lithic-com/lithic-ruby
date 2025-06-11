# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # The window of time to calculate Spend Velocity over.
      #
      # - `DAY`: Velocity over the current day since midnight Eastern Time.
      # - `WEEK`: Velocity over the current week since 00:00 / 12 AM on Monday in
      #   Eastern Time.
      # - `MONTH`: Velocity over the current month since 00:00 / 12 AM on the first of
      #   the month in Eastern Time.
      # - `YEAR`: Velocity over the current year since 00:00 / 12 AM on January 1st in
      #   Eastern Time.
      module VelocityLimitParamsPeriodWindow
        extend Lithic::Internal::Type::Enum

        DAY = :DAY
        WEEK = :WEEK
        MONTH = :MONTH
        YEAR = :YEAR

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
