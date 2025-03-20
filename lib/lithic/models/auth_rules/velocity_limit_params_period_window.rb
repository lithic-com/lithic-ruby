# frozen_string_literal: true

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
      module VelocityLimitParamsPeriodWindow
        extend Lithic::Enum

        DAY = :DAY
        WEEK = :WEEK
        MONTH = :MONTH

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
