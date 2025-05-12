# typed: strong

module Lithic
  module Models
    class TransactionSimulateReturnReversalParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::TransactionSimulateReturnReversalParams,
            Lithic::Internal::AnyHash
          )
        end

      # The transaction token returned from the /v1/simulate/authorize response.
      sig { returns(String) }
      attr_accessor :token

      sig do
        params(
          token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The transaction token returned from the /v1/simulate/authorize response.
        token:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { token: String, request_options: Lithic::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
