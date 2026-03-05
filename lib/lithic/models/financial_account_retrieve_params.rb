# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FinancialAccounts#retrieve
    class FinancialAccountRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute financial_account_token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!method initialize(financial_account_token:, request_options: {})
      #   @param financial_account_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
