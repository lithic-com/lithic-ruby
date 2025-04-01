# frozen_string_literal: true

module Lithic
  module Resources
    class CreditProducts
      class PrimeRates
        # Post Credit Product Prime Rate
        #
        # @overload create(credit_product_token, effective_date:, rate:, request_options: {})
        #
        # @param credit_product_token [String]
        # @param effective_date [Date]
        # @param rate [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Lithic::Models::CreditProducts::PrimeRateCreateParams
        def create(credit_product_token, params)
          parsed, options = Lithic::Models::CreditProducts::PrimeRateCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/credit_products/%1$s/prime_rates", credit_product_token],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Get Credit Product Prime Rates
        #
        # @overload retrieve(credit_product_token, ending_before: nil, starting_after: nil, request_options: {})
        #
        # @param credit_product_token [String]
        # @param ending_before [Date]
        # @param starting_after [Date]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Models::CreditProducts::PrimeRateRetrieveResponse]
        #
        # @see Lithic::Models::CreditProducts::PrimeRateRetrieveParams
        def retrieve(credit_product_token, params = {})
          parsed, options = Lithic::Models::CreditProducts::PrimeRateRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/credit_products/%1$s/prime_rates", credit_product_token],
            query: parsed,
            model: Lithic::Models::CreditProducts::PrimeRateRetrieveResponse,
            options: options
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
