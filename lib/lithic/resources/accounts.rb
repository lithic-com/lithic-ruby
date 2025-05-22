# frozen_string_literal: true

module Lithic
  module Resources
    class Accounts
      # Get account configuration such as spend limits.
      #
      # @overload retrieve(account_token, request_options: {})
      #
      # @param account_token [String] Globally unique identifier for account.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Account]
      #
      # @see Lithic::Models::AccountRetrieveParams
      def retrieve(account_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/accounts/%1$s", account_token],
          model: Lithic::Account,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::AccountUpdateParams} for more details.
      #
      # Update account configuration such as state or spend limits. Can only be run on
      # accounts that are part of the program managed by this API key. Accounts that are
      # in the `PAUSED` state will not be able to transact or create new cards.
      #
      # @overload update(account_token, daily_spend_limit: nil, lifetime_spend_limit: nil, monthly_spend_limit: nil, state: nil, verification_address: nil, request_options: {})
      #
      # @param account_token [String] Globally unique identifier for account.
      #
      # @param daily_spend_limit [Integer] Amount (in cents) for the account's daily spend limit (e.g. 100000 would be a $1
      #
      # @param lifetime_spend_limit [Integer] Amount (in cents) for the account's lifetime spend limit (e.g. 100000 would be a
      #
      # @param monthly_spend_limit [Integer] Amount (in cents) for the account's monthly spend limit (e.g. 100000 would be a
      #
      # @param state [Symbol, Lithic::Models::AccountUpdateParams::State] Account states.
      #
      # @param verification_address [Lithic::Models::AccountUpdateParams::VerificationAddress] Address used during Address Verification Service (AVS) checks during transaction
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Account]
      #
      # @see Lithic::Models::AccountUpdateParams
      def update(account_token, params = {})
        parsed, options = Lithic::AccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/accounts/%1$s", account_token],
          body: parsed,
          model: Lithic::Account,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Lithic::Models::AccountListParams} for more details.
      #
      # List account configurations.
      #
      # @overload list(begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
      #
      # @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      # @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      # @param page_size [Integer] Page size (for pagination).
      #
      # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::CursorPage<Lithic::Models::Account>]
      #
      # @see Lithic::Models::AccountListParams
      def list(params = {})
        parsed, options = Lithic::AccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/accounts",
          query: parsed.transform_keys(begin_: "begin", end_: "end"),
          page: Lithic::Internal::CursorPage,
          model: Lithic::Account,
          options: options
        )
      end

      # Get an Account's available spend limits, which is based on the spend limit
      # configured on the Account and the amount already spent over the spend limit's
      # duration. For example, if the Account has a daily spend limit of $1000
      # configured, and has spent $600 in the last 24 hours, the available spend limit
      # returned would be $400.
      #
      # @overload retrieve_spend_limits(account_token, request_options: {})
      #
      # @param account_token [String] Globally unique identifier for account.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::AccountSpendLimits]
      #
      # @see Lithic::Models::AccountRetrieveSpendLimitsParams
      def retrieve_spend_limits(account_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/accounts/%1$s/spend_limits", account_token],
          model: Lithic::AccountSpendLimits,
          options: params[:request_options]
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
