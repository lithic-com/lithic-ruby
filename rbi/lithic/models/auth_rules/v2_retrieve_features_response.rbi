# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2RetrieveFeaturesResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AuthRules::V2RetrieveFeaturesResponse,
              Lithic::Internal::AnyHash
            )
          end

        # Timestamp at which the Features were evaluated
        sig { returns(Time) }
        attr_accessor :evaluated

        # Calculated Features used for evaluation of the provided Auth Rule
        sig do
          returns(
            T::Array[
              Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature
            ]
          )
        end
        attr_accessor :features

        sig do
          params(
            evaluated: Time,
            features:
              T::Array[
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Timestamp at which the Features were evaluated
          evaluated:,
          # Calculated Features used for evaluation of the provided Auth Rule
          features:
        )
        end

        sig do
          override.returns(
            {
              evaluated: Time,
              features:
                T::Array[
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature
                ]
            }
          )
        end
        def to_hash
        end

        class Feature < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(Lithic::AuthRules::VelocityLimitFilters) }
          attr_reader :filters

          sig do
            params(
              filters: Lithic::AuthRules::VelocityLimitFilters::OrHash
            ).void
          end
          attr_writer :filters

          # Velocity over the current day since 00:00 / 12 AM in Eastern Time
          sig { returns(Lithic::AuthRules::VelocityLimitPeriod::Variants) }
          attr_accessor :period

          # The scope the velocity is calculated for
          sig do
            returns(
              Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope::TaggedSymbol
            )
          end
          attr_accessor :scope

          sig do
            returns(
              Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value
            )
          end
          attr_reader :value

          sig do
            params(
              value:
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value::OrHash
            ).void
          end
          attr_writer :value

          sig do
            params(
              filters: Lithic::AuthRules::VelocityLimitFilters::OrHash,
              period:
                T.any(
                  Lithic::AuthRules::VelocityLimitPeriod::TrailingWindowObject::OrHash,
                  Lithic::AuthRules::VelocityLimitPeriod::FixedWindowDay::OrHash,
                  Lithic::AuthRules::VelocityLimitPeriod::FixedWindowWeek::OrHash,
                  Lithic::AuthRules::VelocityLimitPeriod::FixedWindowMonth::OrHash,
                  Lithic::AuthRules::VelocityLimitPeriod::FixedWindowYear::OrHash
                ),
              scope:
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope::OrSymbol,
              value:
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            filters:,
            # Velocity over the current day since 00:00 / 12 AM in Eastern Time
            period:,
            # The scope the velocity is calculated for
            scope:,
            value:
          )
          end

          sig do
            override.returns(
              {
                filters: Lithic::AuthRules::VelocityLimitFilters,
                period: Lithic::AuthRules::VelocityLimitPeriod::Variants,
                scope:
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope::TaggedSymbol,
                value:
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value
              }
            )
          end
          def to_hash
          end

          # The scope the velocity is calculated for
          module Scope
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CARD =
              T.let(
                :CARD,
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope::TaggedSymbol
              )
            ACCOUNT =
              T.let(
                :ACCOUNT,
                Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Scope::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Value < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Models::AuthRules::V2RetrieveFeaturesResponse::Feature::Value,
                  Lithic::Internal::AnyHash
                )
              end

            # Amount (in cents) for the given Auth Rule that is used as input for calculating
            # the rule. For Velocity Limit rules this would be the calculated Velocity. For
            # Conditional Rules using CARD*TRANSACTION_COUNT*\* this will be 0
            sig { returns(Integer) }
            attr_accessor :amount

            # Number of velocity impacting transactions matching the given scope, period and
            # filters
            sig { returns(Integer) }
            attr_accessor :count

            sig do
              params(amount: Integer, count: Integer).returns(T.attached_class)
            end
            def self.new(
              # Amount (in cents) for the given Auth Rule that is used as input for calculating
              # the rule. For Velocity Limit rules this would be the calculated Velocity. For
              # Conditional Rules using CARD*TRANSACTION_COUNT*\* this will be 0
              amount:,
              # Number of velocity impacting transactions matching the given scope, period and
              # filters
              count:
            )
            end

            sig { override.returns({ amount: Integer, count: Integer }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
