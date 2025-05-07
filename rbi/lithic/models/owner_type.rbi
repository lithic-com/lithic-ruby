# typed: strong

module Lithic
  module Models
    module OwnerType
      extend Lithic::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::OwnerType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INDIVIDUAL = T.let(:INDIVIDUAL, Lithic::OwnerType::TaggedSymbol)
      BUSINESS = T.let(:BUSINESS, Lithic::OwnerType::TaggedSymbol)

      sig { override.returns(T::Array[Lithic::OwnerType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
