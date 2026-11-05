# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class ConditionalAuthorizationActionParameters < Lithic::Internal::Type::BaseModel
        # @!attribute action
        #   The action to take if the conditions are met.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::AuthorizationAction, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction]
        required :action, union: -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action }

        # @!attribute conditions
        #
        #   @return [Array<Lithic::Models::AuthRules::AuthRuleCondition>]
        required :conditions, -> { Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::AuthRuleCondition] }

        # @!method initialize(action:, conditions:)
        #   @param action [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::AuthorizationAction, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction] The action to take if the conditions are met.
        #
        #   @param conditions [Array<Lithic::Models::AuthRules::AuthRuleCondition>]

        # The action to take if the conditions are met.
        #
        # @see Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters#action
        module Action
          extend Lithic::Internal::Type::Union

          variant enum: -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::AuthorizationAction }

          # The hold adjustment to apply if the conditions are met.
          variant -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction }

          module AuthorizationAction
            extend Lithic::Internal::Type::Enum

            DECLINE = :DECLINE
            CHALLENGE = :CHALLENGE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class HoldAdjustmentAction < Lithic::Internal::Type::BaseModel
            # @!attribute mode
            #   The mode of the hold adjustment, determining how the value is interpreted:
            #
            #   - `REPLACE_WITH_AMOUNT`: The value is the approved hold amount in cents.
            #   - `ADD_PERCENTAGE`: The value adjusts the hold amount by a percentage. 1000
            #     represents a 10% increase, 0 represents no change.
            #   - `ADD_AMOUNT`: The value is added to the hold amount in cents.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Mode]
            required :mode,
                     enum: -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Mode }

            # @!attribute type
            #   The type of adjustment to apply
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Type]
            required :type,
                     enum: -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Type }

            # @!attribute value
            #   The value used for the hold adjustment, interpreted based on the mode
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(mode:, type:, value:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction}
            #   for more details.
            #
            #   The hold adjustment to apply if the conditions are met.
            #
            #   @param mode [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Mode] The mode of the hold adjustment, determining how the value is interpreted:
            #
            #   @param type [Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction::Type] The type of adjustment to apply
            #
            #   @param value [Integer] The value used for the hold adjustment, interpreted based on the mode

            # The mode of the hold adjustment, determining how the value is interpreted:
            #
            # - `REPLACE_WITH_AMOUNT`: The value is the approved hold amount in cents.
            # - `ADD_PERCENTAGE`: The value adjusts the hold amount by a percentage. 1000
            #   represents a 10% increase, 0 represents no change.
            # - `ADD_AMOUNT`: The value is added to the hold amount in cents.
            #
            # @see Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction#mode
            module Mode
              extend Lithic::Internal::Type::Enum

              REPLACE_WITH_AMOUNT = :REPLACE_WITH_AMOUNT
              ADD_PERCENTAGE = :ADD_PERCENTAGE
              ADD_AMOUNT = :ADD_AMOUNT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The type of adjustment to apply
            #
            # @see Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction#type
            module Type
              extend Lithic::Internal::Type::Enum

              HOLD_ADJUSTMENT = :HOLD_ADJUSTMENT

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Symbol, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::AuthorizationAction, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters::Action::HoldAdjustmentAction)]
        end
      end
    end
  end
end
