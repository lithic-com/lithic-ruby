# frozen_string_literal: true

module Lithic
  module Resources
    class Balances
      # Some parameter documentations has been truncated, see
      # {Lithic::Models::BalanceListParams} for more details.
      #
      # Get the balances for a program, business, or a given end-user account
      #
      # @overload list(account_token: nil, balance_date: nil, business_account_token: nil, financial_account_type: nil, request_options: {})
      #
      # @param account_token [String] List balances for all financial accounts of a given account_token.
      #
      # @param balance_date [Time] UTC date and time of the balances to retrieve. Defaults to latest available bala
      #
      # @param business_account_token [String] List balances for all financial accounts of a given business_account_token.
      #
      # @param financial_account_type [Symbol, Lithic::BalanceListParams::FinancialAccountType] List balances for a given Financial Account type.
      #
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::Internal::SinglePage<Lithic::Balance>]
      #
      # @see Lithic::Models::BalanceListParams
      def list(params = {})
        parsed, options = Lithic::BalanceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/balances",
          query: parsed,
          page: Lithic::Internal::SinglePage,
          model: Lithic::Balance,
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
