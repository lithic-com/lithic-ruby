# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::OpenToBuy#retrieve
      class FinancialAccountsOpenToBuy < Lithic::Internal::Type::BaseModel
        # @!attribute open_to_buy
        #   Funds available for card spend backed by this Security Account, in the
        #   currency's smallest unit (e.g., cents for USD). Equal to the sum of the amounts
        #   in `summary`, and reaches zero once outstanding spend has consumed all available
        #   funding
        #
        #   @return [Integer]
        required :open_to_buy, Integer

        # @!attribute summary
        #   Balances that open to buy is derived from
        #
        #   @return [Lithic::Models::FinancialAccounts::OpenToBuySummary]
        required :summary, -> { Lithic::FinancialAccounts::OpenToBuySummary }

        # @!method initialize(open_to_buy:, summary:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::FinancialAccounts::FinancialAccountsOpenToBuy} for more
        #   details.
        #
        #   Open to Buy
        #
        #   @param open_to_buy [Integer] Funds available for card spend backed by this Security Account, in the currency'
        #
        #   @param summary [Lithic::Models::FinancialAccounts::OpenToBuySummary] Balances that open to buy is derived from
      end
    end
  end
end
