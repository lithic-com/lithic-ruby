# frozen_string_literal: true

module Lithic
  module Models
    module CreditProducts
      # @see Lithic::Resources::CreditProducts::ExtendedCredit#retrieve
      class ExtendedCreditRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute credit_product_token
        #
        #   @return [String]
        required :credit_product_token, String

        # @!method initialize(credit_product_token:, request_options: {})
        #   @param credit_product_token [String]
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
