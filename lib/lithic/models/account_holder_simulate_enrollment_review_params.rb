# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#simulate_enrollment_review
    class AccountHolderSimulateEnrollmentReviewParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] account_holder_token
      #   The account holder which to perform the simulation upon.
      #
      #   @return [String, nil]
      optional :account_holder_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_holder_token

      # @!attribute [r] status
      #   An account holder's status for use within the simulation.
      #
      #   @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::Status, nil]
      optional :status, enum: -> { Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::Status }

      # @!parse
      #   # @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::Status]
      #   attr_writer :status

      # @!attribute [r] status_reasons
      #   Status reason that will be associated with the simulated account holder status.
      #     Only required for a `REJECTED` status.
      #
      #   @return [Array<Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::StatusReason>, nil]
      optional :status_reasons,
               -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::StatusReason] }

      # @!parse
      #   # @return [Array<Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::StatusReason>]
      #   attr_writer :status_reasons

      # @!parse
      #   # @param account_holder_token [String]
      #   # @param status [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::Status]
      #   # @param status_reasons [Array<Symbol, Lithic::Models::AccountHolderSimulateEnrollmentReviewParams::StatusReason>]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(account_holder_token: nil, status: nil, status_reasons: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

      # An account holder's status for use within the simulation.
      module Status
        extend Lithic::Internal::Type::Enum

        ACCEPTED = :ACCEPTED
        REJECTED = :REJECTED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
