# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      module Cases
        # @see Lithic::Resources::TransactionMonitoring::Cases::Files#create
        class CaseFile < Lithic::Internal::Type::BaseModel
          # @!attribute token
          #   Globally unique identifier for the file
          #
          #   @return [String]
          required :token, String

          # @!attribute created
          #   Date and time at which the file record was created
          #
          #   @return [Time]
          required :created, Time

          # @!attribute download_url
          #   Presigned URL the client uses to download the file
          #
          #   @return [String, nil]
          required :download_url, String, nil?: true

          # @!attribute download_url_expires
          #   Date and time at which the download URL expires
          #
          #   @return [Time, nil]
          required :download_url_expires, Time, nil?: true

          # @!attribute failure_reason
          #   Reason the file was rejected, when applicable
          #
          #   @return [String, nil]
          required :failure_reason, String, nil?: true

          # @!attribute mime_type
          #   MIME type of the file, available once the file is ready
          #
          #   @return [String, nil]
          required :mime_type, String, nil?: true

          # @!attribute name
          #   Name of the file
          #
          #   @return [String]
          required :name, String

          # @!attribute size_bytes
          #   Size of the file in bytes, available once the file is ready
          #
          #   @return [Integer, nil]
          required :size_bytes, Integer, nil?: true

          # @!attribute status
          #   Lifecycle status of a case file:
          #
          #   - `PENDING` - An upload URL has been issued and the file is awaiting upload
          #   - `READY` - The file has been uploaded and validated; a download URL is
          #     available
          #   - `REJECTED` - File validation failed; see `failure_reason` for details
          #
          #   @return [Symbol, Lithic::Models::TransactionMonitoring::Cases::FileStatus]
          required :status, enum: -> { Lithic::TransactionMonitoring::Cases::FileStatus }

          # @!attribute updated
          #   Date and time at which the file record was last updated
          #
          #   @return [Time]
          required :updated, Time

          # @!attribute upload_constraints
          #   Constraints applied to a file upload, returned alongside the upload URL so
          #   clients can validate before uploading
          #
          #   @return [Lithic::Models::TransactionMonitoring::Cases::UploadConstraints, nil]
          required :upload_constraints,
                   -> {
                     Lithic::TransactionMonitoring::Cases::UploadConstraints
                   },
                   nil?: true

          # @!attribute upload_url
          #   Presigned URL the client uses to upload the file
          #
          #   @return [String, nil]
          required :upload_url, String, nil?: true

          # @!attribute upload_url_expires
          #   Date and time at which the upload URL expires
          #
          #   @return [Time, nil]
          required :upload_url_expires, Time, nil?: true

          # @!method initialize(token:, created:, download_url:, download_url_expires:, failure_reason:, mime_type:, name:, size_bytes:, status:, updated:, upload_constraints:, upload_url:, upload_url_expires:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::TransactionMonitoring::Cases::CaseFile} for more details.
          #
          #   A file attached to a case. Status-dependent fields are always present but may be
          #   `null`:
          #
          #   - `upload_url`, `upload_url_expires`, and `upload_constraints` are populated
          #     when `status` is `PENDING` or `REJECTED`
          #   - `download_url` and `download_url_expires` are populated when `status` is
          #     `READY`
          #   - `failure_reason` is populated when `status` is `REJECTED`
          #
          #   @param token [String] Globally unique identifier for the file
          #
          #   @param created [Time] Date and time at which the file record was created
          #
          #   @param download_url [String, nil] Presigned URL the client uses to download the file
          #
          #   @param download_url_expires [Time, nil] Date and time at which the download URL expires
          #
          #   @param failure_reason [String, nil] Reason the file was rejected, when applicable
          #
          #   @param mime_type [String, nil] MIME type of the file, available once the file is ready
          #
          #   @param name [String] Name of the file
          #
          #   @param size_bytes [Integer, nil] Size of the file in bytes, available once the file is ready
          #
          #   @param status [Symbol, Lithic::Models::TransactionMonitoring::Cases::FileStatus] Lifecycle status of a case file:
          #
          #   @param updated [Time] Date and time at which the file record was last updated
          #
          #   @param upload_constraints [Lithic::Models::TransactionMonitoring::Cases::UploadConstraints, nil] Constraints applied to a file upload, returned alongside the upload URL so clien
          #
          #   @param upload_url [String, nil] Presigned URL the client uses to upload the file
          #
          #   @param upload_url_expires [Time, nil] Date and time at which the upload URL expires
        end
      end

      CaseFile = Cases::CaseFile
    end
  end
end
