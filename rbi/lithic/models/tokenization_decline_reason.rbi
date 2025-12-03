# typed: strong

module Lithic
  module Models
    # Reason code for why a tokenization was declined
    module TokenizationDeclineReason
      extend Lithic::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Lithic::TokenizationDeclineReason) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACCOUNT_SCORE_1 =
        T.let(:ACCOUNT_SCORE_1, Lithic::TokenizationDeclineReason::TaggedSymbol)
      DEVICE_SCORE_1 =
        T.let(:DEVICE_SCORE_1, Lithic::TokenizationDeclineReason::TaggedSymbol)
      ALL_WALLET_DECLINE_REASONS_PRESENT =
        T.let(
          :ALL_WALLET_DECLINE_REASONS_PRESENT,
          Lithic::TokenizationDeclineReason::TaggedSymbol
        )
      WALLET_RECOMMENDED_DECISION_RED =
        T.let(
          :WALLET_RECOMMENDED_DECISION_RED,
          Lithic::TokenizationDeclineReason::TaggedSymbol
        )
      CVC_MISMATCH =
        T.let(:CVC_MISMATCH, Lithic::TokenizationDeclineReason::TaggedSymbol)
      CARD_EXPIRY_MONTH_MISMATCH =
        T.let(
          :CARD_EXPIRY_MONTH_MISMATCH,
          Lithic::TokenizationDeclineReason::TaggedSymbol
        )
      CARD_EXPIRY_YEAR_MISMATCH =
        T.let(
          :CARD_EXPIRY_YEAR_MISMATCH,
          Lithic::TokenizationDeclineReason::TaggedSymbol
        )
      CARD_INVALID_STATE =
        T.let(
          :CARD_INVALID_STATE,
          Lithic::TokenizationDeclineReason::TaggedSymbol
        )
      CUSTOMER_RED_PATH =
        T.let(
          :CUSTOMER_RED_PATH,
          Lithic::TokenizationDeclineReason::TaggedSymbol
        )
      INVALID_CUSTOMER_RESPONSE =
        T.let(
          :INVALID_CUSTOMER_RESPONSE,
          Lithic::TokenizationDeclineReason::TaggedSymbol
        )
      NETWORK_FAILURE =
        T.let(:NETWORK_FAILURE, Lithic::TokenizationDeclineReason::TaggedSymbol)
      GENERIC_DECLINE =
        T.let(:GENERIC_DECLINE, Lithic::TokenizationDeclineReason::TaggedSymbol)
      DIGITAL_CARD_ART_REQUIRED =
        T.let(
          :DIGITAL_CARD_ART_REQUIRED,
          Lithic::TokenizationDeclineReason::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Lithic::TokenizationDeclineReason::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
