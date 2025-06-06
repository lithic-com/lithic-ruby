# typed: strong

module Lithic
  module Models
    class TransactionSimulateAuthorizationAdviceParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::TransactionSimulateAuthorizationAdviceParams,
            Lithic::Internal::AnyHash
          )
        end

      # The transaction token returned from the /v1/simulate/authorize. response.
      sig { returns(String) }
      attr_accessor :token

      # Amount (in cents) to authorize. This amount will override the transaction's
      # amount that was originally set by /v1/simulate/authorize.
      sig { returns(Integer) }
      attr_accessor :amount

      sig do
        params(
          token: String,
          amount: Integer,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The transaction token returned from the /v1/simulate/authorize. response.
        token:,
        # Amount (in cents) to authorize. This amount will override the transaction's
        # amount that was originally set by /v1/simulate/authorize.
        amount:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            token: String,
            amount: Integer,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
