# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Disputes#delete_evidence
    class DisputeEvidence < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :token, String

      # @!attribute created
      #   Timestamp of when dispute evidence was created.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute dispute_token
      #   Dispute token evidence is attached to.
      #
      #   @return [String]
      required :dispute_token, String

      # @!attribute upload_status
      #   Upload status types:
      #
      #   - `DELETED` - Evidence was deleted.
      #   - `ERROR` - Evidence upload failed.
      #   - `PENDING` - Evidence is pending upload.
      #   - `REJECTED` - Evidence was rejected.
      #   - `UPLOADED` - Evidence was uploaded.
      #
      #   @return [Symbol, Lithic::DisputeEvidence::UploadStatus]
      required :upload_status, enum: -> { Lithic::DisputeEvidence::UploadStatus }

      # @!attribute download_url
      #   URL to download evidence. Only shown when `upload_status` is `UPLOADED`.
      #
      #   @return [String, nil]
      optional :download_url, String

      # @!attribute filename
      #   File name of evidence. Recommended to give the dispute evidence a human-readable
      #   identifier.
      #
      #   @return [String, nil]
      optional :filename, String

      # @!attribute upload_url
      #   URL to upload evidence. Only shown when `upload_status` is `PENDING`.
      #
      #   @return [String, nil]
      optional :upload_url, String

      # @!method initialize(token:, created:, dispute_token:, upload_status:, download_url: nil, filename: nil, upload_url: nil)
      #   Some parameter documentations has been truncated, see {Lithic::DisputeEvidence}
      #   for more details.
      #
      #   Dispute evidence.
      #
      #   @param token [String] Globally unique identifier.
      #
      #   @param created [Time] Timestamp of when dispute evidence was created.
      #
      #   @param dispute_token [String] Dispute token evidence is attached to.
      #
      #   @param upload_status [Symbol, Lithic::DisputeEvidence::UploadStatus] Upload status types:
      #
      #   @param download_url [String] URL to download evidence. Only shown when `upload_status` is `UPLOADED`.
      #
      #   @param filename [String] File name of evidence. Recommended to give the dispute evidence a human-readable
      #
      #   @param upload_url [String] URL to upload evidence. Only shown when `upload_status` is `PENDING`.

      # Upload status types:
      #
      # - `DELETED` - Evidence was deleted.
      # - `ERROR` - Evidence upload failed.
      # - `PENDING` - Evidence is pending upload.
      # - `REJECTED` - Evidence was rejected.
      # - `UPLOADED` - Evidence was uploaded.
      #
      # @see Lithic::DisputeEvidence#upload_status
      module UploadStatus
        extend Lithic::Internal::Type::Enum

        DELETED = :DELETED
        ERROR = :ERROR
        PENDING = :PENDING
        REJECTED = :REJECTED
        UPLOADED = :UPLOADED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
