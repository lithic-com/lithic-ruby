# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class FinancialTransactionRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :financial_account_token

        sig do
          params(
            financial_account_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(financial_account_token:, request_options: {})
        end

        sig do
          override.returns(
            {
              financial_account_token: String,
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
