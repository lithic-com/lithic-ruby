# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class AuthRuleEntitiesResponse < Lithic::Internal::Type::BaseModel
        # @!attribute exclude
        #   Entities the Auth Rule does not apply to
        #
        #   @return [Array<Lithic::Models::AuthRules::AuthRuleEntity::Program, Lithic::Models::AuthRules::AuthRuleEntity::Card, Lithic::Models::AuthRules::AuthRuleEntity::Account, Lithic::Models::AuthRules::AuthRuleEntity::BusinessAccount, Lithic::Models::AuthRules::AuthRuleEntity::CardTag>]
        required :exclude, -> { Lithic::Internal::Type::ArrayOf[union: Lithic::AuthRules::AuthRuleEntity] }

        # @!attribute include
        #   Entities the Auth Rule applies to
        #
        #   @return [Array<Lithic::Models::AuthRules::AuthRuleEntity::Program, Lithic::Models::AuthRules::AuthRuleEntity::Card, Lithic::Models::AuthRules::AuthRuleEntity::Account, Lithic::Models::AuthRules::AuthRuleEntity::BusinessAccount, Lithic::Models::AuthRules::AuthRuleEntity::CardTag>]
        required :include, -> { Lithic::Internal::Type::ArrayOf[union: Lithic::AuthRules::AuthRuleEntity] }

        # @!method initialize(exclude:, include:)
        #   The entities the Auth Rule applies to (`include`) and does not apply to
        #   (`exclude`). An exclusion overrides an inclusion.
        #
        #   @param exclude [Array<Lithic::Models::AuthRules::AuthRuleEntity::Program, Lithic::Models::AuthRules::AuthRuleEntity::Card, Lithic::Models::AuthRules::AuthRuleEntity::Account, Lithic::Models::AuthRules::AuthRuleEntity::BusinessAccount, Lithic::Models::AuthRules::AuthRuleEntity::CardTag>] Entities the Auth Rule does not apply to
        #
        #   @param include [Array<Lithic::Models::AuthRules::AuthRuleEntity::Program, Lithic::Models::AuthRules::AuthRuleEntity::Card, Lithic::Models::AuthRules::AuthRuleEntity::Account, Lithic::Models::AuthRules::AuthRuleEntity::BusinessAccount, Lithic::Models::AuthRules::AuthRuleEntity::CardTag>] Entities the Auth Rule applies to
      end
    end

    AuthRuleEntitiesResponse = AuthRules::AuthRuleEntitiesResponse
  end
end
