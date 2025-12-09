# typed: strong

module Lithic
  module Models
    module AuthRules
      # The operation to apply to the attribute
      module ConditionalOperation
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::AuthRules::ConditionalOperation)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IS_ONE_OF =
          T.let(
            :IS_ONE_OF,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        IS_NOT_ONE_OF =
          T.let(
            :IS_NOT_ONE_OF,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        MATCHES =
          T.let(:MATCHES, Lithic::AuthRules::ConditionalOperation::TaggedSymbol)
        DOES_NOT_MATCH =
          T.let(
            :DOES_NOT_MATCH,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        IS_EQUAL_TO =
          T.let(
            :IS_EQUAL_TO,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        IS_NOT_EQUAL_TO =
          T.let(
            :IS_NOT_EQUAL_TO,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        IS_GREATER_THAN =
          T.let(
            :IS_GREATER_THAN,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        IS_GREATER_THAN_OR_EQUAL_TO =
          T.let(
            :IS_GREATER_THAN_OR_EQUAL_TO,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        IS_LESS_THAN =
          T.let(
            :IS_LESS_THAN,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        IS_LESS_THAN_OR_EQUAL_TO =
          T.let(
            :IS_LESS_THAN_OR_EQUAL_TO,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        IS_AFTER =
          T.let(
            :IS_AFTER,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        IS_BEFORE =
          T.let(
            :IS_BEFORE,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        CONTAINS_ANY =
          T.let(
            :CONTAINS_ANY,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        CONTAINS_ALL =
          T.let(
            :CONTAINS_ALL,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )
        CONTAINS_NONE =
          T.let(
            :CONTAINS_NONE,
            Lithic::AuthRules::ConditionalOperation::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::AuthRules::ConditionalOperation::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
