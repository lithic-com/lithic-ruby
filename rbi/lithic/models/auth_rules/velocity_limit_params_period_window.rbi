# typed: strong

module Lithic
  module Models
    module AuthRules
      # Velocity over the current day since 00:00 / 12 AM in Eastern Time
      module VelocityLimitParamsPeriodWindow
        extend Lithic::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear
            )
          end

        class TrailingWindowObject < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject,
                Lithic::Internal::AnyHash
              )
            end

          # The size of the trailing window to calculate Spend Velocity over in seconds. The
          # minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(duration: Integer, type: Symbol).returns(T.attached_class)
          end
          def self.new(
            # The size of the trailing window to calculate Spend Velocity over in seconds. The
            # minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
            duration:,
            type: :CUSTOM
          )
          end

          sig { override.returns({ duration: Integer, type: Symbol }) }
          def to_hash
          end
        end

        class FixedWindowDay < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # Velocity over the current day since 00:00 / 12 AM in Eastern Time
          sig { params(type: Symbol).returns(T.attached_class) }
          def self.new(type: :DAY)
          end

          sig { override.returns({ type: Symbol }) }
          def to_hash
          end
        end

        class FixedWindowWeek < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # The day of the week to start the week from. Following ISO-8601, 1 is Monday and
          # 7 is Sunday. Defaults to Monday if not specified.
          sig { returns(T.nilable(Integer)) }
          attr_reader :day_of_week

          sig { params(day_of_week: Integer).void }
          attr_writer :day_of_week

          # Velocity over the current week since 00:00 / 12 AM in Eastern Time on specified
          # `day_of_week`
          sig do
            params(day_of_week: Integer, type: Symbol).returns(T.attached_class)
          end
          def self.new(
            # The day of the week to start the week from. Following ISO-8601, 1 is Monday and
            # 7 is Sunday. Defaults to Monday if not specified.
            day_of_week: nil,
            type: :WEEK
          )
          end

          sig { override.returns({ type: Symbol, day_of_week: Integer }) }
          def to_hash
          end
        end

        class FixedWindowMonth < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # The day of the month to start from. Accepts values from 1 to 31, and will reset
          # at the end of the month if the day exceeds the number of days in the month.
          # Defaults to the 1st of the month if not specified.
          sig { returns(T.nilable(Integer)) }
          attr_reader :day_of_month

          sig { params(day_of_month: Integer).void }
          attr_writer :day_of_month

          # Velocity over the current month since 00:00 / 12 AM in Eastern Time on specified
          # `day_of_month`.
          sig do
            params(day_of_month: Integer, type: Symbol).returns(
              T.attached_class
            )
          end
          def self.new(
            # The day of the month to start from. Accepts values from 1 to 31, and will reset
            # at the end of the month if the day exceeds the number of days in the month.
            # Defaults to the 1st of the month if not specified.
            day_of_month: nil,
            type: :MONTH
          )
          end

          sig { override.returns({ type: Symbol, day_of_month: Integer }) }
          def to_hash
          end
        end

        class FixedWindowYear < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # The day of the month to start from. Defaults to the 1st of the month if not
          # specified.
          sig { returns(T.nilable(Integer)) }
          attr_reader :day_of_month

          sig { params(day_of_month: Integer).void }
          attr_writer :day_of_month

          # The month to start from. 1 is January and 12 is December. Defaults to January if
          # not specified.
          sig { returns(T.nilable(Integer)) }
          attr_reader :month

          sig { params(month: Integer).void }
          attr_writer :month

          # Velocity over the current year since 00:00 / 12 AM in Eastern Time on specified
          # `month` and `day_of_month`. This validates the month and day of the year to
          # start from is a real date. In the event that February 29th is selected, in
          # non-leap years, the window will start from February 28th.
          sig do
            params(day_of_month: Integer, month: Integer, type: Symbol).returns(
              T.attached_class
            )
          end
          def self.new(
            # The day of the month to start from. Defaults to the 1st of the month if not
            # specified.
            day_of_month: nil,
            # The month to start from. 1 is January and 12 is December. Defaults to January if
            # not specified.
            month: nil,
            type: :YEAR
          )
          end

          sig do
            override.returns(
              { type: Symbol, day_of_month: Integer, month: Integer }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
