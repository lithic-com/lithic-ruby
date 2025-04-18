# typed: strong

module Lithic
  module Models
    class DisputeEvidence < Lithic::Internal::Type::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      attr_accessor :token

      # Timestamp of when dispute evidence was created.
      sig { returns(Time) }
      attr_accessor :created

      # Dispute token evidence is attached to.
      sig { returns(String) }
      attr_accessor :dispute_token

      # Upload status types:
      #
      # - `DELETED` - Evidence was deleted.
      # - `ERROR` - Evidence upload failed.
      # - `PENDING` - Evidence is pending upload.
      # - `REJECTED` - Evidence was rejected.
      # - `UPLOADED` - Evidence was uploaded.
      sig { returns(Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol) }
      attr_accessor :upload_status

      # URL to download evidence. Only shown when `upload_status` is `UPLOADED`.
      sig { returns(T.nilable(String)) }
      attr_reader :download_url

      sig { params(download_url: String).void }
      attr_writer :download_url

      # File name of evidence. Recommended to give the dispute evidence a human-readable
      # identifier.
      sig { returns(T.nilable(String)) }
      attr_reader :filename

      sig { params(filename: String).void }
      attr_writer :filename

      # URL to upload evidence. Only shown when `upload_status` is `PENDING`.
      sig { returns(T.nilable(String)) }
      attr_reader :upload_url

      sig { params(upload_url: String).void }
      attr_writer :upload_url

      # Dispute evidence.
      sig do
        params(
          token: String,
          created: Time,
          dispute_token: String,
          upload_status: Lithic::Models::DisputeEvidence::UploadStatus::OrSymbol,
          download_url: String,
          filename: String,
          upload_url: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        created:,
        dispute_token:,
        upload_status:,
        download_url: nil,
        filename: nil,
        upload_url: nil
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              created: Time,
              dispute_token: String,
              upload_status: Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol,
              download_url: String,
              filename: String,
              upload_url: String
            }
          )
      end
      def to_hash; end

      # Upload status types:
      #
      # - `DELETED` - Evidence was deleted.
      # - `ERROR` - Evidence upload failed.
      # - `PENDING` - Evidence is pending upload.
      # - `REJECTED` - Evidence was rejected.
      # - `UPLOADED` - Evidence was uploaded.
      module UploadStatus
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::DisputeEvidence::UploadStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DELETED = T.let(:DELETED, Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol)
        ERROR = T.let(:ERROR, Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol)
        REJECTED = T.let(:REJECTED, Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol)
        UPLOADED = T.let(:UPLOADED, Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
