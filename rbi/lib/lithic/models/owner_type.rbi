# typed: strong

module Lithic
  module Models
    module OwnerType
      extend Lithic::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::OwnerType) }
      OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::OwnerType::TaggedSymbol) }

      INDIVIDUAL = T.let(:INDIVIDUAL, Lithic::Models::OwnerType::TaggedSymbol)
      BUSINESS = T.let(:BUSINESS, Lithic::Models::OwnerType::TaggedSymbol)

      class << self
        sig { override.returns(T::Array[Lithic::Models::OwnerType::TaggedSymbol]) }
        def values
        end
      end
    end
  end
end
