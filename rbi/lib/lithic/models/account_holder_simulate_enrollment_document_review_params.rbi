# typed: strong

module Lithic
  module Models
    class AccountHolderSimulateEnrollmentDocumentReviewParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The account holder document upload which to perform the simulation upon.
      sig { returns(String) }
      attr_accessor :document_upload_token

      # An account holder document's upload status for use within the simulation.
      sig { returns(Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::OrSymbol) }
      attr_accessor :status

      # A list of status reasons associated with a KYB account holder in PENDING_REVIEW
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :accepted_entity_status_reasons

      sig { params(accepted_entity_status_reasons: T::Array[String]).void }
      attr_writer :accepted_entity_status_reasons

      # Status reason that will be associated with the simulated account holder status.
      #   Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
      sig do
        returns(
          T.nilable(Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::OrSymbol)
        )
      end
      attr_reader :status_reason

      sig do
        params(
          status_reason: Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::OrSymbol
        )
          .void
      end
      attr_writer :status_reason

      sig do
        params(
          document_upload_token: String,
          status: Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::OrSymbol,
          accepted_entity_status_reasons: T::Array[String],
          status_reason: Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
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
              status: Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::OrSymbol,
              accepted_entity_status_reasons: T::Array[String],
              status_reason: Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::OrSymbol,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # An account holder document's upload status for use within the simulation.
      module Status
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::TaggedSymbol) }

        UPLOADED =
          T.let(
            :UPLOADED,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::TaggedSymbol
          )
        ACCEPTED =
          T.let(
            :ACCEPTED,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :REJECTED,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::TaggedSymbol
          )
        PARTIAL_APPROVAL =
          T.let(
            :PARTIAL_APPROVAL,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::TaggedSymbol
          )

        class << self
          sig do
            override
              .returns(
                T::Array[Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::Status::TaggedSymbol]
              )
          end
          def values
          end
        end
      end

      # Status reason that will be associated with the simulated account holder status.
      #   Only required for a `REJECTED` status or `PARTIAL_APPROVAL` status.
      module StatusReason
        extend Lithic::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason) }
        OrSymbol =
          T.type_alias do
            T.any(
              Symbol,
              Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
            )
          end

        DOCUMENT_MISSING_REQUIRED_DATA =
          T.let(
            :DOCUMENT_MISSING_REQUIRED_DATA,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        DOCUMENT_UPLOAD_TOO_BLURRY =
          T.let(
            :DOCUMENT_UPLOAD_TOO_BLURRY,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        FILE_SIZE_TOO_LARGE =
          T.let(
            :FILE_SIZE_TOO_LARGE,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        INVALID_DOCUMENT_TYPE =
          T.let(
            :INVALID_DOCUMENT_TYPE,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        INVALID_DOCUMENT_UPLOAD =
          T.let(
            :INVALID_DOCUMENT_UPLOAD,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        INVALID_ENTITY =
          T.let(
            :INVALID_ENTITY,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        DOCUMENT_EXPIRED =
          T.let(
            :DOCUMENT_EXPIRED,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        DOCUMENT_ISSUED_GREATER_THAN_30_DAYS =
          T.let(
            :DOCUMENT_ISSUED_GREATER_THAN_30_DAYS,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        DOCUMENT_TYPE_NOT_SUPPORTED =
          T.let(
            :DOCUMENT_TYPE_NOT_SUPPORTED,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        UNKNOWN_FAILURE_REASON =
          T.let(
            :UNKNOWN_FAILURE_REASON,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )
        UNKNOWN_ERROR =
          T.let(
            :UNKNOWN_ERROR,
            Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol
          )

        class << self
          sig do
            override
              .returns(
                T::Array[Lithic::Models::AccountHolderSimulateEnrollmentDocumentReviewParams::StatusReason::TaggedSymbol]
              )
          end
          def values
          end
        end
      end
    end
  end
end
