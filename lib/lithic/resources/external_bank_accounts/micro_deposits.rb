# frozen_string_literal: true

module Lithic
  module Resources
    class ExternalBankAccounts
      class MicroDeposits
        # Verify the external bank account by providing the micro deposit amounts.
        #
        # @param external_bank_account_token [String]
        #
        # @param params [Lithic::Models::ExternalBankAccounts::MicroDepositCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<Integer>] :micro_deposits
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse]
        #
        # @see Lithic::Models::ExternalBankAccounts::MicroDepositCreateParams
        def create(external_bank_account_token, params)
          parsed, options = Lithic::Models::ExternalBankAccounts::MicroDepositCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/external_bank_accounts/%1$s/micro_deposits", external_bank_account_token],
            body: parsed,
            model: Lithic::Models::ExternalBankAccounts::MicroDepositCreateResponse,
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
