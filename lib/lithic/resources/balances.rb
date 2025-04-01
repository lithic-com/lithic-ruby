# frozen_string_literal: true

module Lithic
  module Resources
    class Balances
      # Get the balances for a program, business, or a given end-user account
      #
      # @overload list(account_token: nil, balance_date: nil, business_account_token: nil, financial_account_type: nil, request_options: {})
      #
      # @param account_token [String]
      # @param balance_date [Time]
      # @param business_account_token [String]
      # @param financial_account_type [Symbol, Lithic::Models::BalanceListParams::FinancialAccountType]
      # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Lithic::SinglePage<Lithic::Models::Balance>]
      #
      # @see Lithic::Models::BalanceListParams
      def list(params = {})
        parsed, options = Lithic::Models::BalanceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/balances",
          query: parsed,
          page: Lithic::SinglePage,
          model: Lithic::Models::Balance,
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
