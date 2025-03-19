# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class FinancialTransactionRetrieveParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        sig { returns(String) }
        def financial_account_token
        end

        sig { params(_: String).returns(String) }
        def financial_account_token=(_)
        end

        sig do
          params(
            financial_account_token: String,
            request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
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
