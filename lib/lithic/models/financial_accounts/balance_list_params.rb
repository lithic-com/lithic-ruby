# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::Balances#list
      class BalanceListParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute balance_date
        #   UTC date of the balance to retrieve. Defaults to latest available balance
        #
        #   @return [Time, nil]
        optional :balance_date, Time

        # @!attribute last_transaction_event_token
        #   Balance after a given financial event occured. For example, passing the
        #   event_token of a $5 CARD_CLEARING financial event will return a balance
        #   decreased by $5
        #
        #   @return [String, nil]
        optional :last_transaction_event_token, String

        # @!method initialize(balance_date: nil, last_transaction_event_token: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::FinancialAccounts::BalanceListParams} for more details.
        #
        #   @param balance_date [Time] UTC date of the balance to retrieve. Defaults to latest available balance
        #
        #   @param last_transaction_event_token [String] Balance after a given financial event occured.
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
