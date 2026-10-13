# typed: strong

module Lithic
  module Models
    AuthRuleEntitiesResponse = AuthRules::AuthRuleEntitiesResponse

    module AuthRules
      class AuthRuleEntitiesResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::AuthRuleEntitiesResponse,
              Lithic::Internal::AnyHash
            )
          end

        # Entities the Auth Rule does not apply to
        sig { returns(T::Array[Lithic::AuthRules::AuthRuleEntity::Variants]) }
        attr_accessor :exclude

        # Entities the Auth Rule applies to
        sig { returns(T::Array[Lithic::AuthRules::AuthRuleEntity::Variants]) }
        attr_accessor :include

        # The entities the Auth Rule applies to (`include`) and does not apply to
        # (`exclude`). An exclusion overrides an inclusion.
        sig do
          params(
            exclude:
              T::Array[
                T.any(
                  Lithic::AuthRules::AuthRuleEntity::Program::OrHash,
                  Lithic::AuthRules::AuthRuleEntity::Card::OrHash,
                  Lithic::AuthRules::AuthRuleEntity::Account::OrHash,
                  Lithic::AuthRules::AuthRuleEntity::BusinessAccount::OrHash,
                  Lithic::AuthRules::AuthRuleEntity::CardTag::OrHash
                )
              ],
            include:
              T::Array[
                T.any(
                  Lithic::AuthRules::AuthRuleEntity::Program::OrHash,
                  Lithic::AuthRules::AuthRuleEntity::Card::OrHash,
                  Lithic::AuthRules::AuthRuleEntity::Account::OrHash,
                  Lithic::AuthRules::AuthRuleEntity::BusinessAccount::OrHash,
                  Lithic::AuthRules::AuthRuleEntity::CardTag::OrHash
                )
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Entities the Auth Rule does not apply to
          exclude:,
          # Entities the Auth Rule applies to
          include:
        )
        end

        sig do
          override.returns(
            {
              exclude: T::Array[Lithic::AuthRules::AuthRuleEntity::Variants],
              include: T::Array[Lithic::AuthRules::AuthRuleEntity::Variants]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
