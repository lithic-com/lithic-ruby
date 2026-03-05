# typed: strong

module Lithic
  module Models
    class FinancialAccountUpdateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::FinancialAccountUpdateParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :financial_account_token

      sig { returns(T.nilable(String)) }
      attr_reader :nickname

      sig { params(nickname: String).void }
      attr_writer :nickname

      sig do
        params(
          financial_account_token: String,
          nickname: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(financial_account_token:, nickname: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            financial_account_token: String,
            nickname: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
