# typed: strong

module Lithic
  module Resources
    class FinancialAccounts
      class InterestTierSchedule
        # Create a new interest tier schedule entry for a supported financial account
        sig do
          params(
            financial_account_token: String,
            credit_product_token: String,
            effective_date: Date,
            tier_name: String,
            tier_rates: T.anything,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule
          )
        end
        def create(
          # Globally unique identifier for financial account
          financial_account_token,
          # Globally unique identifier for a credit product
          credit_product_token:,
          # Date the tier should be effective in YYYY-MM-DD format
          effective_date:,
          # Name of a tier contained in the credit product. Mutually exclusive with
          # tier_rates
          tier_name: nil,
          # Custom rates per category. Mutually exclusive with tier_name
          tier_rates: nil,
          request_options: {}
        )
        end

        # Get a specific interest tier schedule by effective date
        sig do
          params(
            effective_date: Date,
            financial_account_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule
          )
        end
        def retrieve(
          # Effective date in ISO format (YYYY-MM-DD)
          effective_date,
          # Globally unique identifier for financial account
          financial_account_token:,
          request_options: {}
        )
        end

        # Update an existing interest tier schedule
        sig do
          params(
            effective_date: Date,
            financial_account_token: String,
            tier_name: String,
            tier_rates: T.anything,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule
          )
        end
        def update(
          # Path param: Effective date in ISO format (YYYY-MM-DD)
          effective_date,
          # Path param: Globally unique identifier for financial account
          financial_account_token:,
          # Body param: Name of a tier contained in the credit product. Mutually exclusive
          # with tier_rates
          tier_name: nil,
          # Body param: Custom rates per category. Mutually exclusive with tier_name
          tier_rates: nil,
          request_options: {}
        )
        end

        # List interest tier schedules for a financial account with optional date
        # filtering.
        #
        # If no date parameters are provided, returns all tier schedules. If date
        # parameters are provided, uses filtering to return matching schedules (max 100).
        #
        # - for_date: Returns exact match (takes precedence over other dates)
        # - before_date: Returns schedules with effective_date <= before_date
        # - after_date: Returns schedules with effective_date >= after_date
        # - Both before_date and after_date: Returns schedules in range
        sig do
          params(
            financial_account_token: String,
            after_date: Date,
            before_date: Date,
            for_date: Date,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(
            Lithic::Internal::SinglePage[
              Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule
            ]
          )
        end
        def list(
          # Globally unique identifier for financial account
          financial_account_token,
          # Return schedules with effective_date >= after_date (ISO format YYYY-MM-DD)
          after_date: nil,
          # Return schedules with effective_date <= before_date (ISO format YYYY-MM-DD)
          before_date: nil,
          # Return schedule with effective_date == for_date (ISO format YYYY-MM-DD)
          for_date: nil,
          request_options: {}
        )
        end

        # Delete an interest tier schedule entry.
        #
        # Returns:
        #
        # - 400 Bad Request: Invalid effective_date format OR attempting to delete the
        #   earliest tier schedule entry for a non-PENDING account
        # - 404 Not Found: Tier schedule entry not found for the given effective_date OR
        #   ledger account not found
        #
        # Note: PENDING accounts can delete the earliest tier schedule entry (account
        # hasn't opened yet). Active/non-PENDING accounts cannot delete the earliest entry
        # to prevent orphaning the account.
        #
        # If the deleted tier schedule has a past effective_date and the account is
        # ACTIVE, the loan tape rebuild configuration will be updated to trigger rebuilds
        # from that date.
        sig do
          params(
            effective_date: Date,
            financial_account_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Effective date in ISO format (YYYY-MM-DD)
          effective_date,
          # Globally unique identifier for financial account
          financial_account_token:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
