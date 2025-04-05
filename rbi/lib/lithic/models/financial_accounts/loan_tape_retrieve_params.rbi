# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class LoanTapeRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # Globally unique identifier for financial account.
        sig { returns(String) }
        attr_accessor :financial_account_token

        sig do
          params(
            financial_account_token: String,
            request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(financial_account_token:, request_options: {}); end

        sig { override.returns({financial_account_token: String, request_options: Lithic::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
