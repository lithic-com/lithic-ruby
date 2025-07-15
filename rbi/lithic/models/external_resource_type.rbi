# typed: strong

module Lithic
  module Models
    # Type of external resource associated with the management operation
    module ExternalResourceType
      extend Lithic::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Lithic::ExternalResourceType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      STATEMENT = T.let(:STATEMENT, Lithic::ExternalResourceType::TaggedSymbol)
      COLLECTION =
        T.let(:COLLECTION, Lithic::ExternalResourceType::TaggedSymbol)
      DISPUTE = T.let(:DISPUTE, Lithic::ExternalResourceType::TaggedSymbol)
      UNKNOWN = T.let(:UNKNOWN, Lithic::ExternalResourceType::TaggedSymbol)

      sig do
        override.returns(T::Array[Lithic::ExternalResourceType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
