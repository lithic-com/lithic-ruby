# typed: strong

module Lithic
  module Models
    AuthRuleEntities = AuthRules::AuthRuleEntities

    module AuthRules
      class AuthRuleEntities < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::AuthRuleEntities,
              Lithic::Internal::AnyHash
            )
          end

        # Entities the Auth Rule does not apply to. Defaults to an empty list in requests.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Lithic::AuthRules::AuthRuleEntity::Program,
                  Lithic::AuthRules::AuthRuleEntity::Card,
                  Lithic::AuthRules::AuthRuleEntity::Account,
                  Lithic::AuthRules::AuthRuleEntity::BusinessAccount,
                  Lithic::AuthRules::AuthRuleEntity::CardTag
                )
              ]
            )
          )
        end
        attr_reader :exclude

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
              ]
          ).void
        end
        attr_writer :exclude

        # Entities the Auth Rule applies to. Defaults to an empty list in requests.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Lithic::AuthRules::AuthRuleEntity::Program,
                  Lithic::AuthRules::AuthRuleEntity::Card,
                  Lithic::AuthRules::AuthRuleEntity::Account,
                  Lithic::AuthRules::AuthRuleEntity::BusinessAccount,
                  Lithic::AuthRules::AuthRuleEntity::CardTag
                )
              ]
            )
          )
        end
        attr_reader :include

        sig do
          params(
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
          ).void
        end
        attr_writer :include

        # The entities an Auth Rule applies to (`include`) and does not apply to
        # (`exclude`). An exclusion overrides an inclusion, so a card excluded here is
        # skipped even when the program, its account or one of its tags is included.
        #
        # The rule's resulting entities must satisfy these constraints after any write:
        #
        # - `include` must contain at least one entity.
        # - If `PROGRAM` is included, it must be the only included entity.
        # - `PROGRAM` cannot be excluded.
        # - An entity cannot appear in both `include` and `exclude`, or twice in the same
        #   list.
        # - A rule can have at most 1,000 entities across `include` and `exclude`, not
        #   counting `PROGRAM`.
        # - Entity types must be valid for the rule's event stream.
        # - `CARD`, `ACCOUNT` and `BUSINESS_ACCOUNT` tokens must belong to your program.
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
          # Entities the Auth Rule does not apply to. Defaults to an empty list in requests.
          exclude: nil,
          # Entities the Auth Rule applies to. Defaults to an empty list in requests.
          include: nil
        )
        end

        sig do
          override.returns(
            {
              exclude:
                T::Array[
                  T.any(
                    Lithic::AuthRules::AuthRuleEntity::Program,
                    Lithic::AuthRules::AuthRuleEntity::Card,
                    Lithic::AuthRules::AuthRuleEntity::Account,
                    Lithic::AuthRules::AuthRuleEntity::BusinessAccount,
                    Lithic::AuthRules::AuthRuleEntity::CardTag
                  )
                ],
              include:
                T::Array[
                  T.any(
                    Lithic::AuthRules::AuthRuleEntity::Program,
                    Lithic::AuthRules::AuthRuleEntity::Card,
                    Lithic::AuthRules::AuthRuleEntity::Account,
                    Lithic::AuthRules::AuthRuleEntity::BusinessAccount,
                    Lithic::AuthRules::AuthRuleEntity::CardTag
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
