# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#simulate_enrollment_review
    class AccountHolderSimulateEnrollmentReviewParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_holder_token
      #   The account holder which to perform the simulation upon.
      #
      #   @return [String, nil]
      optional :account_holder_token, String

      # @!attribute status
      #   An account holder's status for use within the simulation.
      #
      #   @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::Status, nil]
      optional :status, enum: -> { Lithic::AccountHolderSimulateEnrollmentReviewParams::Status }

      # @!attribute status_reasons
      #   Status reason that will be associated with the simulated account holder status.
      #   Only required for a `REJECTED` status.
      #
      #   @return [Array<Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::StatusReason>, nil]
      optional :status_reasons,
               -> {
                 Lithic::Internal::Type::ArrayOf[enum: Lithic::AccountHolderSimulateEnrollmentReviewParams::StatusReason]
               }

      # @!method initialize(account_holder_token: nil, status: nil, status_reasons: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::AccountHolderSimulateEnrollmentReviewParams} for more details.
      #
      #   @param account_holder_token [String] The account holder which to perform the simulation upon.
      #
      #   @param status [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::Status] An account holder's status for use within the simulation.
      #
      #   @param status_reasons [Array<Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::StatusReason>] Status reason that will be associated with the simulated account holder status.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # An account holder's status for use within the simulation.
      module Status
        extend Lithic::Internal::Type::Enum

        ACCEPTED = :ACCEPTED
        REJECTED = :REJECTED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module StatusReason
        extend Lithic::Internal::Type::Enum

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
        BENEFICIAL_OWNER_INDIVIDUAL_DOB_VERIFICATION_FAILURE =
          :BENEFICIAL_OWNER_INDIVIDUAL_DOB_VERIFICATION_FAILURE
        BENEFICIAL_OWNER_INDIVIDUAL_BLOCKLIST_ALERT_FAILURE =
          :BENEFICIAL_OWNER_INDIVIDUAL_BLOCKLIST_ALERT_FAILURE
        BENEFICIAL_OWNER_INDIVIDUAL_ID_VERIFICATION_FAILURE =
          :BENEFICIAL_OWNER_INDIVIDUAL_ID_VERIFICATION_FAILURE
        BENEFICIAL_OWNER_INDIVIDUAL_NAME_VERIFICATION_FAILURE =
          :BENEFICIAL_OWNER_INDIVIDUAL_NAME_VERIFICATION_FAILURE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
