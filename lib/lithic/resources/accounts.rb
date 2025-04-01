# frozen_string_literal: true

module Lithic
  module Resources
    class Accounts
      # Get account configuration such as spend limits.
      #
      # @param account_token [String] Globally unique identifier for account.
      #
      # @param params [Lithic::Models::AccountRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Account]
      def retrieve(account_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/accounts/%1$s", account_token],
          model: Lithic::Models::Account,
          options: params[:request_options]
        )
      end

      # Update account configuration such as state or spend limits. Can only be run on
      #   accounts that are part of the program managed by this API key. Accounts that are
      #   in the `PAUSED` state will not be able to transact or create new cards.
      #
      # @param account_token [String] Globally unique identifier for account.
      #
      # @param params [Lithic::Models::AccountUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :daily_spend_limit Amount (in cents) for the account's daily spend limit (e.g. 100000 would be a
      #     $1,000 limit). By default the daily spend limit is set to $1,250.
      #
      #   @option params [Integer] :lifetime_spend_limit Amount (in cents) for the account's lifetime spend limit (e.g. 100000 would be a
      #     $1,000 limit). Once this limit is reached, no transactions will be accepted on
      #     any card created for this account until the limit is updated. Note that a spend
      #     limit of 0 is effectively no limit, and should only be used to reset or remove a
      #     prior limit. Only a limit of 1 or above will result in declined transactions due
      #     to checks against the account limit. This behavior differs from the daily spend
      #     limit and the monthly spend limit.
      #
      #   @option params [Integer] :monthly_spend_limit Amount (in cents) for the account's monthly spend limit (e.g. 100000 would be a
      #     $1,000 limit). By default the monthly spend limit is set to $5,000.
      #
      #   @option params [Symbol, Lithic::Models::AccountUpdateParams::State] :state Account states.
      #
      #   @option params [Lithic::Models::AccountUpdateParams::VerificationAddress] :verification_address Address used during Address Verification Service (AVS) checks during
      #     transactions if enabled via Auth Rules. This field is deprecated as AVS checks
      #     are no longer supported by Authorization Rules. The field will be removed from
      #     the schema in a future release.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::Account]
      def update(account_token, params = {})
        parsed, options = Lithic::Models::AccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/accounts/%1$s", account_token],
          body: parsed,
          model: Lithic::Models::Account,
          options: options
        )
      end

      # List account configurations.
      #
      # @param params [Lithic::Models::AccountListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :begin_ Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [Time] :end_ Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
      #
      #   @option params [Integer] :page_size Page size (for pagination).
      #
      #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::CursorPage<Lithic::Models::Account>]
      def list(params = {})
        parsed, options = Lithic::Models::AccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/accounts",
          query: parsed,
          page: Lithic::CursorPage,
          model: Lithic::Models::Account,
          options: options
        )
      end

      # Get an Account's available spend limits, which is based on the spend limit
      #   configured on the Account and the amount already spent over the spend limit's
      #   duration. For example, if the Account has a daily spend limit of $1000
      #   configured, and has spent $600 in the last 24 hours, the available spend limit
      #   returned would be $400.
      #
      # @param account_token [String] Globally unique identifier for account.
      #
      # @param params [Lithic::Models::AccountRetrieveSpendLimitsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Lithic::Models::AccountSpendLimits]
      def retrieve_spend_limits(account_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/accounts/%1$s/spend_limits", account_token],
          model: Lithic::Models::AccountSpendLimits,
          options: params[:request_options]
        )
      end

      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
