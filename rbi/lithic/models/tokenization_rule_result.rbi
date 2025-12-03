# typed: strong

module Lithic
  module Models
    class TokenizationRuleResult < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::TokenizationRuleResult, Lithic::Internal::AnyHash)
        end

      # The Auth Rule Token associated with the rule. If this is set to null, then the
      # result was not associated with a customer-configured rule. This may happen in
      # cases where a tokenization is declined or requires TFA due to a
      # Lithic-configured security or compliance rule, for example.
      sig { returns(T.nilable(String)) }
      attr_accessor :auth_rule_token

      # A human-readable explanation outlining the motivation for the rule's result
      sig { returns(T.nilable(String)) }
      attr_accessor :explanation

      # The name for the rule, if any was configured
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The result associated with this rule
      sig { returns(Lithic::TokenizationRuleResult::Result::TaggedSymbol) }
      attr_accessor :result

      sig do
        params(
          auth_rule_token: T.nilable(String),
          explanation: T.nilable(String),
          name: T.nilable(String),
          result: Lithic::TokenizationRuleResult::Result::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The Auth Rule Token associated with the rule. If this is set to null, then the
        # result was not associated with a customer-configured rule. This may happen in
        # cases where a tokenization is declined or requires TFA due to a
        # Lithic-configured security or compliance rule, for example.
        auth_rule_token:,
        # A human-readable explanation outlining the motivation for the rule's result
        explanation:,
        # The name for the rule, if any was configured
        name:,
        # The result associated with this rule
        result:
      )
      end

      sig do
        override.returns(
          {
            auth_rule_token: T.nilable(String),
            explanation: T.nilable(String),
            name: T.nilable(String),
            result: Lithic::TokenizationRuleResult::Result::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The result associated with this rule
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::TokenizationRuleResult::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:APPROVED, Lithic::TokenizationRuleResult::Result::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::TokenizationRuleResult::Result::TaggedSymbol)
        REQUIRE_TFA =
          T.let(
            :REQUIRE_TFA,
            Lithic::TokenizationRuleResult::Result::TaggedSymbol
          )
        ERROR =
          T.let(:ERROR, Lithic::TokenizationRuleResult::Result::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::TokenizationRuleResult::Result::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
