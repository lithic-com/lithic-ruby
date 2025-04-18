# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::Statements#retrieve
      class StatementRetrieveParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute financial_account_token
        #   Globally unique identifier for financial account.
        #
        #   @return [String]
        required :financial_account_token, String

        # @!method initialize(financial_account_token:, request_options: {})
        #   @param financial_account_token [String]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
