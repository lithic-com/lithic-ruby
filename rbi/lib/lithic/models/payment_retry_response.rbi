# typed: strong

module Lithic
  module Models
    class PaymentRetryResponse < Lithic::Models::Payment
      # Balance
      sig { returns(T.nilable(Lithic::Models::Balance)) }
      attr_reader :balance

      sig { params(balance: T.any(Lithic::Models::Balance, Lithic::Internal::AnyHash)).void }
      attr_writer :balance

      sig { params(balance: T.any(Lithic::Models::Balance, Lithic::Internal::AnyHash)).returns(T.attached_class) }
      def self.new(balance: nil)
      end

      sig { override.returns({balance: Lithic::Models::Balance}) }
      def to_hash
      end
    end
  end
end
