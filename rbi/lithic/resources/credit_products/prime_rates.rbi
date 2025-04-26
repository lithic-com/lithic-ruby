# typed: strong

module Lithic
  module Resources
    class CreditProducts
      class PrimeRates
        # Post Credit Product Prime Rate
        sig do
          params(
            credit_product_token: String,
            effective_date: Date,
            rate: String,
            request_options: Lithic::RequestOpts
          )
            .void
        end
        def create(
          # Globally unique identifier for credit products.
          credit_product_token,
          # Date the rate goes into effect
          effective_date:,
          # The rate in decimal format
          rate:,
          request_options: {}
        ); end
        # Get Credit Product Prime Rates
        sig do
          params(
            credit_product_token: String,
            ending_before: Date,
            starting_after: Date,
            request_options: Lithic::RequestOpts
          )
            .returns(Lithic::Models::CreditProducts::PrimeRateRetrieveResponse)
        end
        def retrieve(
          # Globally unique identifier for credit products.
          credit_product_token,
          # The effective date that the prime rates ends before
          ending_before: nil,
          # The effective date that the prime rate starts after
          starting_after: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
