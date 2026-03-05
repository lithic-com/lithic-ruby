# typed: strong

module Lithic
  module Models
    class ExternalPaymentRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::ExternalPaymentRetrieveParams,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :external_payment_token

      sig do
        params(
          external_payment_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(external_payment_token:, request_options: {})
      end

      sig do
        override.returns(
          {
            external_payment_token: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
