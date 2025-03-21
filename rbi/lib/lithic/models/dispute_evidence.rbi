# typed: strong

module Lithic
  module Models
    class DisputeEvidence < Lithic::BaseModel
      # Globally unique identifier.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Timestamp of when dispute evidence was created.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # Dispute token evidence is attached to.
      sig { returns(String) }
      def dispute_token
      end

      sig { params(_: String).returns(String) }
      def dispute_token=(_)
      end

      # Upload status types:
      #
      #   - `DELETED` - Evidence was deleted.
      #   - `ERROR` - Evidence upload failed.
      #   - `PENDING` - Evidence is pending upload.
      #   - `REJECTED` - Evidence was rejected.
      #   - `UPLOADED` - Evidence was uploaded.
      sig { returns(Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol) }
      def upload_status
      end

      sig do
        params(_: Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol)
          .returns(Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol)
      end
      def upload_status=(_)
      end

      # URL to download evidence. Only shown when `upload_status` is `UPLOADED`.
      sig { returns(T.nilable(String)) }
      def download_url
      end

      sig { params(_: String).returns(String) }
      def download_url=(_)
      end

      # File name of evidence. Recommended to give the dispute evidence a human-readable
      #   identifier.
      sig { returns(T.nilable(String)) }
      def filename
      end

      sig { params(_: String).returns(String) }
      def filename=(_)
      end

      # URL to upload evidence. Only shown when `upload_status` is `PENDING`.
      sig { returns(T.nilable(String)) }
      def upload_url
      end

      sig { params(_: String).returns(String) }
      def upload_url=(_)
      end

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
      def self.new(token:, created:, dispute_token:, upload_status:, download_url: nil, filename: nil, upload_url: nil)
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
      def to_hash
      end

      # Upload status types:
      #
      #   - `DELETED` - Evidence was deleted.
      #   - `ERROR` - Evidence upload failed.
      #   - `PENDING` - Evidence is pending upload.
      #   - `REJECTED` - Evidence was rejected.
      #   - `UPLOADED` - Evidence was uploaded.
      module UploadStatus
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::DisputeEvidence::UploadStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol) }

        DELETED = T.let(:DELETED, Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol)
        ERROR = T.let(:ERROR, Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol)
        PENDING = T.let(:PENDING, Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol)
        REJECTED = T.let(:REJECTED, Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol)
        UPLOADED = T.let(:UPLOADED, Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::DisputeEvidence::UploadStatus::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
