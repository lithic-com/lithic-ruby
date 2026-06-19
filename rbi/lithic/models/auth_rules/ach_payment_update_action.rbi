# typed: strong

module Lithic
  module Models
    module AuthRules
      module ACHPaymentUpdateAction
        extend Lithic::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Lithic::AuthRules::ACHPaymentUpdateAction::TagAction,
              Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction
            )
          end

        class TagAction < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ACHPaymentUpdateAction::TagAction,
                Lithic::Internal::AnyHash
              )
            end

          # The key of the tag to apply to the payment
          sig { returns(String) }
          attr_accessor :key

          # Tag the payment with key-value metadata
          sig do
            returns(
              Lithic::AuthRules::ACHPaymentUpdateAction::TagAction::Type::OrSymbol
            )
          end
          attr_accessor :type

          # The value of the tag to apply to the payment
          sig { returns(String) }
          attr_accessor :value

          sig do
            params(
              key: String,
              type:
                Lithic::AuthRules::ACHPaymentUpdateAction::TagAction::Type::OrSymbol,
              value: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The key of the tag to apply to the payment
            key:,
            # Tag the payment with key-value metadata
            type:,
            # The value of the tag to apply to the payment
            value:
          )
          end

          sig do
            override.returns(
              {
                key: String,
                type:
                  Lithic::AuthRules::ACHPaymentUpdateAction::TagAction::Type::OrSymbol,
                value: String
              }
            )
          end
          def to_hash
          end

          # Tag the payment with key-value metadata
          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::ACHPaymentUpdateAction::TagAction::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TAG =
              T.let(
                :TAG,
                Lithic::AuthRules::ACHPaymentUpdateAction::TagAction::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::ACHPaymentUpdateAction::TagAction::Type::TaggedSymbol
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
                Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction,
                Lithic::Internal::AnyHash
              )
            end

          # The token of the queue to create the case in
          sig { returns(String) }
          attr_accessor :queue_token

          # The scope of the case to create
          sig do
            returns(
              Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Scope::OrSymbol
            )
          end
          attr_accessor :scope

          # Create a case for the payment
          sig do
            returns(
              Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              queue_token: String,
              scope:
                Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Scope::OrSymbol,
              type:
                Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The token of the queue to create the case in
            queue_token:,
            # The scope of the case to create
            scope:,
            # Create a case for the payment
            type:
          )
          end

          sig do
            override.returns(
              {
                queue_token: String,
                scope:
                  Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Scope::OrSymbol,
                type:
                  Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Type::OrSymbol
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
                  Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Scope
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FINANCIAL_ACCOUNT =
              T.let(
                :FINANCIAL_ACCOUNT,
                Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Scope::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Scope::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Create a case for the payment
          module Type
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATE_CASE =
              T.let(
                :CREATE_CASE,
                Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::ACHPaymentUpdateAction::CreateCaseAction::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[Lithic::AuthRules::ACHPaymentUpdateAction::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
