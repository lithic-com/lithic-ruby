# typed: strong

module Lithic
  module Models
    class PaymentRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::PaymentRetrieveParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :payment_token

      sig do
        params(
          payment_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(payment_token:, request_options: {})
      end

      sig do
        override.returns(
          { payment_token: String, request_options: Lithic::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
