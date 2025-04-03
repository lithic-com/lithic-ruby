# typed: strong

module Lithic
  module Models
    class DisputeRetrieveEvidenceParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      sig { returns(String) }
      attr_accessor :dispute_token

      sig do
        params(
          dispute_token: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(dispute_token:, request_options: {})
      end

      sig { override.returns({dispute_token: String, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
