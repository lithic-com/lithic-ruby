# typed: strong

module Lithic
  module Models
    module AuthRules
      # DEPRECATED: This has been deprecated in favor of the Trailing Window Objects
      #
      # The size of the trailing window to calculate Spend Velocity over in seconds. The
      # minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
      module VelocityLimitParamsPeriodWindow
        extend Lithic::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Integer,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindow::TaggedSymbol,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear
            )
          end

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

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindow
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAY =
            T.let(
              :DAY,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindow::TaggedSymbol
            )
          WEEK =
            T.let(
              :WEEK,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindow::TaggedSymbol
            )
          MONTH =
            T.let(
              :MONTH,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindow::TaggedSymbol
            )
          YEAR =
            T.let(
              :YEAR,
              Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindow::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindow::TaggedSymbol
              ]
            )
          end
          def self.values
          end
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
          sig { returns(T.nilable(Integer)) }
          attr_reader :duration

          sig { params(duration: Integer).void }
          attr_writer :duration

          sig do
            returns(
              T.nilable(
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig do
            params(
              duration: Integer,
              type:
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The size of the trailing window to calculate Spend Velocity over in seconds. The
            # minimum value is 10 seconds, and the maximum value is 2678400 seconds (31 days).
            duration: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                duration: Integer,
                type:
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CUSTOM =
              T.let(
                :CUSTOM,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::TrailingWindowObject::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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

          sig do
            returns(
              T.nilable(
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # Velocity over the current day since 00:00 / 12 AM in Eastern Time
          sig do
            params(
              type:
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(type: nil)
          end

          sig do
            override.returns(
              {
                type:
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :DAY,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowDay::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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

          # The day of the week to start the week from. Following ISO-8601, 1 is Monday and
          # 7 is Sunday. Defaults to Monday if not specified.
          sig { returns(T.nilable(Integer)) }
          attr_reader :day_of_week

          sig { params(day_of_week: Integer).void }
          attr_writer :day_of_week

          sig do
            returns(
              T.nilable(
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # Velocity over the current week since 00:00 / 12 AM in Eastern Time on specified
          # `day_of_week`
          sig do
            params(
              day_of_week: Integer,
              type:
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The day of the week to start the week from. Following ISO-8601, 1 is Monday and
            # 7 is Sunday. Defaults to Monday if not specified.
            day_of_week: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                day_of_week: Integer,
                type:
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WEEK =
              T.let(
                :WEEK,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowWeek::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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

          # The day of the month to start from. Accepts values from 1 to 31, and will reset
          # at the end of the month if the day exceeds the number of days in the month.
          # Defaults to the 1st of the month if not specified.
          sig { returns(T.nilable(Integer)) }
          attr_reader :day_of_month

          sig { params(day_of_month: Integer).void }
          attr_writer :day_of_month

          sig do
            returns(
              T.nilable(
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # Velocity over the current month since 00:00 / 12 AM in Eastern Time on specified
          # `day_of_month`.
          sig do
            params(
              day_of_month: Integer,
              type:
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The day of the month to start from. Accepts values from 1 to 31, and will reset
            # at the end of the month if the day exceeds the number of days in the month.
            # Defaults to the 1st of the month if not specified.
            day_of_month: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                day_of_month: Integer,
                type:
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONTH =
              T.let(
                :MONTH,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowMonth::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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

          sig do
            returns(
              T.nilable(
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # Velocity over the current year since 00:00 / 12 AM in Eastern Time on specified
          # `month` and `day_of_month`. This validates the month and day of the year to
          # start from is a real date. In the event that February 29th is selected, in
          # non-leap years, the window will start from February 28th.
          sig do
            params(
              day_of_month: Integer,
              month: Integer,
              type:
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The day of the month to start from. Defaults to the 1st of the month if not
            # specified.
            day_of_month: nil,
            # The month to start from. 1 is January and 12 is December. Defaults to January if
            # not specified.
            month: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                day_of_month: Integer,
                month: Integer,
                type:
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            YEAR =
              T.let(
                :YEAR,
                Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::VelocityLimitParamsPeriodWindow::FixedWindowYear::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
