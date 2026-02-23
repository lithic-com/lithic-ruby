# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class InterestTierScheduleUpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::InterestTierScheduleUpdateParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :financial_account_token

        # Name of a tier contained in the credit product. Mutually exclusive with
        # tier_rates
        sig { returns(T.nilable(String)) }
        attr_reader :tier_name

        sig { params(tier_name: String).void }
        attr_writer :tier_name

        # Custom rates per category. Mutually exclusive with tier_name
        sig { returns(T.nilable(T.anything)) }
        attr_reader :tier_rates

        sig { params(tier_rates: T.anything).void }
        attr_writer :tier_rates

        sig do
          params(
            financial_account_token: String,
            tier_name: String,
            tier_rates: T.anything,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          financial_account_token:,
          # Name of a tier contained in the credit product. Mutually exclusive with
          # tier_rates
          tier_name: nil,
          # Custom rates per category. Mutually exclusive with tier_name
          tier_rates: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              financial_account_token: String,
              tier_name: String,
              tier_rates: T.anything,
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
