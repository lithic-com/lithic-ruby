# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class InterestTierSchedule
        # Some parameter documentations has been truncated, see
        # {Lithic::Models::FinancialAccounts::InterestTierScheduleCreateParams} for more
        # details.
        #
        # Create a new interest tier schedule entry for a supported financial account
        #
        # @overload create(financial_account_token, credit_product_token:, effective_date:, penalty_rates: nil, tier_name: nil, tier_rates: nil, request_options: {})
        #
        # @param financial_account_token [String] Globally unique identifier for financial account
        #
        # @param credit_product_token [String] Globally unique identifier for a credit product
        #
        # @param effective_date [Date] Date the tier should be effective in YYYY-MM-DD format
        #
        # @param penalty_rates [Object] Custom rates per category for penalties
        #
        # @param tier_name [String] Name of a tier contained in the credit product. Mutually exclusive with tier_rat
        #
        # @param tier_rates [Object] Custom rates per category. Mutually exclusive with tier_name
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialAccounts::FinancialAccountsInterestTierSchedule]
        #
        # @see Lithic::Models::FinancialAccounts::InterestTierScheduleCreateParams
        def create(financial_account_token, params)
          parsed, options = Lithic::FinancialAccounts::InterestTierScheduleCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/financial_accounts/%1$s/interest_tier_schedule", financial_account_token],
            body: parsed,
            model: Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule,
            options: options
          )
        end

        # Get a specific interest tier schedule by effective date
        #
        # @overload retrieve(effective_date, financial_account_token:, request_options: {})
        #
        # @param effective_date [Date] Effective date in ISO format (YYYY-MM-DD)
        #
        # @param financial_account_token [String] Globally unique identifier for financial account
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialAccounts::FinancialAccountsInterestTierSchedule]
        #
        # @see Lithic::Models::FinancialAccounts::InterestTierScheduleRetrieveParams
        def retrieve(effective_date, params)
          parsed, options = Lithic::FinancialAccounts::InterestTierScheduleRetrieveParams.dump_request(params)
          financial_account_token =
            parsed.delete(:financial_account_token) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: [
              "v1/financial_accounts/%1$s/interest_tier_schedule/%2$s",
              financial_account_token,
              effective_date
            ],
            model: Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::FinancialAccounts::InterestTierScheduleUpdateParams} for more
        # details.
        #
        # Update an existing interest tier schedule
        #
        # @overload update(effective_date, financial_account_token:, penalty_rates: nil, tier_name: nil, tier_rates: nil, request_options: {})
        #
        # @param effective_date [Date] Path param: Effective date in ISO format (YYYY-MM-DD)
        #
        # @param financial_account_token [String] Path param: Globally unique identifier for financial account
        #
        # @param penalty_rates [Object] Body param: Custom rates per category for penalties
        #
        # @param tier_name [String] Body param: Name of a tier contained in the credit product. Mutually exclusive w
        #
        # @param tier_rates [Object] Body param: Custom rates per category. Mutually exclusive with tier_name
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialAccounts::FinancialAccountsInterestTierSchedule]
        #
        # @see Lithic::Models::FinancialAccounts::InterestTierScheduleUpdateParams
        def update(effective_date, params)
          parsed, options = Lithic::FinancialAccounts::InterestTierScheduleUpdateParams.dump_request(params)
          financial_account_token =
            parsed.delete(:financial_account_token) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: [
              "v1/financial_accounts/%1$s/interest_tier_schedule/%2$s",
              financial_account_token,
              effective_date
            ],
            body: parsed,
            model: Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule,
            options: options
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
        #
        # @overload list(financial_account_token, after_date: nil, before_date: nil, for_date: nil, request_options: {})
        #
        # @param financial_account_token [String] Globally unique identifier for financial account
        #
        # @param after_date [Date] Return schedules with effective_date >= after_date (ISO format YYYY-MM-DD)
        #
        # @param before_date [Date] Return schedules with effective_date <= before_date (ISO format YYYY-MM-DD)
        #
        # @param for_date [Date] Return schedule with effective_date == for_date (ISO format YYYY-MM-DD)
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::SinglePage<Lithic::Models::FinancialAccounts::FinancialAccountsInterestTierSchedule>]
        #
        # @see Lithic::Models::FinancialAccounts::InterestTierScheduleListParams
        def list(financial_account_token, params = {})
          parsed, options = Lithic::FinancialAccounts::InterestTierScheduleListParams.dump_request(params)
          query = Lithic::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/interest_tier_schedule", financial_account_token],
            query: query,
            page: Lithic::Internal::SinglePage,
            model: Lithic::FinancialAccounts::FinancialAccountsInterestTierSchedule,
            options: options
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
        #
        # @overload delete(effective_date, financial_account_token:, request_options: {})
        #
        # @param effective_date [Date] Effective date in ISO format (YYYY-MM-DD)
        #
        # @param financial_account_token [String] Globally unique identifier for financial account
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::FinancialAccounts::InterestTierScheduleDeleteParams
        def delete(effective_date, params)
          parsed, options = Lithic::FinancialAccounts::InterestTierScheduleDeleteParams.dump_request(params)
          financial_account_token =
            parsed.delete(:financial_account_token) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: [
              "v1/financial_accounts/%1$s/interest_tier_schedule/%2$s",
              financial_account_token,
              effective_date
            ],
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
