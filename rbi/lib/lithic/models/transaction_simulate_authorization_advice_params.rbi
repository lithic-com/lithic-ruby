# typed: strong

module Lithic
  module Models
    class TransactionSimulateAuthorizationAdviceParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The transaction token returned from the /v1/simulate/authorize. response.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Amount (in cents) to authorize. This amount will override the transaction's
      #   amount that was originally set by /v1/simulate/authorize.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig do
        params(
          token: String,
          amount: Integer,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(token:, amount:, request_options: {})
      end

      sig { override.returns({token: String, amount: Integer, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
