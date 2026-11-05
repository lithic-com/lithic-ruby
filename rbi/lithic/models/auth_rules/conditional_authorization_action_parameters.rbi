# typed: strong

module Lithic
  module Models
    module AuthRules
      class ConditionalAuthorizationActionParameters < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::ConditionalAuthorizationActionParameters,
              Lithic::Internal::AnyHash
            )
          end

        # The action to take if the conditions are met.
        sig do
          returns(
            T.any(
              Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::AuthorizationAction::OrSymbol,
              Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction
            )
          )
        end
        attr_accessor :action

        sig { returns(T::Array[Lithic::AuthRules::AuthRuleCondition]) }
        attr_accessor :conditions

        sig do
          params(
            action:
              T.any(
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::AuthorizationAction::OrSymbol,
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::OrHash
              ),
            conditions: T::Array[Lithic::AuthRules::AuthRuleCondition::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The action to take if the conditions are met.
          action:,
          conditions:
        )
        end

        sig do
          override.returns(
            {
              action:
                T.any(
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::AuthorizationAction::OrSymbol,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction
                ),
              conditions: T::Array[Lithic::AuthRules::AuthRuleCondition]
            }
          )
        end
        def to_hash
        end

        # The action to take if the conditions are met.
        module Action
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::AuthorizationAction::TaggedSymbol,
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction
              )
            end

          module AuthorizationAction
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::AuthorizationAction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DECLINE =
              T.let(
                :DECLINE,
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::AuthorizationAction::TaggedSymbol
              )
            CHALLENGE =
              T.let(
                :CHALLENGE,
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::AuthorizationAction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::AuthorizationAction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class HoldAdjustmentAction < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction,
                  Lithic::Internal::AnyHash
                )
              end

            # The mode of the hold adjustment, determining how the value is interpreted:
            #
            # - `REPLACE_WITH_AMOUNT`: The value is the approved hold amount in cents.
            # - `ADD_PERCENTAGE`: The value adjusts the hold amount by a percentage. 1000
            #   represents a 10% increase, 0 represents no change.
            # - `ADD_AMOUNT`: The value is added to the hold amount in cents.
            sig do
              returns(
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Mode::OrSymbol
              )
            end
            attr_accessor :mode

            # The type of adjustment to apply
            sig do
              returns(
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Type::OrSymbol
              )
            end
            attr_accessor :type

            # The value used for the hold adjustment, interpreted based on the mode
            sig { returns(Integer) }
            attr_accessor :value

            # The hold adjustment to apply if the conditions are met.
            sig do
              params(
                mode:
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Mode::OrSymbol,
                type:
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Type::OrSymbol,
                value: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # The mode of the hold adjustment, determining how the value is interpreted:
              #
              # - `REPLACE_WITH_AMOUNT`: The value is the approved hold amount in cents.
              # - `ADD_PERCENTAGE`: The value adjusts the hold amount by a percentage. 1000
              #   represents a 10% increase, 0 represents no change.
              # - `ADD_AMOUNT`: The value is added to the hold amount in cents.
              mode:,
              # The type of adjustment to apply
              type:,
              # The value used for the hold adjustment, interpreted based on the mode
              value:
            )
            end

            sig do
              override.returns(
                {
                  mode:
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Mode::OrSymbol,
                  type:
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Type::OrSymbol,
                  value: Integer
                }
              )
            end
            def to_hash
            end

            # The mode of the hold adjustment, determining how the value is interpreted:
            #
            # - `REPLACE_WITH_AMOUNT`: The value is the approved hold amount in cents.
            # - `ADD_PERCENTAGE`: The value adjusts the hold amount by a percentage. 1000
            #   represents a 10% increase, 0 represents no change.
            # - `ADD_AMOUNT`: The value is added to the hold amount in cents.
            module Mode
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Mode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              REPLACE_WITH_AMOUNT =
                T.let(
                  :REPLACE_WITH_AMOUNT,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Mode::TaggedSymbol
                )
              ADD_PERCENTAGE =
                T.let(
                  :ADD_PERCENTAGE,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Mode::TaggedSymbol
                )
              ADD_AMOUNT =
                T.let(
                  :ADD_AMOUNT,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Mode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Mode::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The type of adjustment to apply
            module Type
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              HOLD_ADJUSTMENT =
                T.let(
                  :HOLD_ADJUSTMENT,
                  Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Type::TaggedSymbol
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
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
