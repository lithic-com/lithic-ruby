# frozen_string_literal: true

module Lithic
  module Resources
    class CreditProducts
      # @return [Lithic::Resources::CreditProducts::ExtendedCredit]
      attr_reader :extended_credit

      # @return [Lithic::Resources::CreditProducts::PrimeRates]
      attr_reader :prime_rates

      # @param client [Lithic::Client]
      def initialize(client:)
        @client = client
        @extended_credit = Lithic::Resources::CreditProducts::ExtendedCredit.new(client: client)
        @prime_rates = Lithic::Resources::CreditProducts::PrimeRates.new(client: client)
      end
    end
  end
end
