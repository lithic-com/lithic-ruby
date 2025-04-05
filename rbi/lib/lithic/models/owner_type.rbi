# typed: strong

module Lithic
  module Models
    module OwnerType
      extend Lithic::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::OwnerType) }
      OrSymbol = T.type_alias { T.any(Symbol, String, Lithic::Models::OwnerType::TaggedSymbol) }

      INDIVIDUAL = T.let(:INDIVIDUAL, Lithic::Models::OwnerType::TaggedSymbol)
      BUSINESS = T.let(:BUSINESS, Lithic::Models::OwnerType::TaggedSymbol)

      sig { override.returns(T::Array[Lithic::Models::OwnerType::TaggedSymbol]) }
      def self.values; end
    end
  end
end
