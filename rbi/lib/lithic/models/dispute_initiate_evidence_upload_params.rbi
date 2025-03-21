# typed: strong

module Lithic
  module Models
    class DisputeInitiateEvidenceUploadParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Filename of the evidence.
      sig { returns(T.nilable(String)) }
      def filename
      end

      sig { params(_: String).returns(String) }
      def filename=(_)
      end

      sig do
        params(filename: String, request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(filename: nil, request_options: {})
      end

      sig { override.returns({filename: String, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
