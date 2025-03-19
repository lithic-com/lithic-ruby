# typed: strong

module Lithic
  module Models
    class AccountHolderSimulateEnrollmentDocumentReviewParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The account holder document upload which to perform the simulation upon.
      sig { returns(String) }
      def document_upload_token
      end

      sig { params(_: String).returns(String) }
      def document_upload_token=(_)
      end

      # An account holder document's upload status for use within the simulation.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # A list of status reasons associated with a KYB account holder in PENDING_REVIEW
      sig { returns(T.nilable(T::Array[String])) }
      def accepted_entity_status_reasons
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def accepted_entity_status_reasons=(_)
      end

      # Status reason that will be associated with the simulated account holder status.
      #   Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
      sig { returns(T.nilable(Symbol)) }
      def status_reason
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status_reason=(_)
      end

      sig do
        params(
          document_upload_token: String,
          status: Symbol,
          accepted_entity_status_reasons: T::Array[String],
          status_reason: Symbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        document_upload_token:,
        status:,
        accepted_entity_status_reasons: nil,
        status_reason: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              document_upload_token: String,
              status: Symbol,
              accepted_entity_status_reasons: T::Array[String],
              status_reason: Symbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # An account holder document's upload status for use within the simulation.
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        UPLOADED = :UPLOADED
        ACCEPTED = :ACCEPTED
        REJECTED = :REJECTED
        PARTIAL_APPROVAL = :PARTIAL_APPROVAL
      end

      # Status reason that will be associated with the simulated account holder status.
      #   Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
      class StatusReason < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end
    end
  end
end
