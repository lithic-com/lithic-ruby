# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::InterestTierSchedule#create
      class FinancialAccountsInterestTierSchedule < Lithic::Internal::Type::BaseModel
        # @!attribute credit_product_token
        #   Globally unique identifier for a credit product
        #
        #   @return [String]
        required :credit_product_token, String

        # @!attribute effective_date
        #   Date the tier should be effective in YYYY-MM-DD format
        #
        #   @return [Date]
        required :effective_date, Date

        # @!attribute penalty_rates
        #   Custom rates per category for penalties
        #
        #   @return [Object, nil]
        optional :penalty_rates, Lithic::Internal::Type::Unknown

        # @!attribute tier_name
        #   Name of a tier contained in the credit product. Mutually exclusive with
        #   tier_rates
        #
        #   @return [String, nil]
        optional :tier_name, String

        # @!attribute tier_rates
        #   Custom rates per category. Mutually exclusive with tier_name
        #
        #   @return [Object, nil]
        optional :tier_rates, Lithic::Internal::Type::Unknown

        # @!method initialize(credit_product_token:, effective_date:, penalty_rates: nil, tier_name: nil, tier_rates: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::FinancialAccounts::FinancialAccountsInterestTierSchedule} for
        #   more details.
        #
        #   Entry in the Tier Schedule of an account
        #
        #   @param credit_product_token [String] Globally unique identifier for a credit product
        #
        #   @param effective_date [Date] Date the tier should be effective in YYYY-MM-DD format
        #
        #   @param penalty_rates [Object] Custom rates per category for penalties
        #
        #   @param tier_name [String] Name of a tier contained in the credit product. Mutually exclusive with tier_rat
        #
        #   @param tier_rates [Object] Custom rates per category. Mutually exclusive with tier_name
      end
    end
  end
end
