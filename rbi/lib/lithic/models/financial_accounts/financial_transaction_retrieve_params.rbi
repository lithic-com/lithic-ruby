# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class FinancialTransactionRetrieveParams < Lithic::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        sig { returns(String) }
        attr_accessor :financial_account_token

        sig do
          params(
            financial_account_token: String,
            request_options: T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(financial_account_token:, request_options: {})
        end

        sig { override.returns({financial_account_token: String, request_options: Lithic::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
