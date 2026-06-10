# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      module Cases
        class UploadConstraints < Lithic::Internal::Type::BaseModel
          # @!attribute accepted_mime_types
          #   MIME types accepted for the upload
          #
          #   @return [Array<String>]
          required :accepted_mime_types, Lithic::Internal::Type::ArrayOf[String]

          # @!attribute max_size_bytes
          #   Maximum accepted file size, in bytes
          #
          #   @return [Integer]
          required :max_size_bytes, Integer

          # @!method initialize(accepted_mime_types:, max_size_bytes:)
          #   Constraints applied to a file upload, returned alongside the upload URL so
          #   clients can validate before uploading
          #
          #   @param accepted_mime_types [Array<String>] MIME types accepted for the upload
          #
          #   @param max_size_bytes [Integer] Maximum accepted file size, in bytes
        end
      end
    end
  end
end
