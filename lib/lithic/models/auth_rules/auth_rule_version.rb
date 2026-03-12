# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class AuthRuleVersion < Lithic::Internal::Type::BaseModel
        # @!attribute created
        #   Timestamp of when this version was created.
        #
        #   @return [Time]
        required :created, Time

        # @!attribute parameters
        #   Parameters for the Auth Rule
        #
        #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters]
        required :parameters, union: -> { Lithic::AuthRules::AuthRuleVersion::Parameters }

        # @!attribute state
        #   The current state of this version.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::AuthRuleVersion::State]
        required :state, enum: -> { Lithic::AuthRules::AuthRuleVersion::State }

        response_only do
          # @!attribute version
          #   The version of the rule, this is incremented whenever the rule's parameters
          #   change.
          #
          #   @return [Integer]
          required :version, Integer
        end

        # @!method initialize(created:, parameters:, state:, version:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::AuthRuleVersion} for more details.
        #
        #   @param created [Time] Timestamp of when this version was created.
        #
        #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters] Parameters for the Auth Rule
        #
        #   @param state [Symbol, Lithic::Models::AuthRules::AuthRuleVersion::State] The current state of this version.
        #
        #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

        # Parameters for the Auth Rule
        #
        # @see Lithic::Models::AuthRules::AuthRuleVersion#parameters
        module Parameters
          extend Lithic::Internal::Type::Union

          # Deprecated: Use CONDITIONAL_ACTION instead.
          variant -> { Lithic::AuthRules::ConditionalBlockParameters }

          variant -> { Lithic::AuthRules::VelocityLimitParams }

          variant -> { Lithic::AuthRules::MerchantLockParameters }

          variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

          variant -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters }

          variant -> { Lithic::AuthRules::ConditionalACHActionParameters }

          variant -> { Lithic::AuthRules::ConditionalTokenizationActionParameters }

          # Parameters for defining a TypeScript code rule
          variant -> { Lithic::AuthRules::TypescriptCodeParameters }

          # @!method self.variants
          #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters)]
        end

        # The current state of this version.
        #
        # @see Lithic::Models::AuthRules::AuthRuleVersion#state
        module State
          extend Lithic::Internal::Type::Enum

          ACTIVE = :ACTIVE
          SHADOW = :SHADOW
          INACTIVE = :INACTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    AuthRuleVersion = AuthRules::AuthRuleVersion
  end
end
