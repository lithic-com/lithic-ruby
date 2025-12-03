# typed: strong

module Lithic
  module Models
    # Reason code for why a tokenization required two-factor authentication
    module TokenizationTfaReason
      extend Lithic::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Lithic::TokenizationTfaReason) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      WALLET_RECOMMENDED_TFA =
        T.let(
          :WALLET_RECOMMENDED_TFA,
          Lithic::TokenizationTfaReason::TaggedSymbol
        )
      SUSPICIOUS_ACTIVITY =
        T.let(:SUSPICIOUS_ACTIVITY, Lithic::TokenizationTfaReason::TaggedSymbol)
      DEVICE_RECENTLY_LOST =
        T.let(
          :DEVICE_RECENTLY_LOST,
          Lithic::TokenizationTfaReason::TaggedSymbol
        )
      TOO_MANY_RECENT_ATTEMPTS =
        T.let(
          :TOO_MANY_RECENT_ATTEMPTS,
          Lithic::TokenizationTfaReason::TaggedSymbol
        )
      TOO_MANY_RECENT_TOKENS =
        T.let(
          :TOO_MANY_RECENT_TOKENS,
          Lithic::TokenizationTfaReason::TaggedSymbol
        )
      TOO_MANY_DIFFERENT_CARDHOLDERS =
        T.let(
          :TOO_MANY_DIFFERENT_CARDHOLDERS,
          Lithic::TokenizationTfaReason::TaggedSymbol
        )
      OUTSIDE_HOME_TERRITORY =
        T.let(
          :OUTSIDE_HOME_TERRITORY,
          Lithic::TokenizationTfaReason::TaggedSymbol
        )
      HAS_SUSPENDED_TOKENS =
        T.let(
          :HAS_SUSPENDED_TOKENS,
          Lithic::TokenizationTfaReason::TaggedSymbol
        )
      HIGH_RISK = T.let(:HIGH_RISK, Lithic::TokenizationTfaReason::TaggedSymbol)
      ACCOUNT_SCORE_LOW =
        T.let(:ACCOUNT_SCORE_LOW, Lithic::TokenizationTfaReason::TaggedSymbol)
      DEVICE_SCORE_LOW =
        T.let(:DEVICE_SCORE_LOW, Lithic::TokenizationTfaReason::TaggedSymbol)
      CARD_STATE_TFA =
        T.let(:CARD_STATE_TFA, Lithic::TokenizationTfaReason::TaggedSymbol)
      HARDCODED_TFA =
        T.let(:HARDCODED_TFA, Lithic::TokenizationTfaReason::TaggedSymbol)
      CUSTOMER_RULE_TFA =
        T.let(:CUSTOMER_RULE_TFA, Lithic::TokenizationTfaReason::TaggedSymbol)
      DEVICE_HOST_CARD_EMULATION =
        T.let(
          :DEVICE_HOST_CARD_EMULATION,
          Lithic::TokenizationTfaReason::TaggedSymbol
        )

      sig do
        override.returns(T::Array[Lithic::TokenizationTfaReason::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
