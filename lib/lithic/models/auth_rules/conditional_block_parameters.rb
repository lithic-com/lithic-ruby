# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class ConditionalBlockParameters < Lithic::Internal::Type::BaseModel
        # @!attribute conditions
        #
        #   @return [Array<Lithic::Models::AuthRules::AuthRuleCondition>]
        required :conditions, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::AuthRuleCondition] }

        # @!method initialize(conditions:)
        #   @param conditions [Array<Lithic::Models::AuthRules::AuthRuleCondition>]
      end
    end
  end
end
