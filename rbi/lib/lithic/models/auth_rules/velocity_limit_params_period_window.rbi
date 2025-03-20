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
      module VelocityLimitParamsPeriodWindow
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::TaggedSymbol) }

        DAY = T.let(:DAY, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::OrSymbol)
        WEEK = T.let(:WEEK, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::OrSymbol)
        MONTH = T.let(:MONTH, Lithic::Models::AuthRules::VelocityLimitParamsPeriodWindow::OrSymbol)
      end
    end
  end
end
