# typed: strong

module Lithic
  module Models
    class PaymentSimulateReleaseParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Payment Token
      sig { returns(String) }
      attr_accessor :payment_token

      sig do
        params(
          payment_token: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(payment_token:, request_options: {}); end

      sig { override.returns({payment_token: String, request_options: Lithic::RequestOptions}) }
      def to_hash; end
    end
  end
end
