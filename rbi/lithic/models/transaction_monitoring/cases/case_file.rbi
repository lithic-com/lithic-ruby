# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      CaseFile = Cases::CaseFile

      module Cases
        class CaseFile < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::TransactionMonitoring::Cases::CaseFile,
                Lithic::Internal::AnyHash
              )
            end

          # Globally unique identifier for the file
          sig { returns(String) }
          attr_accessor :token

          # Date and time at which the file record was created
          sig { returns(Time) }
          attr_accessor :created

          # Presigned URL the client uses to download the file
          sig { returns(T.nilable(String)) }
          attr_accessor :download_url

          # Date and time at which the download URL expires
          sig { returns(T.nilable(Time)) }
          attr_accessor :download_url_expires

          # Reason the file was rejected, when applicable
          sig { returns(T.nilable(String)) }
          attr_accessor :failure_reason

          # MIME type of the file, available once the file is ready
          sig { returns(T.nilable(String)) }
          attr_accessor :mime_type

          # Name of the file
          sig { returns(String) }
          attr_accessor :name

          # Size of the file in bytes, available once the file is ready
          sig { returns(T.nilable(Integer)) }
          attr_accessor :size_bytes

          # Lifecycle status of a case file:
          #
          # - `PENDING` - An upload URL has been issued and the file is awaiting upload
          # - `READY` - The file has been uploaded and validated; a download URL is
          #   available
          # - `REJECTED` - File validation failed; see `failure_reason` for details
          sig do
            returns(
              Lithic::TransactionMonitoring::Cases::FileStatus::TaggedSymbol
            )
          end
          attr_accessor :status

          # Date and time at which the file record was last updated
          sig { returns(Time) }
          attr_accessor :updated

          # Constraints applied to a file upload, returned alongside the upload URL so
          # clients can validate before uploading
          sig do
            returns(
              T.nilable(Lithic::TransactionMonitoring::Cases::UploadConstraints)
            )
          end
          attr_reader :upload_constraints

          sig do
            params(
              upload_constraints:
                T.nilable(
                  Lithic::TransactionMonitoring::Cases::UploadConstraints::OrHash
                )
            ).void
          end
          attr_writer :upload_constraints

          # Presigned URL the client uses to upload the file
          sig { returns(T.nilable(String)) }
          attr_accessor :upload_url

          # Date and time at which the upload URL expires
          sig { returns(T.nilable(Time)) }
          attr_accessor :upload_url_expires

          # A file attached to a case. Status-dependent fields are always present but may be
          # `null`:
          #
          # - `upload_url`, `upload_url_expires`, and `upload_constraints` are populated
          #   when `status` is `PENDING` or `REJECTED`
          # - `download_url` and `download_url_expires` are populated when `status` is
          #   `READY`
          # - `failure_reason` is populated when `status` is `REJECTED`
          sig do
            params(
              token: String,
              created: Time,
              download_url: T.nilable(String),
              download_url_expires: T.nilable(Time),
              failure_reason: T.nilable(String),
              mime_type: T.nilable(String),
              name: String,
              size_bytes: T.nilable(Integer),
              status:
                Lithic::TransactionMonitoring::Cases::FileStatus::OrSymbol,
              updated: Time,
              upload_constraints:
                T.nilable(
                  Lithic::TransactionMonitoring::Cases::UploadConstraints::OrHash
                ),
              upload_url: T.nilable(String),
              upload_url_expires: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            # Globally unique identifier for the file
            token:,
            # Date and time at which the file record was created
            created:,
            # Presigned URL the client uses to download the file
            download_url:,
            # Date and time at which the download URL expires
            download_url_expires:,
            # Reason the file was rejected, when applicable
            failure_reason:,
            # MIME type of the file, available once the file is ready
            mime_type:,
            # Name of the file
            name:,
            # Size of the file in bytes, available once the file is ready
            size_bytes:,
            # Lifecycle status of a case file:
            #
            # - `PENDING` - An upload URL has been issued and the file is awaiting upload
            # - `READY` - The file has been uploaded and validated; a download URL is
            #   available
            # - `REJECTED` - File validation failed; see `failure_reason` for details
            status:,
            # Date and time at which the file record was last updated
            updated:,
            # Constraints applied to a file upload, returned alongside the upload URL so
            # clients can validate before uploading
            upload_constraints:,
            # Presigned URL the client uses to upload the file
            upload_url:,
            # Date and time at which the upload URL expires
            upload_url_expires:
          )
          end

          sig do
            override.returns(
              {
                token: String,
                created: Time,
                download_url: T.nilable(String),
                download_url_expires: T.nilable(Time),
                failure_reason: T.nilable(String),
                mime_type: T.nilable(String),
                name: String,
                size_bytes: T.nilable(Integer),
                status:
                  Lithic::TransactionMonitoring::Cases::FileStatus::TaggedSymbol,
                updated: Time,
                upload_constraints:
                  T.nilable(
                    Lithic::TransactionMonitoring::Cases::UploadConstraints
                  ),
                upload_url: T.nilable(String),
                upload_url_expires: T.nilable(Time)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
