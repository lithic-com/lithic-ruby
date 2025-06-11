# typed: strong

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

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::AuthRules::VelocityLimitParamsPeriodWindow)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAY =
          T.let(
            :DAY,
            Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TaggedSymbol
          )
        WEEK =
          T.let(
            :WEEK,
            Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TaggedSymbol
          )
        MONTH =
          T.let(
            :MONTH,
            Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TaggedSymbol
          )
        YEAR =
          T.let(
            :YEAR,
            Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
