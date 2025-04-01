# frozen_string_literal: true

module Lithic
  module Resources
    class Accounts
      # Get account configuration such as spend limits.
      #
      # @overload retrieve(account_token, request_options: {})
      #
      # @param account_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Account]
      #
      # @see Lithic::Models::AccountRetrieveParams
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
      # @overload update(account_token, daily_spend_limit: nil, lifetime_spend_limit: nil, monthly_spend_limit: nil, state: nil, verification_address: nil, request_options: {})
      #
      # @param account_token [String]
      # @param daily_spend_limit [Integer]
      # @param lifetime_spend_limit [Integer]
      # @param monthly_spend_limit [Integer]
      # @param state [Symbol, Lithic::Models::AccountUpdateParams::State]
      # @param verification_address [Lithic::Models::AccountUpdateParams::VerificationAddress]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::Account]
      #
      # @see Lithic::Models::AccountUpdateParams
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
      # @overload list(begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
      #
      # @param begin_ [Time]
      # @param end_ [Time]
      # @param ending_before [String]
      # @param page_size [Integer]
      # @param starting_after [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::CursorPage<Lithic::Models::Account>]
      #
      # @see Lithic::Models::AccountListParams
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
      # @overload retrieve_spend_limits(account_token, request_options: {})
      #
      # @param account_token [String]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Models::AccountSpendLimits]
      #
      # @see Lithic::Models::AccountRetrieveSpendLimitsParams
      def retrieve_spend_limits(account_token, params = {})
        @client.request(
          method: :get,
          path: ["v1/accounts/%1$s/spend_limits", account_token],
          model: Lithic::Models::AccountSpendLimits,
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
