# typed: strong

module Lithic
  module Models
    class DisputeInitiateEvidenceUploadParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::DisputeInitiateEvidenceUploadParams,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :dispute_token

      # Filename of the evidence.
      sig { returns(T.nilable(String)) }
      attr_reader :filename

      sig { params(filename: String).void }
      attr_writer :filename

      sig do
        params(
          dispute_token: String,
          filename: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        dispute_token:,
        # Filename of the evidence.
        filename: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            dispute_token: String,
            filename: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
