# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @deprecated
      class ConditionalBlockParameters < Lithic::Internal::Type::BaseModel
        # @!attribute conditions
        #
        #   @return [Array<Lithic::Models::AuthRules::AuthRuleCondition>]
        required :conditions, -> { Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::AuthRuleCondition] }

        # @!method initialize(conditions:)
        #   Deprecated: Use CONDITIONAL_ACTION instead.
        #
        #   @param conditions [Array<Lithic::Models::AuthRules::AuthRuleCondition>]
      end
    end
  end
end
