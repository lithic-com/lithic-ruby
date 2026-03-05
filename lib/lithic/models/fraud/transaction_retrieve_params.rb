# frozen_string_literal: true

module Lithic
  module Models
    module Fraud
      # @see Lithic::Resources::Fraud::Transactions#retrieve
      class TransactionRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute transaction_token
        #
        #   @return [String]
        required :transaction_token, String

        # @!method initialize(transaction_token:, request_options: {})
        #   @param transaction_token [String]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
