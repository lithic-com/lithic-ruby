# typed: strong

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
        sig do
          params(
            financial_account_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(Lithic::FinancialAccounts::FinancialAccountsOpenToBuy)
        end
        def retrieve(
          # Globally unique identifier for the Security Account to price
          financial_account_token,
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
