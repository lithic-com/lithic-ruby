# frozen_string_literal: true

module Lithic
  module Models
    module AccountHolders
      # @see Lithic::Resources::AccountHolders::Entities#create
      class EntityCreateResponse < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the entity
        #
        #   @return [String]
        required :token, String

        # @!attribute account_holder_token
        #   Globally unique identifier for the account holder
        #
        #   @return [String]
        required :account_holder_token, String

        # @!attribute created
        #   Timestamp of when the entity was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute required_documents
        #   A list of documents required for the entity to be approved
        #
        #   @return [Array<Lithic::Models::RequiredDocument>]
        required :required_documents, -> { Lithic::Internal::Type::ArrayOf[Lithic::RequiredDocument] }

        # @!attribute status
        #   Entity verification status
        #
        #   @return [Symbol, Lithic::Models::AccountHolders::EntityCreateResponse::Status]
        required :status, enum: -> { Lithic::Models::AccountHolders::EntityCreateResponse::Status }

        # @!attribute status_reasons
        #   Reason for the evaluation status
        #
        #   @return [Array<Symbol, Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason>]
        required :status_reasons,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason] }

        # @!method initialize(token:, account_holder_token:, created:, required_documents:, status:, status_reasons:)
        #   Response body for creating a new beneficial owner or replacing the control
        #   person entity on an existing KYB account holder.
        #
        #   @param token [String] Globally unique identifier for the entity
        #
        #   @param account_holder_token [String] Globally unique identifier for the account holder
        #
        #   @param created [Time] Timestamp of when the entity was created
        #
        #   @param required_documents [Array<Lithic::Models::RequiredDocument>] A list of documents required for the entity to be approved
        #
        #   @param status [Symbol, Lithic::Models::AccountHolders::EntityCreateResponse::Status] Entity verification status
        #
        #   @param status_reasons [Array<Symbol, Lithic::Models::AccountHolders::EntityCreateResponse::StatusReason>] Reason for the evaluation status

        # Entity verification status
        #
        # @see Lithic::Models::AccountHolders::EntityCreateResponse#status
        module Status
          extend Lithic::Internal::Type::Enum

          ACCEPTED = :ACCEPTED
          INACTIVE = :INACTIVE
          PENDING_REVIEW = :PENDING_REVIEW
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
end
