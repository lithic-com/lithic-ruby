# frozen_string_literal: true

module Lithic
  module Models
    class DigitalWalletTokenizationApprovalRequestWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute account_token
      #   Unique identifier for the user tokenizing a card
      #
      #   @return [String]
      required :account_token, String

      # @!attribute card_token
      #   Unique identifier for the card being tokenized
      #
      #   @return [String]
      required :card_token, String

      # @!attribute created
      #   Indicate when the request was received from Mastercard or Visa
      #
      #   @return [Time]
      required :created, Time

      # @!attribute customer_tokenization_decision
      #   Contains the metadata for the customer tokenization decision.
      #
      #   @return [Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision, nil]
      required :customer_tokenization_decision,
               -> {
                 Lithic::DigitalWalletTokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision
               },
               nil?: true

      # @!attribute event_type
      #   The name of this event
      #
      #   @return [Symbol, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::EventType]
      required :event_type, enum: -> { Lithic::DigitalWalletTokenizationApprovalRequestWebhookEvent::EventType }

      # @!attribute issuer_decision
      #   Whether Lithic decisioned on the token, and if so, what the decision was.
      #   APPROVED/VERIFICATION_REQUIRED/DENIED.
      #
      #   @return [Symbol, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::IssuerDecision]
      required :issuer_decision,
               enum: -> { Lithic::DigitalWalletTokenizationApprovalRequestWebhookEvent::IssuerDecision }

      # @!attribute tokenization_channel
      #   The channel through which the tokenization was made.
      #
      #   @return [Symbol, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::TokenizationChannel]
      required :tokenization_channel,
               enum: -> { Lithic::DigitalWalletTokenizationApprovalRequestWebhookEvent::TokenizationChannel }

      # @!attribute tokenization_token
      #   Unique identifier for the digital wallet token attempt
      #
      #   @return [String]
      required :tokenization_token, String

      # @!attribute wallet_decisioning_info
      #
      #   @return [Lithic::Models::WalletDecisioningInfo]
      required :wallet_decisioning_info, -> { Lithic::WalletDecisioningInfo }

      # @!attribute device
      #
      #   @return [Lithic::Models::Device, nil]
      optional :device, -> { Lithic::Device }

      # @!attribute digital_wallet_token_metadata
      #   Contains the metadata for the digital wallet being tokenized.
      #
      #   @return [Lithic::Models::DigitalWalletTokenMetadata, nil]
      optional :digital_wallet_token_metadata, -> { Lithic::DigitalWalletTokenMetadata }

      # @!attribute rule_results
      #   Results from rules that were evaluated for this tokenization
      #
      #   @return [Array<Lithic::Models::TokenizationRuleResult>, nil]
      optional :rule_results, -> { Lithic::Internal::Type::ArrayOf[Lithic::TokenizationRuleResult] }

      # @!attribute tokenization_decline_reasons
      #   List of reasons why the tokenization was declined
      #
      #   @return [Array<Symbol, Lithic::Models::TokenizationDeclineReason>, nil]
      optional :tokenization_decline_reasons,
               -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::TokenizationDeclineReason] }

      # @!attribute tokenization_source
      #   The source of the tokenization.
      #
      #   @return [Symbol, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::TokenizationSource, nil]
      optional :tokenization_source,
               enum: -> { Lithic::DigitalWalletTokenizationApprovalRequestWebhookEvent::TokenizationSource }

      # @!attribute tokenization_tfa_reasons
      #   List of reasons why two-factor authentication was required
      #
      #   @return [Array<Symbol, Lithic::Models::TokenizationTfaReason>, nil]
      optional :tokenization_tfa_reasons,
               -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::TokenizationTfaReason] }

      # @!method initialize(account_token:, card_token:, created:, customer_tokenization_decision:, event_type:, issuer_decision:, tokenization_channel:, tokenization_token:, wallet_decisioning_info:, device: nil, digital_wallet_token_metadata: nil, rule_results: nil, tokenization_decline_reasons: nil, tokenization_source: nil, tokenization_tfa_reasons: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent} for more
      #   details.
      #
      #   @param account_token [String] Unique identifier for the user tokenizing a card
      #
      #   @param card_token [String] Unique identifier for the card being tokenized
      #
      #   @param created [Time] Indicate when the request was received from Mastercard or Visa
      #
      #   @param customer_tokenization_decision [Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision, nil] Contains the metadata for the customer tokenization decision.
      #
      #   @param event_type [Symbol, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::EventType] The name of this event
      #
      #   @param issuer_decision [Symbol, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::IssuerDecision] Whether Lithic decisioned on the token, and if so, what the decision was. APPROV
      #
      #   @param tokenization_channel [Symbol, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::TokenizationChannel] The channel through which the tokenization was made.
      #
      #   @param tokenization_token [String] Unique identifier for the digital wallet token attempt
      #
      #   @param wallet_decisioning_info [Lithic::Models::WalletDecisioningInfo]
      #
      #   @param device [Lithic::Models::Device]
      #
      #   @param digital_wallet_token_metadata [Lithic::Models::DigitalWalletTokenMetadata] Contains the metadata for the digital wallet being tokenized.
      #
      #   @param rule_results [Array<Lithic::Models::TokenizationRuleResult>] Results from rules that were evaluated for this tokenization
      #
      #   @param tokenization_decline_reasons [Array<Symbol, Lithic::Models::TokenizationDeclineReason>] List of reasons why the tokenization was declined
      #
      #   @param tokenization_source [Symbol, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::TokenizationSource] The source of the tokenization.
      #
      #   @param tokenization_tfa_reasons [Array<Symbol, Lithic::Models::TokenizationTfaReason>] List of reasons why two-factor authentication was required

      # @see Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent#customer_tokenization_decision
      class CustomerTokenizationDecision < Lithic::Internal::Type::BaseModel
        # @!attribute outcome
        #   The outcome of the customer's decision
        #
        #   @return [Symbol, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome]
        required :outcome,
                 enum: -> { Lithic::DigitalWalletTokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome }

        # @!attribute responder_url
        #   The customer's subscribed URL
        #
        #   @return [String]
        required :responder_url, String

        # @!attribute latency
        #   Time in ms it took for the customer's URL to respond
        #
        #   @return [String, nil]
        optional :latency, String

        # @!attribute response_code
        #   The response code that the customer provided
        #
        #   @return [String, nil]
        optional :response_code, String

        # @!method initialize(outcome:, responder_url:, latency: nil, response_code: nil)
        #   Contains the metadata for the customer tokenization decision.
        #
        #   @param outcome [Symbol, Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision::Outcome] The outcome of the customer's decision
        #
        #   @param responder_url [String] The customer's subscribed URL
        #
        #   @param latency [String] Time in ms it took for the customer's URL to respond
        #
        #   @param response_code [String] The response code that the customer provided

        # The outcome of the customer's decision
        #
        # @see Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent::CustomerTokenizationDecision#outcome
        module Outcome
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED
          ERROR = :ERROR
          INVALID_RESPONSE = :INVALID_RESPONSE
          REQUIRE_ADDITIONAL_AUTHENTICATION = :REQUIRE_ADDITIONAL_AUTHENTICATION
          TIMEOUT = :TIMEOUT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The name of this event
      #
      # @see Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent#event_type
      module EventType
        extend Lithic::Internal::Type::Enum

        DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST = :"digital_wallet.tokenization_approval_request"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether Lithic decisioned on the token, and if so, what the decision was.
      # APPROVED/VERIFICATION_REQUIRED/DENIED.
      #
      # @see Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent#issuer_decision
      module IssuerDecision
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DENIED = :DENIED
        VERIFICATION_REQUIRED = :VERIFICATION_REQUIRED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The channel through which the tokenization was made.
      #
      # @see Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent#tokenization_channel
      module TokenizationChannel
        extend Lithic::Internal::Type::Enum

        DIGITAL_WALLET = :DIGITAL_WALLET
        MERCHANT = :MERCHANT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The source of the tokenization.
      #
      # @see Lithic::Models::DigitalWalletTokenizationApprovalRequestWebhookEvent#tokenization_source
      module TokenizationSource
        extend Lithic::Internal::Type::Enum

        ACCOUNT_ON_FILE = :ACCOUNT_ON_FILE
        CONTACTLESS_TAP = :CONTACTLESS_TAP
        MANUAL_PROVISION = :MANUAL_PROVISION
        PUSH_PROVISION = :PUSH_PROVISION
        TOKEN = :TOKEN
        UNKNOWN = :UNKNOWN

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
