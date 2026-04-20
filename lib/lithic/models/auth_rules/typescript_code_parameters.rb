# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class TypescriptCodeParameters < Lithic::Internal::Type::BaseModel
        # @!attribute code
        #   The TypeScript source code of the rule. Must define a `rule()` function that
        #   accepts the declared features as positional arguments (in the same order as the
        #   `features` array) and returns an array of actions.
        #
        #   @return [String]
        required :code, String

        # @!attribute features
        #   Features available to the TypeScript code at evaluation time
        #
        #   @return [Array<Lithic::Models::AuthRules::RuleFeature::AuthorizationFeature, Lithic::Models::AuthRules::RuleFeature::AuthenticationFeature, Lithic::Models::AuthRules::RuleFeature::TokenizationFeature, Lithic::Models::AuthRules::RuleFeature::ACHReceiptFeature, Lithic::Models::AuthRules::RuleFeature::CardFeature, Lithic::Models::AuthRules::RuleFeature::AccountHolderFeature, Lithic::Models::AuthRules::RuleFeature::IPMetadataFeature, Lithic::Models::AuthRules::RuleFeature::SpendVelocityFeature, Lithic::Models::AuthRules::RuleFeature::TransactionHistorySignalsFeature>]
        required :features, -> { Lithic::Internal::Type::ArrayOf[union: Lithic::AuthRules::RuleFeature] }

        # @!method initialize(code:, features:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::TypescriptCodeParameters} for more details.
        #
        #   Parameters for defining a TypeScript code rule
        #
        #   @param code [String] The TypeScript source code of the rule. Must define a `rule()` function that acc
        #
        #   @param features [Array<Lithic::Models::AuthRules::RuleFeature::AuthorizationFeature, Lithic::Models::AuthRules::RuleFeature::AuthenticationFeature, Lithic::Models::AuthRules::RuleFeature::TokenizationFeature, Lithic::Models::AuthRules::RuleFeature::ACHReceiptFeature, Lithic::Models::AuthRules::RuleFeature::CardFeature, Lithic::Models::AuthRules::RuleFeature::AccountHolderFeature, Lithic::Models::AuthRules::RuleFeature::IPMetadataFeature, Lithic::Models::AuthRules::RuleFeature::SpendVelocityFeature, Lithic::Models::AuthRules::RuleFeature::TransactionHistorySignalsFeature>] Features available to the TypeScript code at evaluation time
      end
    end
  end
end
