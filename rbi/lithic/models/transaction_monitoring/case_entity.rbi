# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      class CaseEntity < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::TransactionMonitoring::CaseEntity,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the associated entity
        sig { returns(String) }
        attr_accessor :entity_token

        # The type of entity a case is associated with:
        #
        # - `CARD` - The case is associated with a card
        # - `ACCOUNT` - The case is associated with an account
        sig do
          returns(
            Lithic::TransactionMonitoring::CaseEntity::EntityType::TaggedSymbol
          )
        end
        attr_accessor :entity_type

        # The entity a case is associated with
        sig do
          params(
            entity_token: String,
            entity_type:
              Lithic::TransactionMonitoring::CaseEntity::EntityType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the associated entity
          entity_token:,
          # The type of entity a case is associated with:
          #
          # - `CARD` - The case is associated with a card
          # - `ACCOUNT` - The case is associated with an account
          entity_type:
        )
        end

        sig do
          override.returns(
            {
              entity_token: String,
              entity_type:
                Lithic::TransactionMonitoring::CaseEntity::EntityType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of entity a case is associated with:
        #
        # - `CARD` - The case is associated with a card
        # - `ACCOUNT` - The case is associated with an account
        module EntityType
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::TransactionMonitoring::CaseEntity::EntityType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :CARD,
              Lithic::TransactionMonitoring::CaseEntity::EntityType::TaggedSymbol
            )
          ACCOUNT =
            T.let(
              :ACCOUNT,
              Lithic::TransactionMonitoring::CaseEntity::EntityType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::TransactionMonitoring::CaseEntity::EntityType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
