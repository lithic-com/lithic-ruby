# typed: strong

module Lithic
  module Models
    module OwnerType
      extend Lithic::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::OwnerType) }
      OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::OwnerType::TaggedSymbol) }

      INDIVIDUAL = T.let(:INDIVIDUAL, Lithic::Models::OwnerType::OrSymbol)
      BUSINESS = T.let(:BUSINESS, Lithic::Models::OwnerType::OrSymbol)
    end
  end
end
