# frozen_string_literal: true

module Lithic
  module Resources
    class CreditProducts
      class ExtendedCredit
        # Get the extended credit for a given credit product under a program
        #
        # @param credit_product_token [String] Credit Product Token
        #
        # @param params [Lithic::Models::CreditProducts::ExtendedCreditRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::CreditProducts::CreditProductsExtendedCredit]
        def retrieve(credit_product_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/credit_products/%0s/extended_credit", credit_product_token],
            model: Lithic::Models::CreditProducts::CreditProductsExtendedCredit,
            options: params[:request_options]
          )
        end

        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
