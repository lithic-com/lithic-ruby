# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2UpdateEntitiesParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::V2UpdateEntitiesParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :auth_rule_token

        # Entities to add to the rule's `include` and `exclude` lists
        sig { returns(T.nilable(Lithic::AuthRules::AuthRuleEntities)) }
        attr_reader :add

        sig { params(add: Lithic::AuthRules::AuthRuleEntities::OrHash).void }
        attr_writer :add

        # Entities to remove from the rule's `include` and `exclude` lists
        sig { returns(T.nilable(Lithic::AuthRules::AuthRuleEntities)) }
        attr_reader :remove

        sig { params(remove: Lithic::AuthRules::AuthRuleEntities::OrHash).void }
        attr_writer :remove

        sig do
          params(
            auth_rule_token: String,
            add: Lithic::AuthRules::AuthRuleEntities::OrHash,
            remove: Lithic::AuthRules::AuthRuleEntities::OrHash,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          auth_rule_token:,
          # Entities to add to the rule's `include` and `exclude` lists
          add: nil,
          # Entities to remove from the rule's `include` and `exclude` lists
          remove: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              auth_rule_token: String,
              add: Lithic::AuthRules::AuthRuleEntities,
              remove: Lithic::AuthRules::AuthRuleEntities,
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
