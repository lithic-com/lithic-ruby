# typed: strong

module Lithic
  module Models
    class PaymentCreateResponse < Lithic::Models::Payment
      # Balance
      sig { returns(T.nilable(Lithic::Models::Balance)) }
      def balance
      end

      sig do
        params(_: T.any(Lithic::Models::Balance, Lithic::Util::AnyHash))
          .returns(T.any(Lithic::Models::Balance, Lithic::Util::AnyHash))
      end
      def balance=(_)
      end

      sig { params(balance: T.any(Lithic::Models::Balance, Lithic::Util::AnyHash)).returns(T.attached_class) }
      def self.new(balance: nil)
      end

      sig { override.returns({balance: Lithic::Models::Balance}) }
      def to_hash
      end
    end
  end
end
