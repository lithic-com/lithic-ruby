# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AggregateBalances#list
    class AggregateBalanceListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute financial_account_type
      #   Get the aggregate balance for a given Financial Account type.
      #
      #   @return [Symbol, Lithic::Models::AggregateBalanceListParams::FinancialAccountType, nil]
      optional :financial_account_type,
               enum: -> { Lithic::Models::AggregateBalanceListParams::FinancialAccountType }

      # @!method initialize(financial_account_type: nil, request_options: {})
      #   @param financial_account_type [Symbol, Lithic::Models::AggregateBalanceListParams::FinancialAccountType]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Get the aggregate balance for a given Financial Account type.
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
