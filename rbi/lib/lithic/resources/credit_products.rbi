# typed: strong

module Lithic
  module Resources
    class CreditProducts
      sig { returns(Lithic::Resources::CreditProducts::ExtendedCredit) }
      attr_reader :extended_credit

      sig { returns(Lithic::Resources::CreditProducts::PrimeRates) }
      attr_reader :prime_rates

      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
