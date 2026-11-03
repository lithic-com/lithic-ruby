# typed: strong

module Lithic
  module Models
    class TokenizationSubmitTfaParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::TokenizationSubmitTfaParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :tokenization_token

      # One-time authentication code received by the cardholder, including any leading
      # zeros
      sig { returns(String) }
      attr_accessor :value

      sig do
        params(
          tokenization_token: String,
          value: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        tokenization_token:,
        # One-time authentication code received by the cardholder, including any leading
        # zeros
        value:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            tokenization_token: String,
            value: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
