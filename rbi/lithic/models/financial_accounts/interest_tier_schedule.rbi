# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class FinancialAccountsInterestTierSchedule < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for a credit product
        sig { returns(String) }
        attr_accessor :credit_product_token

        # Date the tier should be effective in YYYY-MM-DD format
        sig { returns(Date) }
        attr_accessor :effective_date

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

        # Entry in the Tier Schedule of an account
        sig do
          params(
            credit_product_token: String,
            effective_date: Date,
            tier_name: String,
            tier_rates: T.anything
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for a credit product
          credit_product_token:,
          # Date the tier should be effective in YYYY-MM-DD format
          effective_date:,
          # Name of a tier contained in the credit product. Mutually exclusive with
          # tier_rates
          tier_name: nil,
          # Custom rates per category. Mutually exclusive with tier_name
          tier_rates: nil
        )
        end

        sig do
          override.returns(
            {
              credit_product_token: String,
              effective_date: Date,
              tier_name: String,
              tier_rates: T.anything
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
