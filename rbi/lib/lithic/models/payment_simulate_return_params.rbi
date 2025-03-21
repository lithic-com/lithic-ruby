# typed: strong

module Lithic
  module Models
    class PaymentSimulateReturnParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Payment Token
      sig { returns(String) }
      attr_accessor :payment_token

      # Return Reason Code
      sig { returns(T.nilable(String)) }
      attr_reader :return_reason_code

      sig { params(return_reason_code: String).void }
      attr_writer :return_reason_code

      sig do
        params(
          payment_token: String,
          return_reason_code: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(payment_token:, return_reason_code: nil, request_options: {})
      end

      sig do
        override
          .returns({
                     payment_token: String,
                     return_reason_code: String,
                     request_options: Lithic::RequestOptions
                   })
      end
      def to_hash
      end
    end
  end
end
