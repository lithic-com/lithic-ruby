# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#update
      class V2UpdateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute auth_rule_token
        #
        #   @return [String]
        required :auth_rule_token, String

        # @!attribute body
        #   Replaces the rule's existing entities with the provided `include` and `exclude`
        #   lists. A missing list is treated as empty, so `include` must always be provided.
        #
        #   @return [Lithic::Models::AuthRules::V2UpdateParams::Body::Rule, Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule]
        required :body, union: -> { Lithic::AuthRules::V2UpdateParams::Body }

        # @!method initialize(auth_rule_token:, body:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::V2UpdateParams} for more details.
        #
        #   @param auth_rule_token [String]
        #
        #   @param body [Lithic::Models::AuthRules::V2UpdateParams::Body::Rule, Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule] Replaces the rule's existing entities with the provided `include` and `exclude`
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        # Replaces the rule's existing entities with the provided `include` and `exclude`
        # lists. A missing list is treated as empty, so `include` must always be provided.
        module Body
          extend Lithic::Internal::Type::Union

          # Replaces the rule's existing entities with the provided `include` and `exclude` lists. A missing list is treated as empty, so `include` must always be provided.
          variant -> { Lithic::AuthRules::V2UpdateParams::Body::Rule }

          # Deprecated: Use `entities` instead. Cannot be combined with `entities`.
          variant -> { Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule }

          # Deprecated: Use `entities` instead. Cannot be combined with `entities`.
          variant -> { Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule }

          # Deprecated: Use `entities` instead. Cannot be combined with `entities`.
          variant -> { Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule }

          class Rule < Lithic::Internal::Type::BaseModel
            # @!attribute entities
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
            #   @return [Lithic::Models::AuthRules::AuthRuleEntities, nil]
            optional :entities, -> { Lithic::AuthRules::AuthRuleEntities }

            # @!attribute name
            #   Auth Rule Name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute state
            #   The desired state of the Auth Rule.
            #
            #   Note that only deactivating an Auth Rule through this endpoint is supported at
            #   this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            #   should be used to promote a draft to the currently active version.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::Rule::State, nil]
            optional :state, enum: -> { Lithic::AuthRules::V2UpdateParams::Body::Rule::State }

            # @!method initialize(entities: nil, name: nil, state: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2UpdateParams::Body::Rule} for more details.
            #
            #   Replaces the rule's existing entities with the provided `include` and `exclude`
            #   lists. A missing list is treated as empty, so `include` must always be provided.
            #
            #   @param entities [Lithic::Models::AuthRules::AuthRuleEntities] The entities an Auth Rule applies to (`include`) and does not apply to (`exclude
            #
            #   @param name [String, nil] Auth Rule Name
            #
            #   @param state [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::Rule::State] The desired state of the Auth Rule.

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            #
            # @see Lithic::Models::AuthRules::V2UpdateParams::Body::Rule#state
            module State
              extend Lithic::Internal::Type::Enum

              INACTIVE = :INACTIVE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @deprecated
          class AccountLevelRule < Lithic::Internal::Type::BaseModel
            # @!attribute account_tokens
            #   @deprecated
            #
            #   Deprecated: Use `entities.include` with `ACCOUNT` entities instead.
            #
            #   Account tokens to which the Auth Rule applies.
            #
            #   @return [Array<String>, nil]
            optional :account_tokens, Lithic::Internal::Type::ArrayOf[String]

            # @!attribute business_account_tokens
            #   @deprecated
            #
            #   Deprecated: Use `entities.include` with `BUSINESS_ACCOUNT` entities instead.
            #
            #   Business Account tokens to which the Auth Rule applies.
            #
            #   @return [Array<String>, nil]
            optional :business_account_tokens, Lithic::Internal::Type::ArrayOf[String]

            # @!attribute name
            #   Auth Rule Name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute state
            #   The desired state of the Auth Rule.
            #
            #   Note that only deactivating an Auth Rule through this endpoint is supported at
            #   this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            #   should be used to promote a draft to the currently active version.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule::State, nil]
            optional :state, enum: -> { Lithic::AuthRules::V2UpdateParams::Body::AccountLevelRule::State }

            # @!method initialize(account_tokens: nil, business_account_tokens: nil, name: nil, state: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule} for more
            #   details.
            #
            #   Deprecated: Use `entities` instead. Cannot be combined with `entities`.
            #
            #   @param account_tokens [Array<String>] Deprecated: Use `entities.include` with `ACCOUNT` entities instead.
            #
            #   @param business_account_tokens [Array<String>] Deprecated: Use `entities.include` with `BUSINESS_ACCOUNT` entities instead.
            #
            #   @param name [String, nil] Auth Rule Name
            #
            #   @param state [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule::State] The desired state of the Auth Rule.

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            #
            # @see Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule#state
            module State
              extend Lithic::Internal::Type::Enum

              INACTIVE = :INACTIVE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @deprecated
          class CardLevelRule < Lithic::Internal::Type::BaseModel
            # @!attribute card_tokens
            #   @deprecated
            #
            #   Deprecated: Use `entities.include` with `CARD` entities instead.
            #
            #   Card tokens to which the Auth Rule applies. Cards the rule applies to through a
            #   `CARD_TAG` entity are not listed.
            #
            #   @return [Array<String>, nil]
            optional :card_tokens, Lithic::Internal::Type::ArrayOf[String]

            # @!attribute name
            #   Auth Rule Name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute state
            #   The desired state of the Auth Rule.
            #
            #   Note that only deactivating an Auth Rule through this endpoint is supported at
            #   this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            #   should be used to promote a draft to the currently active version.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule::State, nil]
            optional :state, enum: -> { Lithic::AuthRules::V2UpdateParams::Body::CardLevelRule::State }

            # @!method initialize(card_tokens: nil, name: nil, state: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule} for more
            #   details.
            #
            #   Deprecated: Use `entities` instead. Cannot be combined with `entities`.
            #
            #   @param card_tokens [Array<String>] Deprecated: Use `entities.include` with `CARD` entities instead.
            #
            #   @param name [String, nil] Auth Rule Name
            #
            #   @param state [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule::State] The desired state of the Auth Rule.

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            #
            # @see Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule#state
            module State
              extend Lithic::Internal::Type::Enum

              INACTIVE = :INACTIVE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @deprecated
          class ProgramLevelRule < Lithic::Internal::Type::BaseModel
            # @!attribute excluded_account_tokens
            #   @deprecated
            #
            #   Deprecated: Use `entities.exclude` with `ACCOUNT` entities instead.
            #
            #   Account tokens to which the Auth Rule does not apply.
            #
            #   @return [Array<String>, nil]
            optional :excluded_account_tokens, Lithic::Internal::Type::ArrayOf[String]

            # @!attribute excluded_business_account_tokens
            #   @deprecated
            #
            #   Deprecated: Use `entities.exclude` with `BUSINESS_ACCOUNT` entities instead.
            #
            #   Business account tokens to which the Auth Rule does not apply.
            #
            #   @return [Array<String>, nil]
            optional :excluded_business_account_tokens, Lithic::Internal::Type::ArrayOf[String]

            # @!attribute excluded_card_tokens
            #   @deprecated
            #
            #   Deprecated: Use `entities.exclude` with `CARD` entities instead.
            #
            #   Card tokens to which the Auth Rule does not apply. Cards excluded through a
            #   `CARD_TAG` entity are not listed.
            #
            #   @return [Array<String>, nil]
            optional :excluded_card_tokens, Lithic::Internal::Type::ArrayOf[String]

            # @!attribute name
            #   Auth Rule Name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute program_level
            #   @deprecated
            #
            #   Deprecated: Use `entities.include` with a `PROGRAM` entity instead.
            #
            #   Whether the Auth Rule applies to all authorizations on the card program.
            #
            #   @return [Boolean, nil]
            optional :program_level, Lithic::Internal::Type::Boolean

            # @!attribute state
            #   The desired state of the Auth Rule.
            #
            #   Note that only deactivating an Auth Rule through this endpoint is supported at
            #   this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            #   should be used to promote a draft to the currently active version.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State, nil]
            optional :state, enum: -> { Lithic::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State }

            # @!method initialize(excluded_account_tokens: nil, excluded_business_account_tokens: nil, excluded_card_tokens: nil, name: nil, program_level: nil, state: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule} for more
            #   details.
            #
            #   Deprecated: Use `entities` instead. Cannot be combined with `entities`.
            #
            #   @param excluded_account_tokens [Array<String>] Deprecated: Use `entities.exclude` with `ACCOUNT` entities instead.
            #
            #   @param excluded_business_account_tokens [Array<String>] Deprecated: Use `entities.exclude` with `BUSINESS_ACCOUNT` entities instead.
            #
            #   @param excluded_card_tokens [Array<String>] Deprecated: Use `entities.exclude` with `CARD` entities instead.
            #
            #   @param name [String, nil] Auth Rule Name
            #
            #   @param program_level [Boolean] Deprecated: Use `entities.include` with a `PROGRAM` entity instead.
            #
            #   @param state [Symbol, Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule::State] The desired state of the Auth Rule.

            # The desired state of the Auth Rule.
            #
            # Note that only deactivating an Auth Rule through this endpoint is supported at
            # this time. If you need to (re-)activate an Auth Rule the /promote endpoint
            # should be used to promote a draft to the currently active version.
            #
            # @see Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule#state
            module State
              extend Lithic::Internal::Type::Enum

              INACTIVE = :INACTIVE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Lithic::Models::AuthRules::V2UpdateParams::Body::Rule, Lithic::Models::AuthRules::V2UpdateParams::Body::AccountLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::CardLevelRule, Lithic::Models::AuthRules::V2UpdateParams::Body::ProgramLevelRule)]
        end
      end
    end
  end
end
