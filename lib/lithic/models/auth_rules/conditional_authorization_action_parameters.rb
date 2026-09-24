# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class ConditionalAuthorizationActionParameters < Lithic::Internal::Type::BaseModel
        # @!attribute action
        #   The action to take if the conditions are met.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action]
        required :action, enum: -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action }

        # @!attribute conditions
        #
        #   @return [Array<Lithic::Models::AuthRules::AuthRuleCondition>]
        required :conditions, -> { Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::AuthRuleCondition] }

        # @!method initialize(action:, conditions:)
        #   @param action [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action] The action to take if the conditions are met.
        #
        #   @param conditions [Array<Lithic::Models::AuthRules::AuthRuleCondition>]

        # The action to take if the conditions are met.
        #
        # @see Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters#action
        module Action
          extend Lithic::Internal::Type::Enum

          DECLINE = :DECLINE
          CHALLENGE = :CHALLENGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
