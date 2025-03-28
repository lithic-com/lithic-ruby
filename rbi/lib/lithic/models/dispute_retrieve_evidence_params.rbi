# typed: strong

module Lithic
  module Models
    class DisputeRetrieveEvidenceParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(String) }
      attr_accessor :dispute_token

      sig do
        params(dispute_token: String, request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
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
