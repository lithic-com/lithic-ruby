# typed: strong

module Lithic
  module Models
    class ClaimDocumentUploadedWebhookEvent < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::ClaimDocumentUploadedWebhookEvent,
            Lithic::Internal::AnyHash
          )
        end

      # Unique identifier for the document, in UUID format
      sig { returns(String) }
      attr_accessor :token

      # When the document was created
      sig { returns(Time) }
      attr_accessor :created

      # Presigned URL for downloading the uploaded document. Available once the document
      # is being validated or has been accepted (`VALIDATING` or `ACCEPTED`)
      sig { returns(T.nilable(String)) }
      attr_accessor :download_url

      # When the download URL expires
      sig { returns(T.nilable(Time)) }
      attr_accessor :download_url_expires_at

      # The type of event that occurred.
      sig { returns(Symbol) }
      attr_accessor :event_type

      # Reason the document failed validation. Null unless `status` is `REJECTED`
      sig do
        returns(
          T.nilable(
            Lithic::ClaimDocumentUploadedWebhookEvent::FailureReason::TaggedSymbol
          )
        )
      end
      attr_accessor :failure_reason

      # Name provided when the upload intent was created
      sig { returns(String) }
      attr_accessor :name

      # Identifier of the document requirement this document satisfies. Null for
      # supplemental documents not tied to a specific requirement
      sig { returns(T.nilable(String)) }
      attr_accessor :requirement_id

      # Current validation status of the document
      sig do
        returns(Lithic::ClaimDocumentUploadedWebhookEvent::Status::TaggedSymbol)
      end
      attr_accessor :status

      # When the document was last updated
      sig { returns(Time) }
      attr_accessor :updated

      # Constraints that an uploaded file must satisfy.
      sig do
        returns(
          T.nilable(
            Lithic::ClaimDocumentUploadedWebhookEvent::UploadConstraints
          )
        )
      end
      attr_reader :upload_constraints

      sig do
        params(
          upload_constraints:
            T.nilable(
              Lithic::ClaimDocumentUploadedWebhookEvent::UploadConstraints::OrHash
            )
        ).void
      end
      attr_writer :upload_constraints

      # Presigned URL for uploading the file via HTTP PUT. Null after the upload window
      # expires or after the document has been validated
      sig { returns(T.nilable(String)) }
      attr_accessor :upload_url

      # When the upload URL expires
      sig { returns(T.nilable(Time)) }
      attr_accessor :upload_url_expires_at

      sig do
        params(
          token: String,
          created: Time,
          download_url: T.nilable(String),
          download_url_expires_at: T.nilable(Time),
          failure_reason:
            T.nilable(
              Lithic::ClaimDocumentUploadedWebhookEvent::FailureReason::OrSymbol
            ),
          name: String,
          requirement_id: T.nilable(String),
          status: Lithic::ClaimDocumentUploadedWebhookEvent::Status::OrSymbol,
          updated: Time,
          upload_constraints:
            T.nilable(
              Lithic::ClaimDocumentUploadedWebhookEvent::UploadConstraints::OrHash
            ),
          upload_url: T.nilable(String),
          upload_url_expires_at: T.nilable(Time),
          event_type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the document, in UUID format
        token:,
        # When the document was created
        created:,
        # Presigned URL for downloading the uploaded document. Available once the document
        # is being validated or has been accepted (`VALIDATING` or `ACCEPTED`)
        download_url:,
        # When the download URL expires
        download_url_expires_at:,
        # Reason the document failed validation. Null unless `status` is `REJECTED`
        failure_reason:,
        # Name provided when the upload intent was created
        name:,
        # Identifier of the document requirement this document satisfies. Null for
        # supplemental documents not tied to a specific requirement
        requirement_id:,
        # Current validation status of the document
        status:,
        # When the document was last updated
        updated:,
        # Constraints that an uploaded file must satisfy.
        upload_constraints:,
        # Presigned URL for uploading the file via HTTP PUT. Null after the upload window
        # expires or after the document has been validated
        upload_url:,
        # When the upload URL expires
        upload_url_expires_at:,
        # The type of event that occurred.
        event_type: :"claim_document.uploaded"
      )
      end

      sig do
        override.returns(
          {
            token: String,
            created: Time,
            download_url: T.nilable(String),
            download_url_expires_at: T.nilable(Time),
            event_type: Symbol,
            failure_reason:
              T.nilable(
                Lithic::ClaimDocumentUploadedWebhookEvent::FailureReason::TaggedSymbol
              ),
            name: String,
            requirement_id: T.nilable(String),
            status:
              Lithic::ClaimDocumentUploadedWebhookEvent::Status::TaggedSymbol,
            updated: Time,
            upload_constraints:
              T.nilable(
                Lithic::ClaimDocumentUploadedWebhookEvent::UploadConstraints
              ),
            upload_url: T.nilable(String),
            upload_url_expires_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      # Reason the document failed validation. Null unless `status` is `REJECTED`
      module FailureReason
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Lithic::ClaimDocumentUploadedWebhookEvent::FailureReason
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVALID_MIME_TYPE =
          T.let(
            :INVALID_MIME_TYPE,
            Lithic::ClaimDocumentUploadedWebhookEvent::FailureReason::TaggedSymbol
          )
        FILE_TOO_LARGE =
          T.let(
            :FILE_TOO_LARGE,
            Lithic::ClaimDocumentUploadedWebhookEvent::FailureReason::TaggedSymbol
          )
        FILE_EMPTY =
          T.let(
            :FILE_EMPTY,
            Lithic::ClaimDocumentUploadedWebhookEvent::FailureReason::TaggedSymbol
          )
        CORRUPT_FILE =
          T.let(
            :CORRUPT_FILE,
            Lithic::ClaimDocumentUploadedWebhookEvent::FailureReason::TaggedSymbol
          )
        OTHER =
          T.let(
            :OTHER,
            Lithic::ClaimDocumentUploadedWebhookEvent::FailureReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ClaimDocumentUploadedWebhookEvent::FailureReason::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Current validation status of the document
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ClaimDocumentUploadedWebhookEvent::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :PENDING,
            Lithic::ClaimDocumentUploadedWebhookEvent::Status::TaggedSymbol
          )
        VALIDATING =
          T.let(
            :VALIDATING,
            Lithic::ClaimDocumentUploadedWebhookEvent::Status::TaggedSymbol
          )
        ACCEPTED =
          T.let(
            :ACCEPTED,
            Lithic::ClaimDocumentUploadedWebhookEvent::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :REJECTED,
            Lithic::ClaimDocumentUploadedWebhookEvent::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ClaimDocumentUploadedWebhookEvent::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class UploadConstraints < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::ClaimDocumentUploadedWebhookEvent::UploadConstraints,
              Lithic::Internal::AnyHash
            )
          end

        # MIME types accepted for upload
        sig { returns(T::Array[String]) }
        attr_accessor :accepted_mime_types

        # Maximum file size in bytes. Null if there is no enforced size limit
        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_size_bytes

        # Constraints that an uploaded file must satisfy.
        sig do
          params(
            accepted_mime_types: T::Array[String],
            max_size_bytes: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # MIME types accepted for upload
          accepted_mime_types:,
          # Maximum file size in bytes. Null if there is no enforced size limit
          max_size_bytes:
        )
        end

        sig do
          override.returns(
            {
              accepted_mime_types: T::Array[String],
              max_size_bytes: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
