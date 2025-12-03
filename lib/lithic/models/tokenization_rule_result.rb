# frozen_string_literal: true

module Lithic
  module Models
    class TokenizationRuleResult < Lithic::Internal::Type::BaseModel
      # @!attribute auth_rule_token
      #   The Auth Rule Token associated with the rule. If this is set to null, then the
      #   result was not associated with a customer-configured rule. This may happen in
      #   cases where a tokenization is declined or requires TFA due to a
      #   Lithic-configured security or compliance rule, for example.
      #
      #   @return [String, nil]
      required :auth_rule_token, String, nil?: true

      # @!attribute explanation
      #   A human-readable explanation outlining the motivation for the rule's result
      #
      #   @return [String, nil]
      required :explanation, String, nil?: true

      # @!attribute name
      #   The name for the rule, if any was configured
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute result
      #   The result associated with this rule
      #
      #   @return [Symbol, Lithic::Models::TokenizationRuleResult::Result]
      required :result, enum: -> { Lithic::TokenizationRuleResult::Result }

      # @!method initialize(auth_rule_token:, explanation:, name:, result:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TokenizationRuleResult} for more details.
      #
      #   @param auth_rule_token [String, nil] The Auth Rule Token associated with the rule. If this is set to null, then the r
      #
      #   @param explanation [String, nil] A human-readable explanation outlining the motivation for the rule's result
      #
      #   @param name [String, nil] The name for the rule, if any was configured
      #
      #   @param result [Symbol, Lithic::Models::TokenizationRuleResult::Result] The result associated with this rule

      # The result associated with this rule
      #
      # @see Lithic::Models::TokenizationRuleResult#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED
        REQUIRE_TFA = :REQUIRE_TFA
        ERROR = :ERROR

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
