# typed: strong

module Lithic
  module Models
    module Cards
      class AggregateBalanceListParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # Cardholder to retrieve aggregate balances for.
        sig { returns(T.nilable(String)) }
        def account_token
        end

        sig { params(_: String).returns(String) }
        def account_token=(_)
        end

        # Business to retrieve aggregate balances for.
        sig { returns(T.nilable(String)) }
        def business_account_token
        end

        sig { params(_: String).returns(String) }
        def business_account_token=(_)
        end

        sig do
          params(
            account_token: String,
            business_account_token: String,
            request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(account_token: nil, business_account_token: nil, request_options: {})
        end

        sig do
          override
            .returns({
                       account_token: String,
                       business_account_token: String,
                       request_options: Lithic::RequestOptions
                     })
        end
        def to_hash
        end
      end
    end
  end
end
