# typed: strong

module Lithic
  module Models
    AuthRuleVersion = AuthRules::AuthRuleVersion

    module AuthRules
      class AuthRuleVersion < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Lithic::AuthRules::AuthRuleVersion, Lithic::Internal::AnyHash)
          end

        # Timestamp of when this version was created.
        sig { returns(Time) }
        attr_accessor :created

        # Parameters for the Auth Rule
        sig do
          returns(Lithic::AuthRules::AuthRuleVersion::Parameters::Variants)
        end
        attr_accessor :parameters

        # The current state of this version.
        sig { returns(Lithic::AuthRules::AuthRuleVersion::State::TaggedSymbol) }
        attr_accessor :state

        # The version of the rule, this is incremented whenever the rule's parameters
        # change.
        sig { returns(Integer) }
        attr_accessor :version

        sig do
          params(
            created: Time,
            parameters:
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters::OrHash,
                Lithic::AuthRules::VelocityLimitParams::OrHash,
                Lithic::AuthRules::MerchantLockParameters::OrHash,
                Lithic::AuthRules::Conditional3DSActionParameters::OrHash,
                Lithic::AuthRules::ConditionalAuthorizationActionParameters::OrHash,
                Lithic::AuthRules::ConditionalACHActionParameters::OrHash,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::OrHash,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters::OrHash,
                Lithic::AuthRules::TypescriptCodeParameters::OrHash
              ),
            state: Lithic::AuthRules::AuthRuleVersion::State::OrSymbol,
            version: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Timestamp of when this version was created.
          created:,
          # Parameters for the Auth Rule
          parameters:,
          # The current state of this version.
          state:,
          # The version of the rule, this is incremented whenever the rule's parameters
          # change.
          version:
        )
        end

        sig do
          override.returns(
            {
              created: Time,
              parameters:
                Lithic::AuthRules::AuthRuleVersion::Parameters::Variants,
              state: Lithic::AuthRules::AuthRuleVersion::State::TaggedSymbol,
              version: Integer
            }
          )
        end
        def to_hash
        end

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalBlockParameters,
                Lithic::AuthRules::VelocityLimitParams,
                Lithic::AuthRules::MerchantLockParameters,
                Lithic::AuthRules::Conditional3DSActionParameters,
                Lithic::AuthRules::ConditionalAuthorizationActionParameters,
                Lithic::AuthRules::ConditionalACHActionParameters,
                Lithic::AuthRules::ConditionalTokenizationActionParameters,
                Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters,
                Lithic::AuthRules::TypescriptCodeParameters
              )
            end

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::AuthRuleVersion::Parameters::Variants]
            )
          end
          def self.variants
          end
        end

        # The current state of this version.
        module State
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::AuthRules::AuthRuleVersion::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :ACTIVE,
              Lithic::AuthRules::AuthRuleVersion::State::TaggedSymbol
            )
          SHADOW =
            T.let(
              :SHADOW,
              Lithic::AuthRules::AuthRuleVersion::State::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :INACTIVE,
              Lithic::AuthRules::AuthRuleVersion::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::AuthRules::AuthRuleVersion::State::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
