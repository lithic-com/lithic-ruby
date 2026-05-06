# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      module CardTransactionUpdateAction
        extend Lithic::Internal::Type::Union

        variant -> { Lithic::AuthRules::CardTransactionUpdateAction::TagAction }

        variant -> { Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction }

        class TagAction < Lithic::Internal::Type::BaseModel
          # @!attribute key
          #   The key of the tag to apply to the transaction
          #
          #   @return [String]
          required :key, String

          # @!attribute type
          #   Tag the transaction with key-value metadata
          #
          #   @return [Symbol, Lithic::Models::AuthRules::CardTransactionUpdateAction::TagAction::Type]
          required :type, enum: -> { Lithic::AuthRules::CardTransactionUpdateAction::TagAction::Type }

          # @!attribute value
          #   The value of the tag to apply to the transaction
          #
          #   @return [String]
          required :value, String

          # @!method initialize(key:, type:, value:)
          #   @param key [String] The key of the tag to apply to the transaction
          #
          #   @param type [Symbol, Lithic::Models::AuthRules::CardTransactionUpdateAction::TagAction::Type] Tag the transaction with key-value metadata
          #
          #   @param value [String] The value of the tag to apply to the transaction

          # Tag the transaction with key-value metadata
          #
          # @see Lithic::Models::AuthRules::CardTransactionUpdateAction::TagAction#type
          module Type
            extend Lithic::Internal::Type::Enum

            TAG = :TAG

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class CreateCaseAction < Lithic::Internal::Type::BaseModel
          # @!attribute queue_token
          #   The token of the queue to create the case in
          #
          #   @return [String]
          required :queue_token, String

          # @!attribute scope
          #   The scope of the case to create
          #
          #   @return [Symbol, Lithic::Models::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Scope]
          required :scope, enum: -> { Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Scope }

          # @!attribute type
          #   Create a case for the transaction
          #
          #   @return [Symbol, Lithic::Models::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Type]
          required :type, enum: -> { Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Type }

          # @!method initialize(queue_token:, scope:, type:)
          #   @param queue_token [String] The token of the queue to create the case in
          #
          #   @param scope [Symbol, Lithic::Models::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Scope] The scope of the case to create
          #
          #   @param type [Symbol, Lithic::Models::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Type] Create a case for the transaction

          # The scope of the case to create
          #
          # @see Lithic::Models::AuthRules::CardTransactionUpdateAction::CreateCaseAction#scope
          module Scope
            extend Lithic::Internal::Type::Enum

            CARD = :CARD
            ACCOUNT = :ACCOUNT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Create a case for the transaction
          #
          # @see Lithic::Models::AuthRules::CardTransactionUpdateAction::CreateCaseAction#type
          module Type
            extend Lithic::Internal::Type::Enum

            CREATE_CASE = :CREATE_CASE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Lithic::Models::AuthRules::CardTransactionUpdateAction::TagAction, Lithic::Models::AuthRules::CardTransactionUpdateAction::CreateCaseAction)]
      end
    end
  end
end
