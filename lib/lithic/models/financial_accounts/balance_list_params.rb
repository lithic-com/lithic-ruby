# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::Balances#list
      class BalanceListParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute [r] balance_date
        #   UTC date of the balance to retrieve. Defaults to latest available balance
        #
        #   @return [Time, nil]
        optional :balance_date, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :balance_date

        # @!attribute [r] last_transaction_event_token
        #   Balance after a given financial event occured. For example, passing the
        #     event_token of a $5 CARD_CLEARING financial event will return a balance
        #     decreased by $5
        #
        #   @return [String, nil]
        optional :last_transaction_event_token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :last_transaction_event_token

        # @!parse
        #   # @param balance_date [Time]
        #   # @param last_transaction_event_token [String]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(balance_date: nil, last_transaction_event_token: nil, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
      end
    end
  end
end
