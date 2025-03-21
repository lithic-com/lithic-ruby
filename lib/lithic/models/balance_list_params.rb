# frozen_string_literal: true

module Lithic
  module Models
    class BalanceListParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] account_token
      #   List balances for all financial accounts of a given account_token.
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_token

      # @!attribute [r] balance_date
      #   UTC date and time of the balances to retrieve. Defaults to latest available
      #     balances
      #
      #   @return [Time, nil]
      optional :balance_date, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :balance_date

      # @!attribute [r] business_account_token
      #   List balances for all financial accounts of a given business_account_token.
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :business_account_token

      # @!attribute [r] financial_account_type
      #   List balances for a given Financial Account type.
      #
      #   @return [Symbol, Lithic::Models::BalanceListParams::FinancialAccountType, nil]
      optional :financial_account_type, enum: -> { Lithic::Models::BalanceListParams::FinancialAccountType }

      # @!parse
      #   # @return [Symbol, Lithic::Models::BalanceListParams::FinancialAccountType]
      #   attr_writer :financial_account_type

      # @!parse
      #   # @param account_token [String]
      #   # @param balance_date [Time]
      #   # @param business_account_token [String]
      #   # @param financial_account_type [Symbol, Lithic::Models::BalanceListParams::FinancialAccountType]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_token: nil,
      #     balance_date: nil,
      #     business_account_token: nil,
      #     financial_account_type: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # List balances for a given Financial Account type.
      module FinancialAccountType
        extend Lithic::Enum

        ISSUING = :ISSUING
        OPERATING = :OPERATING
        RESERVE = :RESERVE

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
