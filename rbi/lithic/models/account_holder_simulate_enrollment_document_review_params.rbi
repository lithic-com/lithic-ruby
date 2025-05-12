# typed: strong

module Lithic
  module Models
    class AccountHolderSimulateEnrollmentDocumentReviewParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams,
            Lithic::Internal::AnyHash
          )
        end

      # The account holder document upload which to perform the simulation upon.
      sig { returns(String) }
      attr_accessor :document_upload_token

      # An account holder document's upload status for use within the simulation.
      sig do
        returns(
          Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::OrSymbol
        )
      end
      attr_accessor :status

      # A list of status reasons associated with a KYB account holder in PENDING_REVIEW
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :accepted_entity_status_reasons

      sig { params(accepted_entity_status_reasons: T::Array[String]).void }
      attr_writer :accepted_entity_status_reasons

      # Status reason that will be associated with the simulated account holder status.
      # Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
      sig do
        returns(
          T.nilable(
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::OrSymbol
          )
        )
      end
      attr_reader :status_reason

      sig do
        params(
          status_reason:
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::OrSymbol
        ).void
      end
      attr_writer :status_reason

      sig do
        params(
          document_upload_token: String,
          status:
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::OrSymbol,
          accepted_entity_status_reasons: T::Array[String],
          status_reason:
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The account holder document upload which to perform the simulation upon.
        document_upload_token:,
        # An account holder document's upload status for use within the simulation.
        status:,
        # A list of status reasons associated with a KYB account holder in PENDING_REVIEW
        accepted_entity_status_reasons: nil,
        # Status reason that will be associated with the simulated account holder status.
        # Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
        status_reason: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            document_upload_token: String,
            status:
              Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::OrSymbol,
            accepted_entity_status_reasons: T::Array[String],
            status_reason:
              Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # An account holder document's upload status for use within the simulation.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UPLOADED =
          T.let(
            :UPLOADED,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::TaggedSymbol
          )
        ACCEPTED =
          T.let(
            :ACCEPTED,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :REJECTED,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::TaggedSymbol
          )
        PARTIAL_APPROVAL =
          T.let(
            :PARTIAL_APPROVAL,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Status reason that will be associated with the simulated account holder status.
      # Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
      module StatusReason
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DOCUMENT_MISSING_REQUIRED_DATA =
          T.let(
            :DOCUMENT_MISSING_REQUIRED_DATA,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        DOCUMENT_UPLOAD_TOO_BLURRY =
          T.let(
            :DOCUMENT_UPLOAD_TOO_BLURRY,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        FILE_SIZE_TOO_LARGE =
          T.let(
            :FILE_SIZE_TOO_LARGE,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        INVALID_DOCUMENT_TYPE =
          T.let(
            :INVALID_DOCUMENT_TYPE,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        INVALID_DOCUMENT_UPLOAD =
          T.let(
            :INVALID_DOCUMENT_UPLOAD,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        INVALID_ENTITY =
          T.let(
            :INVALID_ENTITY,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        DOCUMENT_EXPIRED =
          T.let(
            :DOCUMENT_EXPIRED,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        DOCUMENT_ISSUED_GREATER_THAN_30_DAYS =
          T.let(
            :DOCUMENT_ISSUED_GREATER_THAN_30_DAYS,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        DOCUMENT_TYPE_NOT_SUPPORTED =
          T.let(
            :DOCUMENT_TYPE_NOT_SUPPORTED,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        UNKNOWN_FAILURE_REASON =
          T.let(
            :UNKNOWN_FAILURE_REASON,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        UNKNOWN_ERROR =
          T.let(
            :UNKNOWN_ERROR,
            Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
