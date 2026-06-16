# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#route
    class TransactionRouteParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute transaction_token
      #
      #   @return [String]
      required :transaction_token, String

      # @!attribute financial_account_token
      #   The token of the financial account to route the transaction to.
      #
      #   @return [String]
      required :financial_account_token, String

      # @!method initialize(transaction_token:, financial_account_token:, request_options: {})
      #   @param transaction_token [String]
      #
      #   @param financial_account_token [String] The token of the financial account to route the transaction to.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
