# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class TransactionCategoryBalances < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::TransactionCategoryBalances,
              Lithic::Internal::AnyHash
            )
          end

        # Amounts attributable to balance transfers
        sig { returns(Lithic::FinancialAccounts::CategoryBalances) }
        attr_reader :balance_transfers

        sig do
          params(
            balance_transfers:
              Lithic::FinancialAccounts::CategoryBalances::OrHash
          ).void
        end
        attr_writer :balance_transfers

        # Amounts attributable to cash advances
        sig { returns(Lithic::FinancialAccounts::CategoryBalances) }
        attr_reader :cash_advances

        sig do
          params(
            cash_advances: Lithic::FinancialAccounts::CategoryBalances::OrHash
          ).void
        end
        attr_writer :cash_advances

        # Amounts attributable to purchases
        sig { returns(Lithic::FinancialAccounts::CategoryBalances) }
        attr_reader :purchases

        sig do
          params(
            purchases: Lithic::FinancialAccounts::CategoryBalances::OrHash
          ).void
        end
        attr_writer :purchases

        sig do
          params(
            balance_transfers:
              Lithic::FinancialAccounts::CategoryBalances::OrHash,
            cash_advances: Lithic::FinancialAccounts::CategoryBalances::OrHash,
            purchases: Lithic::FinancialAccounts::CategoryBalances::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Amounts attributable to balance transfers
          balance_transfers:,
          # Amounts attributable to cash advances
          cash_advances:,
          # Amounts attributable to purchases
          purchases:
        )
        end

        sig do
          override.returns(
            {
              balance_transfers: Lithic::FinancialAccounts::CategoryBalances,
              cash_advances: Lithic::FinancialAccounts::CategoryBalances,
              purchases: Lithic::FinancialAccounts::CategoryBalances
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
