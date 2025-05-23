# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#simulate_enrollment_document_review
    class AccountHolderSimulateEnrollmentDocumentReviewParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute document_upload_token
      #   The account holder document upload which to perform the simulation upon.
      #
      #   @return [String]
      required :document_upload_token, String

      # @!attribute status
      #   An account holder document's upload status for use within the simulation.
      #
      #   @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status]
      required :status, enum: -> { Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::Status }

      # @!attribute accepted_entity_status_reasons
      #   A list of status reasons associated with a KYB account holder in PENDING_REVIEW
      #
      #   @return [Array<String>, nil]
      optional :accepted_entity_status_reasons, Lithic::Internal::Type::ArrayOf[String]

      # @!attribute status_reason
      #   Status reason that will be associated with the simulated account holder status.
      #   Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
      #
      #   @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason, nil]
      optional :status_reason,
               enum: -> { Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason }

      # @!method initialize(document_upload_token:, status:, accepted_entity_status_reasons: nil, status_reason: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams} for more
      #   details.
      #
      #   @param document_upload_token [String] The account holder document upload which to perform the simulation upon.
      #
      #   @param status [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status] An account holder document's upload status for use within the simulation.
      #
      #   @param accepted_entity_status_reasons [Array<String>] A list of status reasons associated with a KYB account holder in PENDING_REVIEW
      #
      #   @param status_reason [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason] Status reason that will be associated with the simulated account holder status.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # An account holder document's upload status for use within the simulation.
      module Status
        extend Lithic::Internal::Type::Enum

        UPLOADED = :UPLOADED
        ACCEPTED = :ACCEPTED
        REJECTED = :REJECTED
        PARTIAL_APPROVAL = :PARTIAL_APPROVAL

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status reason that will be associated with the simulated account holder status.
      # Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
      module StatusReason
        extend Lithic::Internal::Type::Enum

        DOCUMENT_MISSING_REQUIRED_DATA = :DOCUMENT_MISSING_REQUIRED_DATA
        DOCUMENT_UPLOAD_TOO_BLURRY = :DOCUMENT_UPLOAD_TOO_BLURRY
        FILE_SIZE_TOO_LARGE = :FILE_SIZE_TOO_LARGE
        INVALID_DOCUMENT_TYPE = :INVALID_DOCUMENT_TYPE
        INVALID_DOCUMENT_UPLOAD = :INVALID_DOCUMENT_UPLOAD
        INVALID_ENTITY = :INVALID_ENTITY
        DOCUMENT_EXPIRED = :DOCUMENT_EXPIRED
        DOCUMENT_ISSUED_GREATER_THAN_30_DAYS = :DOCUMENT_ISSUED_GREATER_THAN_30_DAYS
        DOCUMENT_TYPE_NOT_SUPPORTED = :DOCUMENT_TYPE_NOT_SUPPORTED
        UNKNOWN_FAILURE_REASON = :UNKNOWN_FAILURE_REASON
        UNKNOWN_ERROR = :UNKNOWN_ERROR

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
