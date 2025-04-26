# typed: strong

module Lithic
  module Models
    class ExternalBankAccountRetryMicroDepositsParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :financial_account_token

      sig { params(financial_account_token: String).void }
      attr_writer :financial_account_token

      sig do
        params(
          financial_account_token: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(financial_account_token: nil, request_options: {}); end

      sig { override.returns({financial_account_token: String, request_options: Lithic::RequestOptions}) }
      def to_hash; end
    end
  end
end
