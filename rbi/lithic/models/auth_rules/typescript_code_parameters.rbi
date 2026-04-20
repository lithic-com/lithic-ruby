# typed: strong

module Lithic
  module Models
    module AuthRules
      class TypescriptCodeParameters < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::TypescriptCodeParameters,
              Lithic::Internal::AnyHash
            )
          end

        # The TypeScript source code of the rule. Must define a `rule()` function that
        # accepts the declared features as positional arguments (in the same order as the
        # `features` array) and returns an array of actions.
        sig { returns(String) }
        attr_accessor :code

        # Features available to the TypeScript code at evaluation time
        sig do
          returns(
            T::Array[
              T.any(
                Lithic::AuthRules::RuleFeature::AuthorizationFeature,
                Lithic::AuthRules::RuleFeature::AuthenticationFeature,
                Lithic::AuthRules::RuleFeature::TokenizationFeature,
                Lithic::AuthRules::RuleFeature::ACHReceiptFeature,
                Lithic::AuthRules::RuleFeature::CardFeature,
                Lithic::AuthRules::RuleFeature::AccountHolderFeature,
                Lithic::AuthRules::RuleFeature::IPMetadataFeature,
                Lithic::AuthRules::RuleFeature::SpendVelocityFeature,
                Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature
              )
            ]
          )
        end
        attr_accessor :features

        # Parameters for defining a TypeScript code rule
        sig do
          params(
            code: String,
            features:
              T::Array[
                T.any(
                  Lithic::AuthRules::RuleFeature::AuthorizationFeature::OrHash,
                  Lithic::AuthRules::RuleFeature::AuthenticationFeature::OrHash,
                  Lithic::AuthRules::RuleFeature::TokenizationFeature::OrHash,
                  Lithic::AuthRules::RuleFeature::ACHReceiptFeature::OrHash,
                  Lithic::AuthRules::RuleFeature::CardFeature::OrHash,
                  Lithic::AuthRules::RuleFeature::AccountHolderFeature::OrHash,
                  Lithic::AuthRules::RuleFeature::IPMetadataFeature::OrHash,
                  Lithic::AuthRules::RuleFeature::SpendVelocityFeature::OrHash,
                  Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature::OrHash
                )
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The TypeScript source code of the rule. Must define a `rule()` function that
          # accepts the declared features as positional arguments (in the same order as the
          # `features` array) and returns an array of actions.
          code:,
          # Features available to the TypeScript code at evaluation time
          features:
        )
        end

        sig do
          override.returns(
            {
              code: String,
              features:
                T::Array[
                  T.any(
                    Lithic::AuthRules::RuleFeature::AuthorizationFeature,
                    Lithic::AuthRules::RuleFeature::AuthenticationFeature,
                    Lithic::AuthRules::RuleFeature::TokenizationFeature,
                    Lithic::AuthRules::RuleFeature::ACHReceiptFeature,
                    Lithic::AuthRules::RuleFeature::CardFeature,
                    Lithic::AuthRules::RuleFeature::AccountHolderFeature,
                    Lithic::AuthRules::RuleFeature::IPMetadataFeature,
                    Lithic::AuthRules::RuleFeature::SpendVelocityFeature,
                    Lithic::AuthRules::RuleFeature::TransactionHistorySignalsFeature
                  )
                ]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
