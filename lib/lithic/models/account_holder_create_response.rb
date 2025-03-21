# frozen_string_literal: true

module Lithic
  module Models
    class AccountHolderCreateResponse < Lithic::BaseModel
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
      #     Note:
      #
      #     - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      #
      #   @return [Symbol, Lithic::Models::AccountHolderCreateResponse::Status]
      required :status, enum: -> { Lithic::Models::AccountHolderCreateResponse::Status }

      # @!attribute status_reasons
      #   Reason for the evaluation status.
      #
      #   @return [Array<Symbol, Lithic::Models::AccountHolderCreateResponse::StatusReason>]
      required :status_reasons,
               -> { Lithic::ArrayOf[enum: Lithic::Models::AccountHolderCreateResponse::StatusReason] }

      # @!attribute [r] created
      #   Timestamp of when the account holder was created.
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :created

      # @!attribute [r] external_id
      #   Customer-provided token that indicates a relationship with an object outside of
      #     the Lithic ecosystem.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_id

      # @!attribute [r] required_documents
      #   Only present for "KYB_BASIC" workflow. A list of documents required for the
      #     account holder to be approved.
      #
      #   @return [Array<Lithic::Models::RequiredDocument>, nil]
      optional :required_documents, -> { Lithic::ArrayOf[Lithic::Models::RequiredDocument] }

      # @!parse
      #   # @return [Array<Lithic::Models::RequiredDocument>]
      #   attr_writer :required_documents

      # @!parse
      #   # @param token [String]
      #   # @param account_token [String]
      #   # @param status [Symbol, Lithic::Models::AccountHolderCreateResponse::Status]
      #   # @param status_reasons [Array<Symbol, Lithic::Models::AccountHolderCreateResponse::StatusReason>]
      #   # @param created [Time]
      #   # @param external_id [String]
      #   # @param required_documents [Array<Lithic::Models::RequiredDocument>]
      #   #
      #   def initialize(
      #     token:,
      #     account_token:,
      #     status:,
      #     status_reasons:,
      #     created: nil,
      #     external_id: nil,
      #     required_documents: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # KYC and KYB evaluation states.
      #
      #   Note:
      #
      #   - `PENDING_REVIEW` is only applicable for the `KYB_BASIC` workflow.
      module Status
        extend Lithic::Enum

        ACCEPTED = :ACCEPTED
        PENDING_REVIEW = :PENDING_REVIEW
        PENDING_DOCUMENT = :PENDING_DOCUMENT
        PENDING_RESUBMIT = :PENDING_RESUBMIT
        REJECTED = :REJECTED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # Status Reasons for KYC/KYB enrollment states
      module StatusReason
        extend Lithic::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
