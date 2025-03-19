# typed: strong

module Lithic
  module Models
    class PaymentSimulateReleaseParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Payment Token
      sig { returns(String) }
      def payment_token
      end

      sig { params(_: String).returns(String) }
      def payment_token=(_)
      end

      sig do
        params(
          payment_token: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(payment_token:, request_options: {})
      end

      sig { override.returns({payment_token: String, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
