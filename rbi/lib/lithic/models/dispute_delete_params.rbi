# typed: strong

module Lithic
  module Models
    class DisputeDeleteParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      sig do
        params(
          request_options: T.any(
            Lithic::RequestOptions,
            Lithic::Internal::AnyHash
          )
        ).returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
