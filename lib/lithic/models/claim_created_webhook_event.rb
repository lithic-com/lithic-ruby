# frozen_string_literal: true

module Lithic
  module Models
    class ClaimCreatedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Unique identifier for the claim, in UUID format
      #
      #   @return [String]
      required :token, String

      # @!attribute account_holder_token
      #   Token for the account holder that filed the claim
      #
      #   @return [String, nil]
      required :account_holder_token, String, nil?: true

      # @!attribute account_token
      #   Token for the account associated with the claim
      #
      #   @return [String, nil]
      required :account_token, String, nil?: true

      # @!attribute card_tokens
      #   Tokens for the cards associated with the disputed transactions
      #
      #   @return [Array<String>]
      required :card_tokens, Lithic::Internal::Type::ArrayOf[String]

      # @!attribute created
      #   When the claim was created
      #
      #   @return [Time]
      required :created, Time

      # @!attribute disputed_transactions
      #   Transactions included in this claim
      #
      #   @return [Array<Lithic::Models::ClaimCreatedWebhookEvent::DisputedTransaction>]
      required :disputed_transactions,
               -> { Lithic::Internal::Type::ArrayOf[Lithic::ClaimCreatedWebhookEvent::DisputedTransaction] }

      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"claim.created"]
      required :event_type, const: :"claim.created"

      # @!attribute outstanding_requirements
      #   Requirements that must be fulfilled before the claim can be submitted
      #
      #   @return [Array<Symbol, Lithic::Models::ClaimCreatedWebhookEvent::OutstandingRequirement>]
      required :outstanding_requirements,
               -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::ClaimCreatedWebhookEvent::OutstandingRequirement] }

      # @!attribute reason
      #   Dispute reason code provided when creating the claim
      #
      #   @return [Symbol, Lithic::Models::ClaimCreatedWebhookEvent::Reason]
      required :reason, enum: -> { Lithic::ClaimCreatedWebhookEvent::Reason }

      # @!attribute status
      #   Current lifecycle status of the claim
      #
      #   @return [Symbol, Lithic::Models::ClaimCreatedWebhookEvent::Status]
      required :status, enum: -> { Lithic::ClaimCreatedWebhookEvent::Status }

      # @!attribute submitted
      #   When the claim was submitted. Null until the claim reaches `SUBMITTED` status
      #
      #   @return [Time, nil]
      required :submitted, Time, nil?: true

      # @!attribute updated
      #   When the claim was last updated
      #
      #   @return [Time]
      required :updated, Time

      # @!method initialize(token:, account_holder_token:, account_token:, card_tokens:, created:, disputed_transactions:, outstanding_requirements:, reason:, status:, submitted:, updated:, event_type: :"claim.created")
      #   @param token [String] Unique identifier for the claim, in UUID format
      #
      #   @param account_holder_token [String, nil] Token for the account holder that filed the claim
      #
      #   @param account_token [String, nil] Token for the account associated with the claim
      #
      #   @param card_tokens [Array<String>] Tokens for the cards associated with the disputed transactions
      #
      #   @param created [Time] When the claim was created
      #
      #   @param disputed_transactions [Array<Lithic::Models::ClaimCreatedWebhookEvent::DisputedTransaction>] Transactions included in this claim
      #
      #   @param outstanding_requirements [Array<Symbol, Lithic::Models::ClaimCreatedWebhookEvent::OutstandingRequirement>] Requirements that must be fulfilled before the claim can be submitted
      #
      #   @param reason [Symbol, Lithic::Models::ClaimCreatedWebhookEvent::Reason] Dispute reason code provided when creating the claim
      #
      #   @param status [Symbol, Lithic::Models::ClaimCreatedWebhookEvent::Status] Current lifecycle status of the claim
      #
      #   @param submitted [Time, nil] When the claim was submitted. Null until the claim reaches `SUBMITTED` status
      #
      #   @param updated [Time] When the claim was last updated
      #
      #   @param event_type [Symbol, :"claim.created"] The type of event that occurred.

      class DisputedTransaction < Lithic::Internal::Type::BaseModel
        # @!attribute event_tokens
        #   Tokens for the specific events within the transaction being disputed. Lithic
        #   creates one dispute per event token
        #
        #   @return [Array<String>]
        required :event_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute transaction_token
        #   Token for the transaction being disputed, in UUID format
        #
        #   @return [String]
        required :transaction_token, String

        # @!method initialize(event_tokens:, transaction_token:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::ClaimCreatedWebhookEvent::DisputedTransaction} for more
        #   details.
        #
        #   A transaction included in a claim, along with the specific events being
        #   disputed.
        #
        #   @param event_tokens [Array<String>] Tokens for the specific events within the transaction being disputed. Lithic cre
        #
        #   @param transaction_token [String] Token for the transaction being disputed, in UUID format
      end

      module OutstandingRequirement
        extend Lithic::Internal::Type::Enum

        QUESTIONNAIRE = :QUESTIONNAIRE
        DOCUMENTS = :DOCUMENTS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Dispute reason code provided when creating the claim
      #
      # @see Lithic::Models::ClaimCreatedWebhookEvent#reason
      module Reason
        extend Lithic::Internal::Type::Enum

        CARD_NOT_PRESENT = :CARD_NOT_PRESENT
        CARD_LOST = :CARD_LOST
        CARD_STOLEN = :CARD_STOLEN
        CARD_NEVER_RECEIVED = :CARD_NEVER_RECEIVED
        COUNTERFEIT = :COUNTERFEIT
        ACCOUNT_TAKEOVER = :ACCOUNT_TAKEOVER
        PRODUCT_NOT_RECEIVED = :PRODUCT_NOT_RECEIVED
        NOT_AS_DESCRIBED = :NOT_AS_DESCRIBED
        CREDIT_NOT_PROCESSED = :CREDIT_NOT_PROCESSED
        CANCELLED_RECURRING = :CANCELLED_RECURRING
        PAID_BY_OTHER_MEANS = :PAID_BY_OTHER_MEANS
        DUPLICATE_CHARGE = :DUPLICATE_CHARGE
        LATE_PRESENTMENT = :LATE_PRESENTMENT
        INCORRECT_TRANSACTION_CODE = :INCORRECT_TRANSACTION_CODE
        NO_AUTHORIZATION = :NO_AUTHORIZATION
        DECLINED = :DECLINED
        INCORRECT_AMOUNT = :INCORRECT_AMOUNT
        ATM_CASH_NOT_DISPENSED = :ATM_CASH_NOT_DISPENSED
        ATM_DEPOSIT_WRONG_AMOUNT = :ATM_DEPOSIT_WRONG_AMOUNT
        ATM_DEPOSIT_MISSING = :ATM_DEPOSIT_MISSING

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Current lifecycle status of the claim
      #
      # @see Lithic::Models::ClaimCreatedWebhookEvent#status
      module Status
        extend Lithic::Internal::Type::Enum

        INITIALIZING = :INITIALIZING
        AWAITING_INFO = :AWAITING_INFO
        SUBMITTED = :SUBMITTED
        RESOLVED = :RESOLVED
        ABANDONED = :ABANDONED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
