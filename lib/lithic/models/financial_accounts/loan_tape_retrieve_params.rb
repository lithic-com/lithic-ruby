# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      class LoanTapeRetrieveParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # @!attribute financial_account_token
        #   Globally unique identifier for financial account.
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
