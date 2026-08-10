# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      class CaseEntity < Lithic::Internal::Type::BaseModel
        # @!attribute entity_token
        #   Globally unique identifier for the associated entity: the card token for `CARD`,
        #   the account token for `ACCOUNT`, and the financial account token for
        #   `FINANCIAL_ACCOUNT`. Null for `PROGRAM`, which is not scoped to an individual
        #   entity
        #
        #   @return [String, nil]
        required :entity_token, String, nil?: true

        # @!attribute entity_type
        #   The type of entity a case is associated with:
        #
        #   - `CARD` - The case is associated with a card
        #   - `ACCOUNT` - The case is associated with an account
        #   - `FINANCIAL_ACCOUNT` - The case is associated with a financial account
        #   - `PROGRAM` - The case is associated with the whole program
        #
        #   @return [Symbol, Lithic::Models::TransactionMonitoring::CaseEntity::EntityType]
        required :entity_type, enum: -> { Lithic::TransactionMonitoring::CaseEntity::EntityType }

        # @!method initialize(entity_token:, entity_type:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::TransactionMonitoring::CaseEntity} for more details.
        #
        #   The entity a case is associated with
        #
        #   @param entity_token [String, nil] Globally unique identifier for the associated entity: the card token for `CARD`,
        #
        #   @param entity_type [Symbol, Lithic::Models::TransactionMonitoring::CaseEntity::EntityType] The type of entity a case is associated with:

        # The type of entity a case is associated with:
        #
        # - `CARD` - The case is associated with a card
        # - `ACCOUNT` - The case is associated with an account
        # - `FINANCIAL_ACCOUNT` - The case is associated with a financial account
        # - `PROGRAM` - The case is associated with the whole program
        #
        # @see Lithic::Models::TransactionMonitoring::CaseEntity#entity_type
        module EntityType
          extend Lithic::Internal::Type::Enum

          CARD = :CARD
          ACCOUNT = :ACCOUNT
          FINANCIAL_ACCOUNT = :FINANCIAL_ACCOUNT
          PROGRAM = :PROGRAM

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
