# frozen_string_literal: true

module Lithic
  module Models
    class DigitalWalletTokenizationResultWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute account_token
      #   Account token
      #
      #   @return [String]
      required :account_token, String

      # @!attribute card_token
      #   Card token
      #
      #   @return [String]
      required :card_token, String

      # @!attribute created
      #   Created date
      #
      #   @return [Time]
      required :created, Time

      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"digital_wallet.tokenization_result"]
      required :event_type, const: :"digital_wallet.tokenization_result"

      # @!attribute tokenization_result_details
      #   The result of the tokenization request.
      #
      #   @return [Lithic::Models::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails]
      required :tokenization_result_details,
               -> { Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails }

      # @!attribute tokenization_token
      #   Tokenization token
      #
      #   @return [String]
      required :tokenization_token, String

      # @!method initialize(account_token:, card_token:, created:, tokenization_result_details:, tokenization_token:, event_type: :"digital_wallet.tokenization_result")
      #   @param account_token [String] Account token
      #
      #   @param card_token [String] Card token
      #
      #   @param created [Time] Created date
      #
      #   @param tokenization_result_details [Lithic::Models::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails] The result of the tokenization request.
      #
      #   @param tokenization_token [String] Tokenization token
      #
      #   @param event_type [Symbol, :"digital_wallet.tokenization_result"] The type of event that occurred.

      # @see Lithic::Models::DigitalWalletTokenizationResultWebhookEvent#tokenization_result_details
      class TokenizationResultDetails < Lithic::Internal::Type::BaseModel
        # @!attribute issuer_decision
        #   Lithic's tokenization decision.
        #
        #   @return [String]
        required :issuer_decision, String

        # @!attribute tokenization_decline_reasons
        #   List of reasons why the tokenization was declined
        #
        #   @return [Array<Symbol, Lithic::Models::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason>]
        required :tokenization_decline_reasons,
                 -> do
                   Lithic::Internal::Type::ArrayOf[
                     enum: Lithic::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason
                   ]
                 end

        # @!attribute customer_decision
        #   The customer's tokenization decision if applicable.
        #
        #   @return [String, nil]
        optional :customer_decision, String, nil?: true

        # @!attribute rule_results
        #   Results from rules that were evaluated for this tokenization
        #
        #   @return [Array<Lithic::Models::TokenizationRuleResult>, nil]
        optional :rule_results, -> { Lithic::Internal::Type::ArrayOf[Lithic::TokenizationRuleResult] }

        # @!attribute token_activated_date_time
        #   An RFC 3339 timestamp indicating when the tokenization succeeded.
        #
        #   @return [Time, nil]
        optional :token_activated_date_time, Time, nil?: true

        # @!attribute tokenization_tfa_reasons
        #   List of reasons why two-factor authentication was required
        #
        #   @return [Array<Symbol, Lithic::Models::TokenizationTfaReason>, nil]
        optional :tokenization_tfa_reasons,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::TokenizationTfaReason] }

        # @!attribute wallet_decision
        #   The wallet's recommended decision.
        #
        #   @return [String, nil]
        optional :wallet_decision, String, nil?: true

        # @!method initialize(issuer_decision:, tokenization_decline_reasons:, customer_decision: nil, rule_results: nil, token_activated_date_time: nil, tokenization_tfa_reasons: nil, wallet_decision: nil)
        #   The result of the tokenization request.
        #
        #   @param issuer_decision [String] Lithic's tokenization decision.
        #
        #   @param tokenization_decline_reasons [Array<Symbol, Lithic::Models::DigitalWalletTokenizationResultWebhookEvent::TokenizationResultDetails::TokenizationDeclineReason>] List of reasons why the tokenization was declined
        #
        #   @param customer_decision [String, nil] The customer's tokenization decision if applicable.
        #
        #   @param rule_results [Array<Lithic::Models::TokenizationRuleResult>] Results from rules that were evaluated for this tokenization
        #
        #   @param token_activated_date_time [Time, nil] An RFC 3339 timestamp indicating when the tokenization succeeded.
        #
        #   @param tokenization_tfa_reasons [Array<Symbol, Lithic::Models::TokenizationTfaReason>] List of reasons why two-factor authentication was required
        #
        #   @param wallet_decision [String, nil] The wallet's recommended decision.

        module TokenizationDeclineReason
          extend Lithic::Internal::Type::Enum

          ACCOUNT_SCORE_1 = :ACCOUNT_SCORE_1
          ALL_WALLET_DECLINE_REASONS_PRESENT = :ALL_WALLET_DECLINE_REASONS_PRESENT
          CARD_EXPIRY_MONTH_MISMATCH = :CARD_EXPIRY_MONTH_MISMATCH
          CARD_EXPIRY_YEAR_MISMATCH = :CARD_EXPIRY_YEAR_MISMATCH
          CARD_INVALID_STATE = :CARD_INVALID_STATE
          CUSTOMER_RED_PATH = :CUSTOMER_RED_PATH
          CVC_MISMATCH = :CVC_MISMATCH
          DEVICE_SCORE_1 = :DEVICE_SCORE_1
          GENERIC_DECLINE = :GENERIC_DECLINE
          INVALID_CUSTOMER_RESPONSE = :INVALID_CUSTOMER_RESPONSE
          NETWORK_FAILURE = :NETWORK_FAILURE
          WALLET_RECOMMENDED_DECISION_RED = :WALLET_RECOMMENDED_DECISION_RED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
