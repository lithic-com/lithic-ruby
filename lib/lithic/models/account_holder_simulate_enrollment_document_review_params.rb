# frozen_string_literal: true

module Lithic
  module Models
    class AccountHolderSimulateEnrollmentDocumentReviewParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute document_upload_token
      #   The account holder document upload which to perform the simulation upon.
      #
      #   @return [String]
      required :document_upload_token, String

      # @!attribute status
      #   An account holder document's upload status for use within the simulation.
      #
      #   @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status]
      required :status, enum: -> { Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status }

      # @!attribute [r] accepted_entity_status_reasons
      #   A list of status reasons associated with a KYB account holder in PENDING_REVIEW
      #
      #   @return [Array<String>, nil]
      optional :accepted_entity_status_reasons, Lithic::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :accepted_entity_status_reasons

      # @!attribute [r] status_reason
      #   Status reason that will be associated with the simulated account holder status.
      #     Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
      #
      #   @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason, nil]
      optional :status_reason,
               enum: -> { Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason }

      # @!parse
      #   # @return [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason]
      #   attr_writer :status_reason

      # @!parse
      #   # @param document_upload_token [String]
      #   # @param status [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status]
      #   # @param accepted_entity_status_reasons [Array<String>]
      #   # @param status_reason [Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     document_upload_token:,
      #     status:,
      #     accepted_entity_status_reasons: nil,
      #     status_reason: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # An account holder document's upload status for use within the simulation.
      module Status
        extend Lithic::Enum

        UPLOADED = :UPLOADED
        ACCEPTED = :ACCEPTED
        REJECTED = :REJECTED
        PARTIAL_APPROVAL = :PARTIAL_APPROVAL

        finalize!
      end

      # Status reason that will be associated with the simulated account holder status.
      #   Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
      module StatusReason
        extend Lithic::Enum

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

        finalize!
      end
    end
  end
end
