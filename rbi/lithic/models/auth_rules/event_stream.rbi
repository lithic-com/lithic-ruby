# typed: strong

module Lithic
  module Models
    module AuthRules
      # The event stream during which the rule will be evaluated.
      module EventStream
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::AuthRules::EventStream) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZATION =
          T.let(:AUTHORIZATION, Lithic::AuthRules::EventStream::TaggedSymbol)
        THREE_DS_AUTHENTICATION =
          T.let(
            :THREE_DS_AUTHENTICATION,
            Lithic::AuthRules::EventStream::TaggedSymbol
          )
        TOKENIZATION =
          T.let(:TOKENIZATION, Lithic::AuthRules::EventStream::TaggedSymbol)
        ACH_CREDIT_RECEIPT =
          T.let(
            :ACH_CREDIT_RECEIPT,
            Lithic::AuthRules::EventStream::TaggedSymbol
          )
        ACH_DEBIT_RECEIPT =
          T.let(
            :ACH_DEBIT_RECEIPT,
            Lithic::AuthRules::EventStream::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::AuthRules::EventStream::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
