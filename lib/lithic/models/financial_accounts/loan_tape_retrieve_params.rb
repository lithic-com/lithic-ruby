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

        # @!attribute loan_tape_token
        #   Globally unique identifier for loan tape.
        #
        #   @return [String]
        required :loan_tape_token, String

        # @!method initialize(financial_account_token:, loan_tape_token:, request_options: {})
        #   @param financial_account_token [String] Globally unique identifier for financial account.
        #
        #   @param loan_tape_token [String] Globally unique identifier for loan tape.
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
