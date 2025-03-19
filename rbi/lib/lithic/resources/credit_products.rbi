# typed: strong

module Lithic
  module Resources
    class CreditProducts
      sig { returns(Lithic::Resources::CreditProducts::ExtendedCredit) }
      def extended_credit
      end

      sig { returns(Lithic::Resources::CreditProducts::PrimeRates) }
      def prime_rates
      end

      sig { params(client: Lithic::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
