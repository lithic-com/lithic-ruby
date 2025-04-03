# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::FinancialTransactions#retrieve
      class FinancialTransactionRetrieveParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute financial_account_token
        #
        #   @return [String]
        required :financial_account_token, String

        # @!parse
        #   # @param financial_account_token [String]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(financial_account_token:, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
