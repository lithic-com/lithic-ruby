# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::LoanTapes#retrieve
      class LoanTapeRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute financial_account_token
        #   Globally unique identifier for financial account.
        #
        #   @return [String]
        required :financial_account_token, String

        # @!method initialize(financial_account_token:, request_options: {})
        #   @param financial_account_token [String] Globally unique identifier for financial account.
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
