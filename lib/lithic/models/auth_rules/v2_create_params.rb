# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#create
      class V2CreateParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute body
        #   Deprecated: Use `entities` instead. Cannot be combined with `entities`.
        #
        #   @return [Lithic::Models::AuthRules::V2CreateParams::Body::Rule, Lithic::Models::AuthRules::V2CreateParams::Body::AccountLevelRule, Lithic::Models::AuthRules::V2CreateParams::Body::CardLevelRule, Lithic::Models::AuthRules::V2CreateParams::Body::ProgramLevelRule]
        required :body, union: -> { Lithic::AuthRules::V2CreateParams::Body }

        # @!method initialize(body:, request_options: {})
        #   @param body [Lithic::Models::AuthRules::V2CreateParams::Body::Rule, Lithic::Models::AuthRules::V2CreateParams::Body::AccountLevelRule, Lithic::Models::AuthRules::V2CreateParams::Body::CardLevelRule, Lithic::Models::AuthRules::V2CreateParams::Body::ProgramLevelRule] Deprecated: Use `entities` instead. Cannot be combined with `entities`.
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        # Deprecated: Use `entities` instead. Cannot be combined with `entities`.
        module Body
          extend Lithic::Internal::Type::Union

          variant -> { Lithic::AuthRules::V2CreateParams::Body::Rule }

          # Deprecated: Use `entities` instead. Cannot be combined with `entities`.
          variant -> { Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule }

          # Deprecated: Use `entities` instead. Cannot be combined with `entities`.
          variant -> { Lithic::AuthRules::V2CreateParams::Body::CardLevelRule }

          # Deprecated: Use `entities` instead. Cannot be combined with `entities`.
          variant -> { Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule }

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
            #   @return [Lithic::Models::AuthRules::AuthRuleEntities]
            required :entities, -> { Lithic::AuthRules::AuthRuleEntities }

            # @!attribute parameters
            #   Parameters for the Auth Rule
            #
            #   @return [Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters]
            required :parameters, union: -> { Lithic::AuthRules::V2CreateParams::Body::Rule::Parameters }

            # @!attribute type
            #   The type of Auth Rule. For certain rule types, this determines the event stream
            #   during which it will be evaluated. For rules that can be applied to one of
            #   several event streams, the effective one is defined by the separate
            #   `event_stream` field.
            #
            #   - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            #   - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            #   - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #     ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #     ACH_PAYMENT_UPDATE event stream.
            #   - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #     ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #     ACH_PAYMENT_UPDATE event stream.
            #   - `OTHER`: A rule whose type is not exposed through this API. Rules of this type
            #     are read-only; `OTHER` cannot be used when creating a rule.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2CreateParams::Body::Rule::Type]
            required :type, enum: -> { Lithic::AuthRules::V2CreateParams::Body::Rule::Type }

            # @!attribute event_stream
            #   The event stream during which the rule will be evaluated.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::EventStream, nil]
            optional :event_stream, enum: -> { Lithic::AuthRules::EventStream }

            # @!attribute name
            #   Auth Rule Name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!method initialize(entities:, parameters:, type:, event_stream: nil, name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2CreateParams::Body::Rule} for more details.
            #
            #   @param entities [Lithic::Models::AuthRules::AuthRuleEntities] The entities an Auth Rule applies to (`include`) and does not apply to (`exclude
            #
            #   @param parameters [Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters] Parameters for the Auth Rule
            #
            #   @param type [Symbol, Lithic::Models::AuthRules::V2CreateParams::Body::Rule::Type] The type of Auth Rule. For certain rule types, this determines the event stream
            #
            #   @param event_stream [Symbol, Lithic::Models::AuthRules::EventStream] The event stream during which the rule will be evaluated.
            #
            #   @param name [String, nil] Auth Rule Name

            # Parameters for the Auth Rule
            #
            # @see Lithic::Models::AuthRules::V2CreateParams::Body::Rule#parameters
            module Parameters
              extend Lithic::Internal::Type::Union

              variant -> { Lithic::AuthRules::VelocityLimitParams }

              variant -> { Lithic::AuthRules::MerchantLockParameters }

              variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

              variant -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters }

              variant -> { Lithic::AuthRules::ConditionalACHActionParameters }

              variant -> { Lithic::AuthRules::ConditionalTokenizationActionParameters }

              variant -> { Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters }

              variant -> { Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters }

              # Parameters for defining a TypeScript code rule
              variant -> { Lithic::AuthRules::TypescriptCodeParameters }

              variant -> { Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters }

              # @!method self.variants
              #   @return [Array(Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters)]
            end

            # The type of Auth Rule. For certain rule types, this determines the event stream
            # during which it will be evaluated. For rules that can be applied to one of
            # several event streams, the effective one is defined by the separate
            # `event_stream` field.
            #
            # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #   ACH_PAYMENT_UPDATE event stream.
            # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #   ACH_PAYMENT_UPDATE event stream.
            # - `OTHER`: A rule whose type is not exposed through this API. Rules of this type
            #   are read-only; `OTHER` cannot be used when creating a rule.
            #
            # @see Lithic::Models::AuthRules::V2CreateParams::Body::Rule#type
            module Type
              extend Lithic::Internal::Type::Enum

              VELOCITY_LIMIT = :VELOCITY_LIMIT
              MERCHANT_LOCK = :MERCHANT_LOCK
              CONDITIONAL_ACTION = :CONDITIONAL_ACTION
              TYPESCRIPT_CODE = :TYPESCRIPT_CODE
              OTHER = :OTHER

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @deprecated
          class AccountLevelRule < Lithic::Internal::Type::BaseModel
            # @!attribute parameters
            #   Parameters for the Auth Rule
            #
            #   @return [Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters]
            required :parameters, union: -> { Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Parameters }

            # @!attribute type
            #   The type of Auth Rule. For certain rule types, this determines the event stream
            #   during which it will be evaluated. For rules that can be applied to one of
            #   several event streams, the effective one is defined by the separate
            #   `event_stream` field.
            #
            #   - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            #   - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            #   - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #     ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #     ACH_PAYMENT_UPDATE event stream.
            #   - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #     ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #     ACH_PAYMENT_UPDATE event stream.
            #   - `OTHER`: A rule whose type is not exposed through this API. Rules of this type
            #     are read-only; `OTHER` cannot be used when creating a rule.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2CreateParams::Body::AccountLevelRule::Type]
            required :type, enum: -> { Lithic::AuthRules::V2CreateParams::Body::AccountLevelRule::Type }

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

            # @!attribute event_stream
            #   The event stream during which the rule will be evaluated.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::EventStream, nil]
            optional :event_stream, enum: -> { Lithic::AuthRules::EventStream }

            # @!attribute name
            #   Auth Rule Name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!method initialize(parameters:, type:, account_tokens: nil, business_account_tokens: nil, event_stream: nil, name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2CreateParams::Body::AccountLevelRule} for more
            #   details.
            #
            #   Deprecated: Use `entities` instead. Cannot be combined with `entities`.
            #
            #   @param parameters [Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters] Parameters for the Auth Rule
            #
            #   @param type [Symbol, Lithic::Models::AuthRules::V2CreateParams::Body::AccountLevelRule::Type] The type of Auth Rule. For certain rule types, this determines the event stream
            #
            #   @param account_tokens [Array<String>] Deprecated: Use `entities.include` with `ACCOUNT` entities instead.
            #
            #   @param business_account_tokens [Array<String>] Deprecated: Use `entities.include` with `BUSINESS_ACCOUNT` entities instead.
            #
            #   @param event_stream [Symbol, Lithic::Models::AuthRules::EventStream] The event stream during which the rule will be evaluated.
            #
            #   @param name [String, nil] Auth Rule Name

            # Parameters for the Auth Rule
            #
            # @see Lithic::Models::AuthRules::V2CreateParams::Body::AccountLevelRule#parameters
            module Parameters
              extend Lithic::Internal::Type::Union

              variant -> { Lithic::AuthRules::VelocityLimitParams }

              variant -> { Lithic::AuthRules::MerchantLockParameters }

              variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

              variant -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters }

              variant -> { Lithic::AuthRules::ConditionalACHActionParameters }

              variant -> { Lithic::AuthRules::ConditionalTokenizationActionParameters }

              variant -> { Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters }

              variant -> { Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters }

              # Parameters for defining a TypeScript code rule
              variant -> { Lithic::AuthRules::TypescriptCodeParameters }

              variant -> { Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters }

              # @!method self.variants
              #   @return [Array(Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters)]
            end

            # The type of Auth Rule. For certain rule types, this determines the event stream
            # during which it will be evaluated. For rules that can be applied to one of
            # several event streams, the effective one is defined by the separate
            # `event_stream` field.
            #
            # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #   ACH_PAYMENT_UPDATE event stream.
            # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #   ACH_PAYMENT_UPDATE event stream.
            # - `OTHER`: A rule whose type is not exposed through this API. Rules of this type
            #   are read-only; `OTHER` cannot be used when creating a rule.
            #
            # @see Lithic::Models::AuthRules::V2CreateParams::Body::AccountLevelRule#type
            module Type
              extend Lithic::Internal::Type::Enum

              VELOCITY_LIMIT = :VELOCITY_LIMIT
              MERCHANT_LOCK = :MERCHANT_LOCK
              CONDITIONAL_ACTION = :CONDITIONAL_ACTION
              TYPESCRIPT_CODE = :TYPESCRIPT_CODE
              OTHER = :OTHER

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
            #   @return [Array<String>]
            required :card_tokens, Lithic::Internal::Type::ArrayOf[String]

            # @!attribute parameters
            #   Parameters for the Auth Rule
            #
            #   @return [Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters]
            required :parameters, union: -> { Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Parameters }

            # @!attribute type
            #   The type of Auth Rule. For certain rule types, this determines the event stream
            #   during which it will be evaluated. For rules that can be applied to one of
            #   several event streams, the effective one is defined by the separate
            #   `event_stream` field.
            #
            #   - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            #   - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            #   - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #     ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #     ACH_PAYMENT_UPDATE event stream.
            #   - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #     ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #     ACH_PAYMENT_UPDATE event stream.
            #   - `OTHER`: A rule whose type is not exposed through this API. Rules of this type
            #     are read-only; `OTHER` cannot be used when creating a rule.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2CreateParams::Body::CardLevelRule::Type]
            required :type, enum: -> { Lithic::AuthRules::V2CreateParams::Body::CardLevelRule::Type }

            # @!attribute event_stream
            #   The event stream during which the rule will be evaluated.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::EventStream, nil]
            optional :event_stream, enum: -> { Lithic::AuthRules::EventStream }

            # @!attribute name
            #   Auth Rule Name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!method initialize(card_tokens:, parameters:, type:, event_stream: nil, name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2CreateParams::Body::CardLevelRule} for more
            #   details.
            #
            #   Deprecated: Use `entities` instead. Cannot be combined with `entities`.
            #
            #   @param card_tokens [Array<String>] Deprecated: Use `entities.include` with `CARD` entities instead.
            #
            #   @param parameters [Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters] Parameters for the Auth Rule
            #
            #   @param type [Symbol, Lithic::Models::AuthRules::V2CreateParams::Body::CardLevelRule::Type] The type of Auth Rule. For certain rule types, this determines the event stream
            #
            #   @param event_stream [Symbol, Lithic::Models::AuthRules::EventStream] The event stream during which the rule will be evaluated.
            #
            #   @param name [String, nil] Auth Rule Name

            # Parameters for the Auth Rule
            #
            # @see Lithic::Models::AuthRules::V2CreateParams::Body::CardLevelRule#parameters
            module Parameters
              extend Lithic::Internal::Type::Union

              variant -> { Lithic::AuthRules::VelocityLimitParams }

              variant -> { Lithic::AuthRules::MerchantLockParameters }

              variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

              variant -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters }

              variant -> { Lithic::AuthRules::ConditionalACHActionParameters }

              variant -> { Lithic::AuthRules::ConditionalTokenizationActionParameters }

              variant -> { Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters }

              variant -> { Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters }

              # Parameters for defining a TypeScript code rule
              variant -> { Lithic::AuthRules::TypescriptCodeParameters }

              variant -> { Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters }

              # @!method self.variants
              #   @return [Array(Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters)]
            end

            # The type of Auth Rule. For certain rule types, this determines the event stream
            # during which it will be evaluated. For rules that can be applied to one of
            # several event streams, the effective one is defined by the separate
            # `event_stream` field.
            #
            # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #   ACH_PAYMENT_UPDATE event stream.
            # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #   ACH_PAYMENT_UPDATE event stream.
            # - `OTHER`: A rule whose type is not exposed through this API. Rules of this type
            #   are read-only; `OTHER` cannot be used when creating a rule.
            #
            # @see Lithic::Models::AuthRules::V2CreateParams::Body::CardLevelRule#type
            module Type
              extend Lithic::Internal::Type::Enum

              VELOCITY_LIMIT = :VELOCITY_LIMIT
              MERCHANT_LOCK = :MERCHANT_LOCK
              CONDITIONAL_ACTION = :CONDITIONAL_ACTION
              TYPESCRIPT_CODE = :TYPESCRIPT_CODE
              OTHER = :OTHER

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @deprecated
          class ProgramLevelRule < Lithic::Internal::Type::BaseModel
            # @!attribute parameters
            #   Parameters for the Auth Rule
            #
            #   @return [Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters]
            required :parameters, union: -> { Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Parameters }

            # @!attribute program_level
            #   @deprecated
            #
            #   Deprecated: Use `entities.include` with a `PROGRAM` entity instead.
            #
            #   Whether the Auth Rule applies to all authorizations on the card program.
            #
            #   @return [Boolean]
            required :program_level, Lithic::Internal::Type::Boolean

            # @!attribute type
            #   The type of Auth Rule. For certain rule types, this determines the event stream
            #   during which it will be evaluated. For rules that can be applied to one of
            #   several event streams, the effective one is defined by the separate
            #   `event_stream` field.
            #
            #   - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            #   - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            #   - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #     ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #     ACH_PAYMENT_UPDATE event stream.
            #   - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #     ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #     ACH_PAYMENT_UPDATE event stream.
            #   - `OTHER`: A rule whose type is not exposed through this API. Rules of this type
            #     are read-only; `OTHER` cannot be used when creating a rule.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type]
            required :type, enum: -> { Lithic::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type }

            # @!attribute event_stream
            #   The event stream during which the rule will be evaluated.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::EventStream, nil]
            optional :event_stream, enum: -> { Lithic::AuthRules::EventStream }

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

            # @!method initialize(parameters:, program_level:, type:, event_stream: nil, excluded_account_tokens: nil, excluded_business_account_tokens: nil, excluded_card_tokens: nil, name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2CreateParams::Body::ProgramLevelRule} for more
            #   details.
            #
            #   Deprecated: Use `entities` instead. Cannot be combined with `entities`.
            #
            #   @param parameters [Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters] Parameters for the Auth Rule
            #
            #   @param program_level [Boolean] Deprecated: Use `entities.include` with a `PROGRAM` entity instead.
            #
            #   @param type [Symbol, Lithic::Models::AuthRules::V2CreateParams::Body::ProgramLevelRule::Type] The type of Auth Rule. For certain rule types, this determines the event stream
            #
            #   @param event_stream [Symbol, Lithic::Models::AuthRules::EventStream] The event stream during which the rule will be evaluated.
            #
            #   @param excluded_account_tokens [Array<String>] Deprecated: Use `entities.exclude` with `ACCOUNT` entities instead.
            #
            #   @param excluded_business_account_tokens [Array<String>] Deprecated: Use `entities.exclude` with `BUSINESS_ACCOUNT` entities instead.
            #
            #   @param excluded_card_tokens [Array<String>] Deprecated: Use `entities.exclude` with `CARD` entities instead.
            #
            #   @param name [String, nil] Auth Rule Name

            # Parameters for the Auth Rule
            #
            # @see Lithic::Models::AuthRules::V2CreateParams::Body::ProgramLevelRule#parameters
            module Parameters
              extend Lithic::Internal::Type::Union

              variant -> { Lithic::AuthRules::VelocityLimitParams }

              variant -> { Lithic::AuthRules::MerchantLockParameters }

              variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

              variant -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters }

              variant -> { Lithic::AuthRules::ConditionalACHActionParameters }

              variant -> { Lithic::AuthRules::ConditionalTokenizationActionParameters }

              variant -> { Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters }

              variant -> { Lithic::AuthRules::ConditionalACHPaymentUpdateActionParameters }

              # Parameters for defining a TypeScript code rule
              variant -> { Lithic::AuthRules::TypescriptCodeParameters }

              variant -> { Lithic::AuthRules::ConditionalAuthorizationAdjustmentParameters }

              # @!method self.variants
              #   @return [Array(Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::ConditionalACHPaymentUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters, Lithic::Models::AuthRules::ConditionalAuthorizationAdjustmentParameters)]
            end

            # The type of Auth Rule. For certain rule types, this determines the event stream
            # during which it will be evaluated. For rules that can be applied to one of
            # several event streams, the effective one is defined by the separate
            # `event_stream` field.
            #
            # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
            # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
            # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #   ACH_PAYMENT_UPDATE event stream.
            # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
            #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, CARD_TRANSACTION_UPDATE, or
            #   ACH_PAYMENT_UPDATE event stream.
            # - `OTHER`: A rule whose type is not exposed through this API. Rules of this type
            #   are read-only; `OTHER` cannot be used when creating a rule.
            #
            # @see Lithic::Models::AuthRules::V2CreateParams::Body::ProgramLevelRule#type
            module Type
              extend Lithic::Internal::Type::Enum

              VELOCITY_LIMIT = :VELOCITY_LIMIT
              MERCHANT_LOCK = :MERCHANT_LOCK
              CONDITIONAL_ACTION = :CONDITIONAL_ACTION
              TYPESCRIPT_CODE = :TYPESCRIPT_CODE
              OTHER = :OTHER

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Lithic::Models::AuthRules::V2CreateParams::Body::Rule, Lithic::Models::AuthRules::V2CreateParams::Body::AccountLevelRule, Lithic::Models::AuthRules::V2CreateParams::Body::CardLevelRule, Lithic::Models::AuthRules::V2CreateParams::Body::ProgramLevelRule)]
        end
      end
    end
  end
end
