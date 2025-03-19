# frozen_string_literal: true

module Lithic
  module Resources
    class CreditProducts
      class PrimeRates
        # Post Credit Product Prime Rate
        #
        # @param credit_product_token [String] Globally unique identifier for credit products.
        #
        # @param params [Lithic::Models::CreditProducts::PrimeRateCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Date] :effective_date Date the rate goes into effect
        #
        #   @option params [String] :rate The rate in decimal format
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def create(credit_product_token, params)
          parsed, options = Lithic::Models::CreditProducts::PrimeRateCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/credit_products/%0s/prime_rates", credit_product_token],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Get Credit Product Prime Rates
        #
        # @param credit_product_token [String] Globally unique identifier for credit products.
        #
        # @param params [Lithic::Models::CreditProducts::PrimeRateRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Date] :ending_before The effective date that the prime rates ends before
        #
        #   @option params [Date] :starting_after The effective date that the prime rate starts after
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::CreditProducts::PrimeRateRetrieveResponse]
        def retrieve(credit_product_token, params = {})
          parsed, options = Lithic::Models::CreditProducts::PrimeRateRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/credit_products/%0s/prime_rates", credit_product_token],
            query: parsed,
            model: Lithic::Models::CreditProducts::PrimeRateRetrieveResponse,
            options: options
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
