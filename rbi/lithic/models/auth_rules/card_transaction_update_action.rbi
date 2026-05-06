# typed: strong

module Lithic
  module Models
    module AuthRules
      module CardTransactionUpdateAction
        extend Lithic::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Lithic::AuthRules::CardTransactionUpdateAction::TagAction,
              Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction
            )
          end

        class TagAction < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::CardTransactionUpdateAction::TagAction,
                Lithic::Internal::AnyHash
              )
            end

          # The key of the tag to apply to the transaction
          sig { returns(String) }
          attr_accessor :key

          # Tag the transaction with key-value metadata
          sig do
            returns(
              Lithic::AuthRules::CardTransactionUpdateAction::TagAction::Type::OrSymbol
            )
          end
          attr_accessor :type

          # The value of the tag to apply to the transaction
          sig { returns(String) }
          attr_accessor :value

          sig do
            params(
              key: String,
              type:
                Lithic::AuthRules::CardTransactionUpdateAction::TagAction::Type::OrSymbol,
              value: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The key of the tag to apply to the transaction
            key:,
            # Tag the transaction with key-value metadata
            type:,
            # The value of the tag to apply to the transaction
            value:
          )
          end

          sig do
            override.returns(
              {
                key: String,
                type:
                  Lithic::AuthRules::CardTransactionUpdateAction::TagAction::Type::OrSymbol,
                value: String
              }
            )
          end
          def to_hash
          end

          # Tag the transaction with key-value metadata
          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::CardTransactionUpdateAction::TagAction::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TAG =
              T.let(
                :TAG,
                Lithic::AuthRules::CardTransactionUpdateAction::TagAction::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::CardTransactionUpdateAction::TagAction::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CreateCaseAction < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction,
                Lithic::Internal::AnyHash
              )
            end

          # The token of the queue to create the case in
          sig { returns(String) }
          attr_accessor :queue_token

          # The scope of the case to create
          sig do
            returns(
              Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Scope::OrSymbol
            )
          end
          attr_accessor :scope

          # Create a case for the transaction
          sig do
            returns(
              Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              queue_token: String,
              scope:
                Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Scope::OrSymbol,
              type:
                Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The token of the queue to create the case in
            queue_token:,
            # The scope of the case to create
            scope:,
            # Create a case for the transaction
            type:
          )
          end

          sig do
            override.returns(
              {
                queue_token: String,
                scope:
                  Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Scope::OrSymbol,
                type:
                  Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The scope of the case to create
          module Scope
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Scope
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CARD =
              T.let(
                :CARD,
                Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Scope::TaggedSymbol
              )
            ACCOUNT =
              T.let(
                :ACCOUNT,
                Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Scope::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Scope::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Create a case for the transaction
          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATE_CASE =
              T.let(
                :CREATE_CASE,
                Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::CardTransactionUpdateAction::CreateCaseAction::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[Lithic::AuthRules::CardTransactionUpdateAction::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
