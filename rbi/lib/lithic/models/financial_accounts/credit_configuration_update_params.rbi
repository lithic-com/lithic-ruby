# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class CreditConfigurationUpdateParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        sig { returns(T.nilable(Integer)) }
        attr_reader :credit_limit

        sig { params(credit_limit: Integer).void }
        attr_writer :credit_limit

        # Globally unique identifier for the credit product
        sig { returns(T.nilable(String)) }
        attr_reader :credit_product_token

        sig { params(credit_product_token: String).void }
        attr_writer :credit_product_token

        sig { returns(T.nilable(String)) }
        attr_reader :external_bank_account_token

        sig { params(external_bank_account_token: String).void }
        attr_writer :external_bank_account_token

        # Tier to assign to a financial account
        sig { returns(T.nilable(String)) }
        attr_reader :tier

        sig { params(tier: String).void }
        attr_writer :tier

        sig do
          params(
            credit_limit: Integer,
            credit_product_token: String,
            external_bank_account_token: String,
            tier: String,
            request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          credit_limit: nil,
          credit_product_token: nil,
          external_bank_account_token: nil,
          tier: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                credit_limit: Integer,
                credit_product_token: String,
                external_bank_account_token: String,
                tier: String,
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
