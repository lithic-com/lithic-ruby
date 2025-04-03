# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class ConditionalBlockParameters < Lithic::Internal::Type::BaseModel
        # @!attribute conditions
        #
        #   @return [Array<Lithic::Models::AuthRules::AuthRuleCondition>]
        required :conditions, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::AuthRuleCondition] }

        # @!parse
        #   # @param conditions [Array<Lithic::Models::AuthRules::AuthRuleCondition>]
        #   #
        #   def initialize(conditions:, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
      end
    end
  end
end
