# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class CreditConfigurationUpdateParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        sig { returns(T.nilable(Integer)) }
        def credit_limit
        end

        sig { params(_: Integer).returns(Integer) }
        def credit_limit=(_)
        end

        # Globally unique identifier for the credit product
        sig { returns(T.nilable(String)) }
        def credit_product_token
        end

        sig { params(_: String).returns(String) }
        def credit_product_token=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_bank_account_token
        end

        sig { params(_: String).returns(String) }
        def external_bank_account_token=(_)
        end

        # Tier to assign to a financial account
        sig { returns(T.nilable(String)) }
        def tier
        end

        sig { params(_: String).returns(String) }
        def tier=(_)
        end

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
