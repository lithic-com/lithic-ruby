# typed: strong

module Lithic
  module Models
    # Spend limit duration values:
    #
    # - `ANNUALLY` - Card will authorize transactions up to spend limit for the
    #   trailing year.
    # - `FOREVER` - Card will authorize only up to spend limit for the entire lifetime
    #   of the card.
    # - `MONTHLY` - Card will authorize transactions up to spend limit for the
    #   trailing month. To support recurring monthly payments, which can occur on
    #   different day every month, the time window we consider for monthly velocity
    #   starts 6 days after the current calendar date one month prior.
    # - `TRANSACTION` - Card will authorize multiple transactions if each individual
    #   transaction is under the spend limit.
    module SpendLimitDuration
      extend Lithic::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::SpendLimitDuration) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ANNUALLY = T.let(:ANNUALLY, Lithic::SpendLimitDuration::TaggedSymbol)
      FOREVER = T.let(:FOREVER, Lithic::SpendLimitDuration::TaggedSymbol)
      MONTHLY = T.let(:MONTHLY, Lithic::SpendLimitDuration::TaggedSymbol)
      TRANSACTION =
        T.let(:TRANSACTION, Lithic::SpendLimitDuration::TaggedSymbol)

      sig do
        override.returns(T::Array[Lithic::SpendLimitDuration::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
