# frozen_string_literal: true

module Lithic
  module Models
    class AggregateBalanceListParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] financial_account_type
      #   Get the aggregate balance for a given Financial Account type.
      #
      #   @return [Symbol, Lithic::Models::AggregateBalanceListParams::FinancialAccountType, nil]
      optional :financial_account_type,
               enum: -> { Lithic::Models::AggregateBalanceListParams::FinancialAccountType }

      # @!parse
      #   # @return [Symbol, Lithic::Models::AggregateBalanceListParams::FinancialAccountType]
      #   attr_writer :financial_account_type

      # @!parse
      #   # @param financial_account_type [Symbol, Lithic::Models::AggregateBalanceListParams::FinancialAccountType]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(financial_account_type: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Get the aggregate balance for a given Financial Account type.
      module FinancialAccountType
        extend Lithic::Enum

        ISSUING = :ISSUING
        OPERATING = :OPERATING
        RESERVE = :RESERVE

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
