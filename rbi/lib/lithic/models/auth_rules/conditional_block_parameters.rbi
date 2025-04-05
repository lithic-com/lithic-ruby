# typed: strong

module Lithic
  module Models
    module AuthRules
      class ConditionalBlockParameters < Lithic::Internal::Type::BaseModel
        sig { returns(T::Array[Lithic::Models::AuthRules::AuthRuleCondition]) }
        attr_accessor :conditions

        sig do
          params(
            conditions: T::Array[T.any(Lithic::Models::AuthRules::AuthRuleCondition, Lithic::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(conditions:); end

        sig { override.returns({conditions: T::Array[Lithic::Models::AuthRules::AuthRuleCondition]}) }
        def to_hash; end
      end
    end
  end
end
