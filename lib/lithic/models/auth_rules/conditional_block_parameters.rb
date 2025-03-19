# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class ConditionalBlockParameters < Lithic::BaseModel
        # @!attribute conditions
        #
        #   @return [Array<Lithic::Models::AuthRules::AuthRuleCondition>]
        required :conditions, -> { Lithic::ArrayOf[Lithic::Models::AuthRules::AuthRuleCondition] }

        # @!parse
        #   # @param conditions [Array<Lithic::Models::AuthRules::AuthRuleCondition>]
        #   #
        #   def initialize(conditions:, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
