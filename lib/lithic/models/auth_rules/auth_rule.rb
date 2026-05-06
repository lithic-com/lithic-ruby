# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#create
      class AuthRule < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Auth Rule Token
        #
        #   @return [String]
        required :token, String

        # @!attribute account_tokens
        #   Account tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :account_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute business_account_tokens
        #   Business Account tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :business_account_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute card_tokens
        #   Card tokens to which the Auth Rule applies.
        #
        #   @return [Array<String>]
        required :card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute current_version
        #
        #   @return [Lithic::Models::AuthRules::AuthRule::CurrentVersion, nil]
        required :current_version, -> { Lithic::AuthRules::AuthRule::CurrentVersion }, nil?: true

        # @!attribute draft_version
        #
        #   @return [Lithic::Models::AuthRules::AuthRule::DraftVersion, nil]
        required :draft_version, -> { Lithic::AuthRules::AuthRule::DraftVersion }, nil?: true

        # @!attribute event_stream
        #   The event stream during which the rule will be evaluated.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::EventStream]
        required :event_stream, enum: -> { Lithic::AuthRules::EventStream }

        # @!attribute lithic_managed
        #   Indicates whether this auth rule is managed by Lithic. If true, the rule cannot
        #   be modified or deleted by the user
        #
        #   @return [Boolean]
        required :lithic_managed, Lithic::Internal::Type::Boolean

        # @!attribute name
        #   Auth Rule Name
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute program_level
        #   Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @return [Boolean]
        required :program_level, Lithic::Internal::Type::Boolean

        # @!attribute state
        #   The state of the Auth Rule
        #
        #   @return [Symbol, Lithic::Models::AuthRules::AuthRule::State]
        required :state, enum: -> { Lithic::AuthRules::AuthRule::State }

        # @!attribute type
        #   The type of Auth Rule. For certain rule types, this determines the event stream
        #   during which it will be evaluated. For rules that can be applied to one of
        #   several event streams, the effective one is defined by the separate
        #   `event_stream` field.
        #
        #   - `CONDITIONAL_BLOCK`: Deprecated. Use `CONDITIONAL_ACTION` instead.
        #     AUTHORIZATION event stream.
        #   - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        #   - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        #   - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
        #     ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, or CARD_TRANSACTION_UPDATE event
        #     stream.
        #   - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
        #     ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::AuthRule::Type]
        required :type, enum: -> { Lithic::AuthRules::AuthRule::Type }

        # @!attribute excluded_account_tokens
        #   Account tokens to which the Auth Rule does not apply.
        #
        #   @return [Array<String>, nil]
        optional :excluded_account_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute excluded_business_account_tokens
        #   Business account tokens to which the Auth Rule does not apply.
        #
        #   @return [Array<String>, nil]
        optional :excluded_business_account_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!attribute excluded_card_tokens
        #   Card tokens to which the Auth Rule does not apply.
        #
        #   @return [Array<String>, nil]
        optional :excluded_card_tokens, Lithic::Internal::Type::ArrayOf[String]

        # @!method initialize(token:, account_tokens:, business_account_tokens:, card_tokens:, current_version:, draft_version:, event_stream:, lithic_managed:, name:, program_level:, state:, type:, excluded_account_tokens: nil, excluded_business_account_tokens: nil, excluded_card_tokens: nil)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::AuthRule} for more details.
        #
        #   @param token [String] Auth Rule Token
        #
        #   @param account_tokens [Array<String>] Account tokens to which the Auth Rule applies.
        #
        #   @param business_account_tokens [Array<String>] Business Account tokens to which the Auth Rule applies.
        #
        #   @param card_tokens [Array<String>] Card tokens to which the Auth Rule applies.
        #
        #   @param current_version [Lithic::Models::AuthRules::AuthRule::CurrentVersion, nil]
        #
        #   @param draft_version [Lithic::Models::AuthRules::AuthRule::DraftVersion, nil]
        #
        #   @param event_stream [Symbol, Lithic::Models::AuthRules::EventStream] The event stream during which the rule will be evaluated.
        #
        #   @param lithic_managed [Boolean] Indicates whether this auth rule is managed by Lithic. If true, the rule cannot
        #
        #   @param name [String, nil] Auth Rule Name
        #
        #   @param program_level [Boolean] Whether the Auth Rule applies to all authorizations on the card program.
        #
        #   @param state [Symbol, Lithic::Models::AuthRules::AuthRule::State] The state of the Auth Rule
        #
        #   @param type [Symbol, Lithic::Models::AuthRules::AuthRule::Type] The type of Auth Rule. For certain rule types, this determines the event stream
        #
        #   @param excluded_account_tokens [Array<String>] Account tokens to which the Auth Rule does not apply.
        #
        #   @param excluded_business_account_tokens [Array<String>] Business account tokens to which the Auth Rule does not apply.
        #
        #   @param excluded_card_tokens [Array<String>] Card tokens to which the Auth Rule does not apply.

        # @see Lithic::Models::AuthRules::AuthRule#current_version
        class CurrentVersion < Lithic::Internal::Type::BaseModel
          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters]
          required :parameters, union: -> { Lithic::AuthRules::AuthRule::CurrentVersion::Parameters }

          response_only do
            # @!attribute version
            #   The version of the rule, this is incremented whenever the rule's parameters
            #   change.
            #
            #   @return [Integer]
            required :version, Integer
          end

          # @!method initialize(parameters:, version:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::AuthRule::CurrentVersion} for more details.
          #
          #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters] Parameters for the Auth Rule
          #
          #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::AuthRule::CurrentVersion#parameters
          module Parameters
            extend Lithic::Internal::Type::Union

            # Deprecated: Use CONDITIONAL_ACTION instead.
            variant -> { Lithic::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::AuthRules::VelocityLimitParams }

            variant -> { Lithic::AuthRules::MerchantLockParameters }

            variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

            variant -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters }

            variant -> { Lithic::AuthRules::ConditionalACHActionParameters }

            variant -> { Lithic::AuthRules::ConditionalTokenizationActionParameters }

            variant -> { Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters }

            # Parameters for defining a TypeScript code rule
            variant -> { Lithic::AuthRules::TypescriptCodeParameters }

            # @!method self.variants
            #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters)]
          end
        end

        # @see Lithic::Models::AuthRules::AuthRule#draft_version
        class DraftVersion < Lithic::Internal::Type::BaseModel
          # @!attribute error
          #   An error message if the draft version failed compilation. Populated when `state`
          #   is `ERROR`, `null` otherwise.
          #
          #   @return [String, nil]
          required :error, String, nil?: true

          # @!attribute parameters
          #   Parameters for the Auth Rule
          #
          #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters]
          required :parameters, union: -> { Lithic::AuthRules::AuthRule::DraftVersion::Parameters }

          # @!attribute state
          #   The state of the draft version. Most rules are created synchronously and the
          #   state is immediately `SHADOWING`. Rules backed by TypeScript code are compiled
          #   asynchronously — the state starts as `PENDING` and transitions to `SHADOWING` on
          #   success or `ERROR` on failure.
          #
          #   - `PENDING`: Compilation of the rule is in progress (TypeScript rules only).
          #   - `SHADOWING`: The draft version is ready and evaluating in shadow mode
          #     alongside the current active version. It can be promoted to the active
          #     version.
          #   - `ERROR`: Compilation of the rule failed. Check the `error` field for details.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::AuthRule::DraftVersion::State]
          required :state, enum: -> { Lithic::AuthRules::AuthRule::DraftVersion::State }

          response_only do
            # @!attribute version
            #   The version of the rule, this is incremented whenever the rule's parameters
            #   change.
            #
            #   @return [Integer]
            required :version, Integer
          end

          # @!method initialize(error:, parameters:, state:, version:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::AuthRule::DraftVersion} for more details.
          #
          #   @param error [String, nil] An error message if the draft version failed compilation. Populated when `state`
          #
          #   @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters] Parameters for the Auth Rule
          #
          #   @param state [Symbol, Lithic::Models::AuthRules::AuthRule::DraftVersion::State] The state of the draft version. Most rules are created synchronously and the sta
          #
          #   @param version [Integer] The version of the rule, this is incremented whenever the rule's parameters chan

          # Parameters for the Auth Rule
          #
          # @see Lithic::Models::AuthRules::AuthRule::DraftVersion#parameters
          module Parameters
            extend Lithic::Internal::Type::Union

            # Deprecated: Use CONDITIONAL_ACTION instead.
            variant -> { Lithic::AuthRules::ConditionalBlockParameters }

            variant -> { Lithic::AuthRules::VelocityLimitParams }

            variant -> { Lithic::AuthRules::MerchantLockParameters }

            variant -> { Lithic::AuthRules::Conditional3DSActionParameters }

            variant -> { Lithic::AuthRules::ConditionalAuthorizationActionParameters }

            variant -> { Lithic::AuthRules::ConditionalACHActionParameters }

            variant -> { Lithic::AuthRules::ConditionalTokenizationActionParameters }

            variant -> { Lithic::AuthRules::ConditionalCardTransactionUpdateActionParameters }

            # Parameters for defining a TypeScript code rule
            variant -> { Lithic::AuthRules::TypescriptCodeParameters }

            # @!method self.variants
            #   @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, Lithic::Models::AuthRules::MerchantLockParameters, Lithic::Models::AuthRules::Conditional3DSActionParameters, Lithic::Models::AuthRules::ConditionalAuthorizationActionParameters, Lithic::Models::AuthRules::ConditionalACHActionParameters, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters, Lithic::Models::AuthRules::ConditionalCardTransactionUpdateActionParameters, Lithic::Models::AuthRules::TypescriptCodeParameters)]
          end

          # The state of the draft version. Most rules are created synchronously and the
          # state is immediately `SHADOWING`. Rules backed by TypeScript code are compiled
          # asynchronously — the state starts as `PENDING` and transitions to `SHADOWING` on
          # success or `ERROR` on failure.
          #
          # - `PENDING`: Compilation of the rule is in progress (TypeScript rules only).
          # - `SHADOWING`: The draft version is ready and evaluating in shadow mode
          #   alongside the current active version. It can be promoted to the active
          #   version.
          # - `ERROR`: Compilation of the rule failed. Check the `error` field for details.
          #
          # @see Lithic::Models::AuthRules::AuthRule::DraftVersion#state
          module State
            extend Lithic::Internal::Type::Enum

            PENDING = :PENDING
            SHADOWING = :SHADOWING
            ERROR = :ERROR

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The state of the Auth Rule
        #
        # @see Lithic::Models::AuthRules::AuthRule#state
        module State
          extend Lithic::Internal::Type::Enum

          ACTIVE = :ACTIVE
          INACTIVE = :INACTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of Auth Rule. For certain rule types, this determines the event stream
        # during which it will be evaluated. For rules that can be applied to one of
        # several event streams, the effective one is defined by the separate
        # `event_stream` field.
        #
        # - `CONDITIONAL_BLOCK`: Deprecated. Use `CONDITIONAL_ACTION` instead.
        #   AUTHORIZATION event stream.
        # - `VELOCITY_LIMIT`: AUTHORIZATION event stream.
        # - `MERCHANT_LOCK`: AUTHORIZATION event stream.
        # - `CONDITIONAL_ACTION`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
        #   ACH_CREDIT_RECEIPT, ACH_DEBIT_RECEIPT, or CARD_TRANSACTION_UPDATE event
        #   stream.
        # - `TYPESCRIPT_CODE`: AUTHORIZATION, THREE_DS_AUTHENTICATION, TOKENIZATION,
        #   ACH_CREDIT_RECEIPT, or ACH_DEBIT_RECEIPT event stream.
        #
        # @see Lithic::Models::AuthRules::AuthRule#type
        module Type
          extend Lithic::Internal::Type::Enum

          CONDITIONAL_BLOCK = :CONDITIONAL_BLOCK
          VELOCITY_LIMIT = :VELOCITY_LIMIT
          MERCHANT_LOCK = :MERCHANT_LOCK
          CONDITIONAL_ACTION = :CONDITIONAL_ACTION
          TYPESCRIPT_CODE = :TYPESCRIPT_CODE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    AuthRule = AuthRules::AuthRule
  end
end
