# typed: strong

module Lithic
  module Models
    class PaymentRetryResponse < Lithic::Models::Payment
      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # Balance
      sig { returns(T.nilable(Lithic::Balance)) }
      attr_reader :balance

      sig { params(balance: Lithic::Balance::OrHash).void }
      attr_writer :balance

      sig { params(balance: Lithic::Balance::OrHash).returns(T.attached_class) }
      def self.new(
        # Balance
        balance: nil
      )
      end

      sig { override.returns({ balance: Lithic::Balance }) }
      def to_hash
      end
    end
  end
end
