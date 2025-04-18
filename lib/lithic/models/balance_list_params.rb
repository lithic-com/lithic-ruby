# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Balances#list
    class BalanceListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_token
      #   List balances for all financial accounts of a given account_token.
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!attribute balance_date
      #   UTC date and time of the balances to retrieve. Defaults to latest available
      #   balances
      #
      #   @return [Time, nil]
      optional :balance_date, Time

      # @!attribute business_account_token
      #   List balances for all financial accounts of a given business_account_token.
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!attribute financial_account_type
      #   List balances for a given Financial Account type.
      #
      #   @return [Symbol, Lithic::Models::BalanceListParams::FinancialAccountType, nil]
      optional :financial_account_type, enum: -> { Lithic::Models::BalanceListParams::FinancialAccountType }

      # @!method initialize(account_token: nil, balance_date: nil, business_account_token: nil, financial_account_type: nil, request_options: {})
      #   @param account_token [String]
      #   @param balance_date [Time]
      #   @param business_account_token [String]
      #   @param financial_account_type [Symbol, Lithic::Models::BalanceListParams::FinancialAccountType]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # List balances for a given Financial Account type.
      module FinancialAccountType
        extend Lithic::Internal::Type::Enum

        ISSUING = :ISSUING
        OPERATING = :OPERATING
        RESERVE = :RESERVE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
