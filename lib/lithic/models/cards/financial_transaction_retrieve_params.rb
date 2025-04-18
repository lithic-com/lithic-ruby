# frozen_string_literal: true

module Lithic
  module Models
    module Cards
      # @see Lithic::Resources::Cards::FinancialTransactions#retrieve
      class FinancialTransactionRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute card_token
        #
        #   @return [String]
        required :card_token, String

        # @!method initialize(card_token:, request_options: {})
        #   @param card_token [String]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
