# typed: strong

module Lithic
  module Models
    class TransactionSimulateReturnReversalParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # The transaction token returned from the /v1/simulate/authorize response.
      sig { returns(String) }
      attr_accessor :token

      sig do
        params(token: String, request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(token:, request_options: {})
      end

      sig { override.returns({token: String, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
