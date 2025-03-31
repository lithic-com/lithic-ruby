# typed: strong

module Lithic
  module Models
    module Cards
      class AggregateBalanceListParams < Lithic::BaseModel
        extend Lithic::Type::RequestParameters::Converter
        include Lithic::RequestParameters

        # Cardholder to retrieve aggregate balances for.
        sig { returns(T.nilable(String)) }
        attr_reader :account_token

        sig { params(account_token: String).void }
        attr_writer :account_token

        # Business to retrieve aggregate balances for.
        sig { returns(T.nilable(String)) }
        attr_reader :business_account_token

        sig { params(business_account_token: String).void }
        attr_writer :business_account_token

        sig do
          params(
            account_token: String,
            business_account_token: String,
            request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
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
