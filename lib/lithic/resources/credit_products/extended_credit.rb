# frozen_string_literal: true

module Lithic
  module Resources
    class CreditProducts
      class ExtendedCredit
        # Get the extended credit for a given credit product under a program
        #
        # @overload retrieve(credit_product_token, request_options: {})
        #
        # @param credit_product_token [String] Credit Product Token
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::CreditProducts::CreditProductsExtendedCredit]
        #
        # @see Lithic::Models::CreditProducts::ExtendedCreditRetrieveParams
        def retrieve(credit_product_token, params = {})
          @client.request(
            method: :get,
            path: ["v1/credit_products/%1$s/extended_credit", credit_product_token],
            model: Lithic::CreditProducts::CreditProductsExtendedCredit,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
