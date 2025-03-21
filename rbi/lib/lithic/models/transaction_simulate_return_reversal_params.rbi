# typed: strong

module Lithic
  module Models
    class TransactionSimulateReturnReversalParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The transaction token returned from the /v1/simulate/authorize response.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      sig do
        params(token: String, request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
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
