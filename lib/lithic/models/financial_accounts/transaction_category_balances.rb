# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      class TransactionCategoryBalances < Lithic::Internal::Type::BaseModel
        # @!attribute balance_transfers
        #   Amounts attributable to balance transfers
        #
        #   @return [Lithic::Models::FinancialAccounts::CategoryBalances]
        required :balance_transfers, -> { Lithic::FinancialAccounts::CategoryBalances }

        # @!attribute cash_advances
        #   Amounts attributable to cash advances
        #
        #   @return [Lithic::Models::FinancialAccounts::CategoryBalances]
        required :cash_advances, -> { Lithic::FinancialAccounts::CategoryBalances }

        # @!attribute purchases
        #   Amounts attributable to purchases
        #
        #   @return [Lithic::Models::FinancialAccounts::CategoryBalances]
        required :purchases, -> { Lithic::FinancialAccounts::CategoryBalances }

        # @!method initialize(balance_transfers:, cash_advances:, purchases:)
        #   @param balance_transfers [Lithic::Models::FinancialAccounts::CategoryBalances] Amounts attributable to balance transfers
        #
        #   @param cash_advances [Lithic::Models::FinancialAccounts::CategoryBalances] Amounts attributable to cash advances
        #
        #   @param purchases [Lithic::Models::FinancialAccounts::CategoryBalances] Amounts attributable to purchases
      end
    end
  end
end
