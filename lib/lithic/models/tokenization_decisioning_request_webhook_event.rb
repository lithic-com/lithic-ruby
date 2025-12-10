# frozen_string_literal: true

module Lithic
  module Models
    class TokenizationDecisioningRequestWebhookEvent < Lithic::Internal::Type::BaseModel
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

      # @!attribute event_type
      #   The name of this event
      #
      #   @return [Symbol, Lithic::Models::TokenizationDecisioningRequestWebhookEvent::EventType]
      required :event_type, enum: -> { Lithic::TokenizationDecisioningRequestWebhookEvent::EventType }

      # @!attribute issuer_decision
      #   Whether Lithic decisioned on the token, and if so, what the decision was.
      #   APPROVED/VERIFICATION_REQUIRED/DENIED.
      #
      #   @return [Symbol, Lithic::Models::TokenizationDecisioningRequestWebhookEvent::IssuerDecision]
      required :issuer_decision, enum: -> { Lithic::TokenizationDecisioningRequestWebhookEvent::IssuerDecision }

      # @!attribute tokenization_channel
      #   The channel through which the tokenization was made.
      #
      #   @return [Symbol, Lithic::Models::TokenizationDecisioningRequestWebhookEvent::TokenizationChannel]
      required :tokenization_channel,
               enum: -> { Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationChannel }

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

      # @!attribute tokenization_source
      #   The source of the tokenization.
      #
      #   @return [Symbol, Lithic::Models::TokenizationDecisioningRequestWebhookEvent::TokenizationSource, nil]
      optional :tokenization_source,
               enum: -> { Lithic::TokenizationDecisioningRequestWebhookEvent::TokenizationSource }

      # @!method initialize(account_token:, card_token:, created:, event_type:, issuer_decision:, tokenization_channel:, tokenization_token:, wallet_decisioning_info:, device: nil, digital_wallet_token_metadata: nil, tokenization_source: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TokenizationDecisioningRequestWebhookEvent} for more details.
      #
      #   A webhook for tokenization decisioning sent to the customer's responder endpoint
      #
      #   @param account_token [String] Unique identifier for the user tokenizing a card
      #
      #   @param card_token [String] Unique identifier for the card being tokenized
      #
      #   @param created [Time] Indicate when the request was received from Mastercard or Visa
      #
      #   @param event_type [Symbol, Lithic::Models::TokenizationDecisioningRequestWebhookEvent::EventType] The name of this event
      #
      #   @param issuer_decision [Symbol, Lithic::Models::TokenizationDecisioningRequestWebhookEvent::IssuerDecision] Whether Lithic decisioned on the token, and if so, what the decision was. APPROV
      #
      #   @param tokenization_channel [Symbol, Lithic::Models::TokenizationDecisioningRequestWebhookEvent::TokenizationChannel] The channel through which the tokenization was made.
      #
      #   @param tokenization_token [String] Unique identifier for the digital wallet token attempt
      #
      #   @param wallet_decisioning_info [Lithic::Models::WalletDecisioningInfo]
      #
      #   @param device [Lithic::Models::Device]
      #
      #   @param digital_wallet_token_metadata [Lithic::Models::DigitalWalletTokenMetadata] Contains the metadata for the digital wallet being tokenized.
      #
      #   @param tokenization_source [Symbol, Lithic::Models::TokenizationDecisioningRequestWebhookEvent::TokenizationSource] The source of the tokenization.

      # The name of this event
      #
      # @see Lithic::Models::TokenizationDecisioningRequestWebhookEvent#event_type
      module EventType
        extend Lithic::Internal::Type::Enum

        DIGITAL_WALLET_TOKENIZATION_APPROVAL_REQUEST = :"digital_wallet.tokenization_approval_request"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether Lithic decisioned on the token, and if so, what the decision was.
      # APPROVED/VERIFICATION_REQUIRED/DENIED.
      #
      # @see Lithic::Models::TokenizationDecisioningRequestWebhookEvent#issuer_decision
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
      # @see Lithic::Models::TokenizationDecisioningRequestWebhookEvent#tokenization_channel
      module TokenizationChannel
        extend Lithic::Internal::Type::Enum

        DIGITAL_WALLET = :DIGITAL_WALLET
        MERCHANT = :MERCHANT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The source of the tokenization.
      #
      # @see Lithic::Models::TokenizationDecisioningRequestWebhookEvent#tokenization_source
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
