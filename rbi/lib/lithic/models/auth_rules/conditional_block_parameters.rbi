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

        sig { params(conditions: T::Array[Lithic::Models::AuthRules::AuthRuleCondition]).returns(T.attached_class) }
        def self.new(conditions:)
        end

        sig { override.returns({conditions: T::Array[Lithic::Models::AuthRules::AuthRuleCondition]}) }
        def to_hash
        end
      end
    end
  end
end
