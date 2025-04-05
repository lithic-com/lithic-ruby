# typed: strong

module Lithic
  module Models
    class TransactionSimulateAuthorizationAdviceParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # The transaction token returned from the /v1/simulate/authorize. response.
      sig { returns(String) }
      attr_accessor :token

      # Amount (in cents) to authorize. This amount will override the transaction's
      #   amount that was originally set by /v1/simulate/authorize.
      sig { returns(Integer) }
      attr_accessor :amount

      sig do
        params(
          token: String,
          amount: Integer,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(token:, amount:, request_options: {}); end

      sig { override.returns({token: String, amount: Integer, request_options: Lithic::RequestOptions}) }
      def to_hash; end
    end
  end
end
