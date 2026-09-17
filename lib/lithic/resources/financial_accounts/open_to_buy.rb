# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class OpenToBuy
        # Get the funds available for card spend backed by a given Security Account, along
        # with the balances that amount is derived from.
        #
        # Open to buy is the amount Lithic authorizes card spend against. It is not a
        # stored balance, so it is recalculated on every request from the Security
        # Account, the funds held against spend Lithic has already paid out to the
        # networks on your behalf, and the spend that has not yet been collected. The
        # accounts that feed the calculation depend on your program setup, so
        # `summary.settled_funds` is `null` outside Commercial Charge.
        #
        # Supported for Commercial Charge, Dynamic Reserve, and Secured Charge programs.
        # Returns `404` if `financial_account_token` is not a Security Account you own, or
        # if your program setup does not use an open to buy calculation.
        #
        # @overload retrieve(financial_account_token, request_options: {})
        #
        # @param financial_account_token [String] Globally unique identifier for the Security Account to price
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialAccounts::FinancialAccountsOpenToBuy]
        #
        # @see Lithic::Models::FinancialAccounts::OpenToBuyRetrieveParams
        def retrieve(financial_account_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/open_to_buy", financial_account_token],
            model: Lithic::FinancialAccounts::FinancialAccountsOpenToBuy,
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
end
