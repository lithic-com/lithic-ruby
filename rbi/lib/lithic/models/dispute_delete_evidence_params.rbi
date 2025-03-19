# typed: strong

module Lithic
  module Models
    class DisputeDeleteEvidenceParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(String) }
      def dispute_token
      end

      sig { params(_: String).returns(String) }
      def dispute_token=(_)
      end

      sig do
        params(
          dispute_token: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
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
