# typed: strong

module Lithic
  module Models
    module AuthRules
      class ConditionalBlockParameters < Lithic::BaseModel
        sig { returns(T::Array[Lithic::Models::AuthRules::AuthRuleCondition]) }
        def conditions
        end

        sig do
          params(_: T::Array[Lithic::Models::AuthRules::AuthRuleCondition])
            .returns(T::Array[Lithic::Models::AuthRules::AuthRuleCondition])
        end
        def conditions=(_)
        end

        sig do
          params(conditions: T::Array[T.any(Lithic::Models::AuthRules::AuthRuleCondition, Lithic::Util::AnyHash)])
            .returns(T.attached_class)
        end
        def self.new(conditions:)
        end

        sig { override.returns({conditions: T::Array[Lithic::Models::AuthRules::AuthRuleCondition]}) }
        def to_hash
        end
      end
    end
  end
end
