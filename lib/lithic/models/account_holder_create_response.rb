# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#create
    class AccountHolderCreateResponse < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier for the account holder.
      #
      #   @return [String]
      required :token, String

      # @!attribute account_token
      #   Globally unique identifier for the account.
      #
      #   @return [String]
      required :account_token, String

      # @!attribute status
      #   KYC and KYB evaluation states.
      #
      #   Note:
      #
      #   - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      #
      #   @return [Symbol, Lithic::Models::AccountHolderCreateResponse::Status]
      required :status, enum: -> { Lithic::Models::AccountHolderCreateResponse::Status }

      # @!attribute status_reasons
      #   Reason for the evaluation status.
      #
      #   @return [Array<Symbol, Lithic::Models::AccountHolderCreateResponse::StatusReason>]
      required :status_reasons,
               -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::AccountHolderCreateResponse::StatusReason] }

      # @!attribute created
      #   Timestamp of when the account holder was created.
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!attribute external_id
      #   Customer-provided token that indicates a relationship with an object outside of
      #   the Lithic ecosystem.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute required_documents
      #   Only present for "KYB_BASIC" workflow. A list of documents required for the
      #   account holder to be approved.
      #
      #   @return [Array<Lithic::Models::RequiredDocument>, nil]
      optional :required_documents, -> { Lithic::Internal::Type::ArrayOf[Lithic::RequiredDocument] }

      # @!method initialize(token:, account_token:, status:, status_reasons:, created: nil, external_id: nil, required_documents: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::AccountHolderCreateResponse} for more details.
      #
      #   @param token [String] Globally unique identifier for the account holder.
      #
      #   @param account_token [String] Globally unique identifier for the account.
      #
      #   @param status [Symbol, Lithic::Models::AccountHolderCreateResponse::Status] KYC and KYB evaluation states.
      #
      #   @param status_reasons [Array<Symbol, Lithic::Models::AccountHolderCreateResponse::StatusReason>] Reason for the evaluation status.
      #
      #   @param created [Time] Timestamp of when the account holder was created.
      #
      #   @param external_id [String] Customer-provided token that indicates a relationship with an object outside of
      #
      #   @param required_documents [Array<Lithic::Models::RequiredDocument>] Only present for "KYB_BASIC" workflow. A list of documents required for the acco

      # KYC and KYB evaluation states.
      #
      # Note:
      #
      # - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      #
      # @see Lithic::Models::AccountHolderCreateResponse#status
      module Status
        extend Lithic::Internal::Type::Enum

        ACCEPTED = :ACCEPTED
        PENDING_REVIEW = :PENDING_REVIEW
        PENDING_DOCUMENT = :PENDING_DOCUMENT
        PENDING_RESUBMIT = :PENDING_RESUBMIT
        REJECTED = :REJECTED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status Reasons for KYC/KYB enrollment states
      module StatusReason
        extend Lithic::Internal::Type::Enum

        ADDRESS_VERIFICATION_FAILURE = :ADDRESS_VERIFICATION_FAILURE
        AGE_THRESHOLD_FAILURE = :AGE_THRESHOLD_FAILURE
        COMPLETE_VERIFICATION_FAILURE = :COMPLETE_VERIFICATION_FAILURE
        DOB_VERIFICATION_FAILURE = :DOB_VERIFICATION_FAILURE
        ID_VERIFICATION_FAILURE = :ID_VERIFICATION_FAILURE
        MAX_DOCUMENT_ATTEMPTS = :MAX_DOCUMENT_ATTEMPTS
        MAX_RESUBMISSION_ATTEMPTS = :MAX_RESUBMISSION_ATTEMPTS
        NAME_VERIFICATION_FAILURE = :NAME_VERIFICATION_FAILURE
        OTHER_VERIFICATION_FAILURE = :OTHER_VERIFICATION_FAILURE
        RISK_THRESHOLD_FAILURE = :RISK_THRESHOLD_FAILURE
        WATCHLIST_ALERT_FAILURE = :WATCHLIST_ALERT_FAILURE
        PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE = :PRIMARY_BUSINESS_ENTITY_ID_VERIFICATION_FAILURE
        PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE =
          :PRIMARY_BUSINESS_ENTITY_ADDRESS_VERIFICATION_FAILURE
        PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE = :PRIMARY_BUSINESS_ENTITY_NAME_VERIFICATION_FAILURE
        PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED =
          :PRIMARY_BUSINESS_ENTITY_BUSINESS_OFFICERS_NOT_MATCHED
        PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE = :PRIMARY_BUSINESS_ENTITY_SOS_FILING_INACTIVE
        PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED = :PRIMARY_BUSINESS_ENTITY_SOS_NOT_MATCHED
        PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE = :PRIMARY_BUSINESS_ENTITY_CMRA_FAILURE
        PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE = :PRIMARY_BUSINESS_ENTITY_WATCHLIST_FAILURE
        PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE = :PRIMARY_BUSINESS_ENTITY_REGISTERED_AGENT_FAILURE
        CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE = :CONTROL_PERSON_BLOCKLIST_ALERT_FAILURE
        CONTROL_PERSON_ID_VERIFICATION_FAILURE = :CONTROL_PERSON_ID_VERIFICATION_FAILURE
        CONTROL_PERSON_DOB_VERIFICATION_FAILURE = :CONTROL_PERSON_DOB_VERIFICATION_FAILURE
        CONTROL_PERSON_NAME_VERIFICATION_FAILURE = :CONTROL_PERSON_NAME_VERIFICATION_FAILURE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
