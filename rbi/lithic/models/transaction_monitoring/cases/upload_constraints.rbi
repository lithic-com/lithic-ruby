# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      module Cases
        class UploadConstraints < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::TransactionMonitoring::Cases::UploadConstraints,
                Lithic::Internal::AnyHash
              )
            end

          # MIME types accepted for the upload
          sig { returns(T::Array[String]) }
          attr_accessor :accepted_mime_types

          # Maximum accepted file size, in bytes
          sig { returns(Integer) }
          attr_accessor :max_size_bytes

          # Constraints applied to a file upload, returned alongside the upload URL so
          # clients can validate before uploading
          sig do
            params(
              accepted_mime_types: T::Array[String],
              max_size_bytes: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # MIME types accepted for the upload
            accepted_mime_types:,
            # Maximum accepted file size, in bytes
            max_size_bytes:
          )
          end

          sig do
            override.returns(
              { accepted_mime_types: T::Array[String], max_size_bytes: Integer }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
