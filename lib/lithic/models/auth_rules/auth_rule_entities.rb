# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class AuthRuleEntities < Lithic::Internal::Type::BaseModel
        # @!attribute exclude
        #   Entities the Auth Rule does not apply to. Defaults to an empty list in requests.
        #
        #   @return [Array<Lithic::Models::AuthRules::AuthRuleEntity::Program, Lithic::Models::AuthRules::AuthRuleEntity::Card, Lithic::Models::AuthRules::AuthRuleEntity::Account, Lithic::Models::AuthRules::AuthRuleEntity::BusinessAccount, Lithic::Models::AuthRules::AuthRuleEntity::CardTag>, nil]
        optional :exclude, -> { Lithic::Internal::Type::ArrayOf[union: Lithic::AuthRules::AuthRuleEntity] }

        # @!attribute include
        #   Entities the Auth Rule applies to. Defaults to an empty list in requests.
        #
        #   @return [Array<Lithic::Models::AuthRules::AuthRuleEntity::Program, Lithic::Models::AuthRules::AuthRuleEntity::Card, Lithic::Models::AuthRules::AuthRuleEntity::Account, Lithic::Models::AuthRules::AuthRuleEntity::BusinessAccount, Lithic::Models::AuthRules::AuthRuleEntity::CardTag>, nil]
        optional :include, -> { Lithic::Internal::Type::ArrayOf[union: Lithic::AuthRules::AuthRuleEntity] }

        # @!method initialize(exclude: nil, include: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::AuthRuleEntities} for more details.
        #
        #   The entities an Auth Rule applies to (`include`) and does not apply to
        #   (`exclude`). An exclusion overrides an inclusion, so a card excluded here is
        #   skipped even when the program, its account or one of its tags is included.
        #
        #   The rule's resulting entities must satisfy these constraints after any write:
        #
        #   - `include` must contain at least one entity.
        #   - If `PROGRAM` is included, it must be the only included entity.
        #   - `PROGRAM` cannot be excluded.
        #   - An entity cannot appear in both `include` and `exclude`, or twice in the same
        #     list.
        #   - A rule can have at most 1,000 entities across `include` and `exclude`, not
        #     counting `PROGRAM`.
        #   - Entity types must be valid for the rule's event stream.
        #   - `CARD`, `ACCOUNT` and `BUSINESS_ACCOUNT` tokens must belong to your program.
        #
        #   @param exclude [Array<Lithic::Models::AuthRules::AuthRuleEntity::Program, Lithic::Models::AuthRules::AuthRuleEntity::Card, Lithic::Models::AuthRules::AuthRuleEntity::Account, Lithic::Models::AuthRules::AuthRuleEntity::BusinessAccount, Lithic::Models::AuthRules::AuthRuleEntity::CardTag>] Entities the Auth Rule does not apply to. Defaults to an empty list in requests.
        #
        #   @param include [Array<Lithic::Models::AuthRules::AuthRuleEntity::Program, Lithic::Models::AuthRules::AuthRuleEntity::Card, Lithic::Models::AuthRules::AuthRuleEntity::Account, Lithic::Models::AuthRules::AuthRuleEntity::BusinessAccount, Lithic::Models::AuthRules::AuthRuleEntity::CardTag>] Entities the Auth Rule applies to. Defaults to an empty list in requests.
      end
    end

    AuthRuleEntities = AuthRules::AuthRuleEntities
  end
end
