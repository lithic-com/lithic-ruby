# frozen_string_literal: true

module Lithic
  module Resources
    class FinancialAccounts
      class LoanTapeConfiguration
        # Get the loan tape configuration for a given financial account.
        #
        # @overload retrieve(financial_account_token, request_options: {})
        #
        # @param financial_account_token [String] Globally unique identifier for financial account.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::FinancialAccounts::FinancialAccountsLoanTapeConfiguration]
        #
        # @see Lithic::Models::FinancialAccounts::LoanTapeConfigurationRetrieveParams
        def retrieve(financial_account_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/financial_accounts/%1$s/loan_tape_configuration", financial_account_token],
            model: Lithic::FinancialAccounts::FinancialAccountsLoanTapeConfiguration,
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
