# typed: strong

module Lithic
  module Models
    module AuthRules
      class ConditionalBlockParameters < Lithic::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

        sig { returns(T::Array[Lithic::AuthRules::AuthRuleCondition]) }
        attr_accessor :conditions

        sig do
          params(
            conditions: T::Array[Lithic::AuthRules::AuthRuleCondition::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(conditions:)
        end

        sig do
          override.returns(
            { conditions: T::Array[Lithic::AuthRules::AuthRuleCondition] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
