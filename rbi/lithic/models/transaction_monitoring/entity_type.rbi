# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      # The type of entity associated with an account holder
      module EntityType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::TransactionMonitoring::EntityType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BENEFICIAL_OWNER_INDIVIDUAL =
          T.let(
            :BENEFICIAL_OWNER_INDIVIDUAL,
            Lithic::TransactionMonitoring::EntityType::TaggedSymbol
          )
        CONTROL_PERSON =
          T.let(
            :CONTROL_PERSON,
            Lithic::TransactionMonitoring::EntityType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::TransactionMonitoring::EntityType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
