# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#update_entities
      class V2UpdateEntitiesParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute auth_rule_token
        #
        #   @return [String]
        required :auth_rule_token, String

        # @!attribute add
        #   Entities to add to the rule's `include` and `exclude` lists
        #
        #   @return [Lithic::Models::AuthRules::AuthRuleEntities, nil]
        optional :add, -> { Lithic::AuthRules::AuthRuleEntities }

        # @!attribute remove
        #   Entities to remove from the rule's `include` and `exclude` lists
        #
        #   @return [Lithic::Models::AuthRules::AuthRuleEntities, nil]
        optional :remove, -> { Lithic::AuthRules::AuthRuleEntities }

        # @!method initialize(auth_rule_token:, add: nil, remove: nil, request_options: {})
        #   @param auth_rule_token [String]
        #
        #   @param add [Lithic::Models::AuthRules::AuthRuleEntities] Entities to add to the rule's `include` and `exclude` lists
        #
        #   @param remove [Lithic::Models::AuthRules::AuthRuleEntities] Entities to remove from the rule's `include` and `exclude` lists
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
