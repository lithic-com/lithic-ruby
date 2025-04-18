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
      #   @return [Symbol, Lithic::Models::DisputeEvidence::UploadStatus]
      required :upload_status, enum: -> { Lithic::Models::DisputeEvidence::UploadStatus }

      # @!attribute [r] download_url
      #   URL to download evidence. Only shown when `upload_status` is `UPLOADED`.
      #
      #   @return [String, nil]
      optional :download_url, String

      # @!parse
      #   # @return [String]
      #   attr_writer :download_url

      # @!attribute [r] filename
      #   File name of evidence. Recommended to give the dispute evidence a human-readable
      #   identifier.
      #
      #   @return [String, nil]
      optional :filename, String

      # @!parse
      #   # @return [String]
      #   attr_writer :filename

      # @!attribute [r] upload_url
      #   URL to upload evidence. Only shown when `upload_status` is `PENDING`.
      #
      #   @return [String, nil]
      optional :upload_url, String

      # @!parse
      #   # @return [String]
      #   attr_writer :upload_url

      # @!method initialize(token:, created:, dispute_token:, upload_status:, download_url: nil, filename: nil, upload_url: nil)
      #   Dispute evidence.
      #
      #   @param token [String]
      #   @param created [Time]
      #   @param dispute_token [String]
      #   @param upload_status [Symbol, Lithic::Models::DisputeEvidence::UploadStatus]
      #   @param download_url [String]
      #   @param filename [String]
      #   @param upload_url [String]

      # Upload status types:
      #
      # - `DELETED` - Evidence was deleted.
      # - `ERROR` - Evidence upload failed.
      # - `PENDING` - Evidence is pending upload.
      # - `REJECTED` - Evidence was rejected.
      # - `UPLOADED` - Evidence was uploaded.
      #
      # @see Lithic::Models::DisputeEvidence#upload_status
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
