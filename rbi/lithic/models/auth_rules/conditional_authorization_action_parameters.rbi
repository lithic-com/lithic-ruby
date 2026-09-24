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
            Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::OrSymbol
          )
        end
        attr_accessor :action

        sig { returns(T::Array[Lithic::AuthRules::AuthRuleCondition]) }
        attr_accessor :conditions

        sig do
          params(
            action:
              Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::OrSymbol,
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
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::OrSymbol,
              conditions: T::Array[Lithic::AuthRules::AuthRuleCondition]
            }
          )
        end
        def to_hash
        end

        # The action to take if the conditions are met.
        module Action
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DECLINE =
            T.let(
              :DECLINE,
              Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
            )
          CHALLENGE =
            T.let(
              :CHALLENGE,
              Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
