# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      module ACHPaymentUpdateAction
        extend Lithic::Internal::Type::Union

        variant -> { Lithic::AuthRules::ACHPaymentUpdateAction::TagAction }

        variant -> { Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction }

        class TagAction < Lithic::Internal::Type::BaseModel
          # @!attribute key
          #   The key of the tag to apply to the payment
          #
          #   @return [String]
          required :key, String

          # @!attribute type
          #   Tag the payment with key-value metadata
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ACHPaymentUpdateAction::TagAction::Type]
          required :type, enum: -> { Lithic::AuthRules::ACHPaymentUpdateAction::TagAction::Type }

          # @!attribute value
          #   The value of the tag to apply to the payment
          #
          #   @return [String]
          required :value, String

          # @!method initialize(key:, type:, value:)
          #   @param key [String] The key of the tag to apply to the payment
          #
          #   @param type [Symbol, Lithic::Models::AuthRules::ACHPaymentUpdateAction::TagAction::Type] Tag the payment with key-value metadata
          #
          #   @param value [String] The value of the tag to apply to the payment

          # Tag the payment with key-value metadata
          #
          # @see Lithic::Models::AuthRules::ACHPaymentUpdateAction::TagAction#type
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
          #   @return [Symbol, Lithic::Models::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Scope]
          required :scope, enum: -> { Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Scope }

          # @!attribute type
          #   Create a case for the payment
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Type]
          required :type, enum: -> { Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Type }

          # @!method initialize(queue_token:, scope:, type:)
          #   @param queue_token [String] The token of the queue to create the case in
          #
          #   @param scope [Symbol, Lithic::Models::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Scope] The scope of the case to create
          #
          #   @param type [Symbol, Lithic::Models::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Type] Create a case for the payment

          # The scope of the case to create
          #
          # @see Lithic::Models::AuthRules::ACHPaymentUpdateAction::CreateCaseAction#scope
          module Scope
            extend Lithic::Internal::Type::Enum

            FINANCIAL_ACCOUNT = :FINANCIAL_ACCOUNT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Create a case for the payment
          #
          # @see Lithic::Models::AuthRules::ACHPaymentUpdateAction::CreateCaseAction#type
          module Type
            extend Lithic::Internal::Type::Enum

            CREATE_CASE = :CREATE_CASE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Lithic::Models::AuthRules::ACHPaymentUpdateAction::TagAction, Lithic::Models::AuthRules::ACHPaymentUpdateAction::CreateCaseAction)]
      end
    end
  end
end
