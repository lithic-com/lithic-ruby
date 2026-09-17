# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class FinancialAccountsOpenToBuy < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::FinancialAccountsOpenToBuy,
              Lithic::Internal::AnyHash
            )
          end

        # Funds available for card spend backed by this Security Account, in the
        # currency's smallest unit (e.g., cents for USD). Equal to the sum of the amounts
        # in `summary`, and reaches zero once outstanding spend has consumed all available
        # funding
        sig { returns(Integer) }
        attr_accessor :open_to_buy

        # Balances that open to buy is derived from
        sig { returns(Lithic::FinancialAccounts::OpenToBuySummary) }
        attr_reader :summary

        sig do
          params(
            summary: Lithic::FinancialAccounts::OpenToBuySummary::OrHash
          ).void
        end
        attr_writer :summary

        # Open to Buy
        sig do
          params(
            open_to_buy: Integer,
            summary: Lithic::FinancialAccounts::OpenToBuySummary::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Funds available for card spend backed by this Security Account, in the
          # currency's smallest unit (e.g., cents for USD). Equal to the sum of the amounts
          # in `summary`, and reaches zero once outstanding spend has consumed all available
          # funding
          open_to_buy:,
          # Balances that open to buy is derived from
          summary:
        )
        end

        sig do
          override.returns(
            {
              open_to_buy: Integer,
              summary: Lithic::FinancialAccounts::OpenToBuySummary
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
