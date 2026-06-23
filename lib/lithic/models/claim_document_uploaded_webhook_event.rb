# frozen_string_literal: true

module Lithic
  module Models
    class ClaimDocumentUploadedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Unique identifier for the document, in UUID format
      #
      #   @return [String]
      required :token, String

      # @!attribute created
      #   When the document was created
      #
      #   @return [Time]
      required :created, Time

      # @!attribute download_url
      #   Presigned URL for downloading the uploaded document. Available once the document
      #   is being validated or has been accepted (`VALIDATING` or `ACCEPTED`)
      #
      #   @return [String, nil]
      required :download_url, String, nil?: true

      # @!attribute download_url_expires_at
      #   When the download URL expires
      #
      #   @return [Time, nil]
      required :download_url_expires_at, Time, nil?: true

      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"claim_document.uploaded"]
      required :event_type, const: :"claim_document.uploaded"

      # @!attribute failure_reason
      #   Reason the document failed validation. Null unless `status` is `REJECTED`
      #
      #   @return [Symbol, Lithic::Models::ClaimDocumentUploadedWebhookEvent::FailureReason, nil]
      required :failure_reason,
               enum: -> { Lithic::ClaimDocumentUploadedWebhookEvent::FailureReason },
               nil?: true

      # @!attribute name
      #   Name provided when the upload intent was created
      #
      #   @return [String]
      required :name, String

      # @!attribute requirement_id
      #   Identifier of the document requirement this document satisfies. Null for
      #   supplemental documents not tied to a specific requirement
      #
      #   @return [String, nil]
      required :requirement_id, String, nil?: true

      # @!attribute status
      #   Current validation status of the document
      #
      #   @return [Symbol, Lithic::Models::ClaimDocumentUploadedWebhookEvent::Status]
      required :status, enum: -> { Lithic::ClaimDocumentUploadedWebhookEvent::Status }

      # @!attribute updated
      #   When the document was last updated
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute upload_constraints
      #   Constraints that an uploaded file must satisfy.
      #
      #   @return [Lithic::Models::ClaimDocumentUploadedWebhookEvent::UploadConstraints, nil]
      required :upload_constraints,
               -> { Lithic::ClaimDocumentUploadedWebhookEvent::UploadConstraints },
               nil?: true

      # @!attribute upload_url
      #   Presigned URL for uploading the file via HTTP PUT. Null after the upload window
      #   expires or after the document has been validated
      #
      #   @return [String, nil]
      required :upload_url, String, nil?: true

      # @!attribute upload_url_expires_at
      #   When the upload URL expires
      #
      #   @return [Time, nil]
      required :upload_url_expires_at, Time, nil?: true

      # @!method initialize(token:, created:, download_url:, download_url_expires_at:, failure_reason:, name:, requirement_id:, status:, updated:, upload_constraints:, upload_url:, upload_url_expires_at:, event_type: :"claim_document.uploaded")
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::ClaimDocumentUploadedWebhookEvent} for more details.
      #
      #   @param token [String] Unique identifier for the document, in UUID format
      #
      #   @param created [Time] When the document was created
      #
      #   @param download_url [String, nil] Presigned URL for downloading the uploaded document. Available once the document
      #
      #   @param download_url_expires_at [Time, nil] When the download URL expires
      #
      #   @param failure_reason [Symbol, Lithic::Models::ClaimDocumentUploadedWebhookEvent::FailureReason, nil] Reason the document failed validation. Null unless `status` is `REJECTED`
      #
      #   @param name [String] Name provided when the upload intent was created
      #
      #   @param requirement_id [String, nil] Identifier of the document requirement this document satisfies. Null for supplem
      #
      #   @param status [Symbol, Lithic::Models::ClaimDocumentUploadedWebhookEvent::Status] Current validation status of the document
      #
      #   @param updated [Time] When the document was last updated
      #
      #   @param upload_constraints [Lithic::Models::ClaimDocumentUploadedWebhookEvent::UploadConstraints, nil] Constraints that an uploaded file must satisfy.
      #
      #   @param upload_url [String, nil] Presigned URL for uploading the file via HTTP PUT. Null after the upload window
      #
      #   @param upload_url_expires_at [Time, nil] When the upload URL expires
      #
      #   @param event_type [Symbol, :"claim_document.uploaded"] The type of event that occurred.

      # Reason the document failed validation. Null unless `status` is `REJECTED`
      #
      # @see Lithic::Models::ClaimDocumentUploadedWebhookEvent#failure_reason
      module FailureReason
        extend Lithic::Internal::Type::Enum

        INVALID_MIME_TYPE = :INVALID_MIME_TYPE
        FILE_TOO_LARGE = :FILE_TOO_LARGE
        FILE_EMPTY = :FILE_EMPTY
        CORRUPT_FILE = :CORRUPT_FILE
        OTHER = :OTHER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Current validation status of the document
      #
      # @see Lithic::Models::ClaimDocumentUploadedWebhookEvent#status
      module Status
        extend Lithic::Internal::Type::Enum

        PENDING = :PENDING
        VALIDATING = :VALIDATING
        ACCEPTED = :ACCEPTED
        REJECTED = :REJECTED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::ClaimDocumentUploadedWebhookEvent#upload_constraints
      class UploadConstraints < Lithic::Internal::Type::BaseModel
        # @!attribute accepted_mime_types
        #   MIME types accepted for upload
        #
        #   @return [Array<String>]
        required :accepted_mime_types, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute max_size_bytes
        #   Maximum file size in bytes. Null if there is no enforced size limit
        #
        #   @return [Integer, nil]
        required :max_size_bytes, Integer, nil?: true

        # @!method initialize(accepted_mime_types:, max_size_bytes:)
        #   Constraints that an uploaded file must satisfy.
        #
        #   @param accepted_mime_types [Array<String>] MIME types accepted for upload
        #
        #   @param max_size_bytes [Integer, nil] Maximum file size in bytes. Null if there is no enforced size limit
      end
    end
  end
end
