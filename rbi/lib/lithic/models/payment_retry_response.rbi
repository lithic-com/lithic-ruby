# typed: strong

module Lithic
  module Models
    class PaymentRetryResponse < Lithic::Models::Payment
      # Balance
      sig { returns(T.nilable(Lithic::Models::Balance)) }
      def balance
      end

      sig { params(_: Lithic::Models::Balance).returns(Lithic::Models::Balance) }
      def balance=(_)
      end

      sig { params(balance: Lithic::Models::Balance).returns(T.attached_class) }
      def self.new(balance: nil)
      end

      sig { override.returns({balance: Lithic::Models::Balance}) }
      def to_hash
      end
    end
  end
end
