# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class ConditionalTokenizationActionParameters < Lithic::Internal::Type::BaseModel
        # @!attribute action
        #   The action to take if the conditions are met
        #
        #   @return [Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction]
        required :action, union: -> { Lithic::AuthRules::ConditionalTokenizationActionParameters::Action }

        # @!attribute conditions
        #
        #   @return [Array<Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Condition>]
        required :conditions,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition] }

        # @!method initialize(action:, conditions:)
        #   @param action [Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction] The action to take if the conditions are met
        #
        #   @param conditions [Array<Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Condition>]

        # The action to take if the conditions are met
        #
        # @see Lithic::Models::AuthRules::ConditionalTokenizationActionParameters#action
        module Action
          extend Lithic::Internal::Type::Union

          variant -> { Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction }

          variant -> { Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction }

          class DeclineAction < Lithic::Internal::Type::BaseModel
            # @!attribute type
            #   Decline the tokenization request
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Type]
            required :type,
                     enum: -> { Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Type }

            # @!attribute reason
            #   Reason code for declining the tokenization request
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason, nil]
            optional :reason,
                     enum: -> { Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason }

            # @!method initialize(type:, reason: nil)
            #   @param type [Symbol, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Type] Decline the tokenization request
            #
            #   @param reason [Symbol, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason] Reason code for declining the tokenization request

            # Decline the tokenization request
            #
            # @see Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction#type
            module Type
              extend Lithic::Internal::Type::Enum

              DECLINE = :DECLINE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Reason code for declining the tokenization request
            #
            # @see Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction#reason
            module Reason
              extend Lithic::Internal::Type::Enum

              ACCOUNT_SCORE_1 = :ACCOUNT_SCORE_1
              DEVICE_SCORE_1 = :DEVICE_SCORE_1
              ALL_WALLET_DECLINE_REASONS_PRESENT = :ALL_WALLET_DECLINE_REASONS_PRESENT
              WALLET_RECOMMENDED_DECISION_RED = :WALLET_RECOMMENDED_DECISION_RED
              CVC_MISMATCH = :CVC_MISMATCH
              CARD_EXPIRY_MONTH_MISMATCH = :CARD_EXPIRY_MONTH_MISMATCH
              CARD_EXPIRY_YEAR_MISMATCH = :CARD_EXPIRY_YEAR_MISMATCH
              CARD_INVALID_STATE = :CARD_INVALID_STATE
              CUSTOMER_RED_PATH = :CUSTOMER_RED_PATH
              INVALID_CUSTOMER_RESPONSE = :INVALID_CUSTOMER_RESPONSE
              NETWORK_FAILURE = :NETWORK_FAILURE
              GENERIC_DECLINE = :GENERIC_DECLINE
              DIGITAL_CARD_ART_REQUIRED = :DIGITAL_CARD_ART_REQUIRED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class RequireTfaAction < Lithic::Internal::Type::BaseModel
            # @!attribute type
            #   Require two-factor authentication for the tokenization request
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Type]
            required :type,
                     enum: -> { Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Type }

            # @!attribute reason
            #   Reason code for requiring two-factor authentication
            #
            #   @return [Symbol, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason, nil]
            optional :reason,
                     enum: -> { Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason }

            # @!method initialize(type:, reason: nil)
            #   @param type [Symbol, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Type] Require two-factor authentication for the tokenization request
            #
            #   @param reason [Symbol, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason] Reason code for requiring two-factor authentication

            # Require two-factor authentication for the tokenization request
            #
            # @see Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction#type
            module Type
              extend Lithic::Internal::Type::Enum

              REQUIRE_TFA = :REQUIRE_TFA

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Reason code for requiring two-factor authentication
            #
            # @see Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction#reason
            module Reason
              extend Lithic::Internal::Type::Enum

              WALLET_RECOMMENDED_TFA = :WALLET_RECOMMENDED_TFA
              SUSPICIOUS_ACTIVITY = :SUSPICIOUS_ACTIVITY
              DEVICE_RECENTLY_LOST = :DEVICE_RECENTLY_LOST
              TOO_MANY_RECENT_ATTEMPTS = :TOO_MANY_RECENT_ATTEMPTS
              TOO_MANY_RECENT_TOKENS = :TOO_MANY_RECENT_TOKENS
              TOO_MANY_DIFFERENT_CARDHOLDERS = :TOO_MANY_DIFFERENT_CARDHOLDERS
              OUTSIDE_HOME_TERRITORY = :OUTSIDE_HOME_TERRITORY
              HAS_SUSPENDED_TOKENS = :HAS_SUSPENDED_TOKENS
              HIGH_RISK = :HIGH_RISK
              ACCOUNT_SCORE_LOW = :ACCOUNT_SCORE_LOW
              DEVICE_SCORE_LOW = :DEVICE_SCORE_LOW
              CARD_STATE_TFA = :CARD_STATE_TFA
              HARDCODED_TFA = :HARDCODED_TFA
              CUSTOMER_RULE_TFA = :CUSTOMER_RULE_TFA
              DEVICE_HOST_CARD_EMULATION = :DEVICE_HOST_CARD_EMULATION

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction)]
        end

        class Condition < Lithic::Internal::Type::BaseModel
          # @!attribute attribute
          #   The attribute to target.
          #
          #   The following attributes may be targeted:
          #
          #   - `TIMESTAMP`: The timestamp of the tokenization request in ISO 8601 format.
          #   - `TOKENIZATION_CHANNEL`: The channel through which the tokenization request was
          #     initiated (e.g., DIGITAL_WALLET, ECOMMERCE).
          #   - `TOKENIZATION_SOURCE`: The source of the tokenization request.
          #   - `TOKEN_REQUESTOR_NAME`: The name of the entity requesting the token. Valid
          #     values are `ALT_ID`, `AMAZON_ONE`, `AMERICAN_EXPRESS_TOKEN_SERVICE`,
          #     `ANDROID_PAY`, `APPLE_PAY`, `FACEBOOK`, `FITBIT_PAY`, `GARMIN_PAY`,
          #     `GOOGLE_PAY`, `GOOGLE_VCN`, `ISSUER_HCE`, `MICROSOFT_PAY`, `NETFLIX`,
          #     `SAMSUNG_PAY`, `UNKNOWN`, `VISA_CHECKOUT`.
          #   - `WALLET_ACCOUNT_SCORE`: Risk score for the account in the digital wallet.
          #     Numeric value where lower numbers indicate higher risk (e.g., 1 = high risk, 2
          #     = medium risk).
          #   - `WALLET_DEVICE_SCORE`: Risk score for the device in the digital wallet.
          #     Numeric value where lower numbers indicate higher risk (e.g., 1 = high risk, 2
          #     = medium risk).
          #   - `WALLET_RECOMMENDED_DECISION`: The decision recommended by the digital wallet
          #     provider. Valid values include APPROVE, DECLINE,
          #     REQUIRE_ADDITIONAL_AUTHENTICATION.
          #   - `WALLET_RECOMMENDATION_REASONS`: List of reasons provided by the digital
          #     wallet provider for the recommended decision. Valid values are
          #     `ACCOUNT_CARD_TOO_NEW`, `ACCOUNT_RECENTLY_CHANGED`, `ACCOUNT_TOO_NEW`,
          #     `ACCOUNT_TOO_NEW_SINCE_LAUNCH`, `DEVICE_RECENTLY_LOST`,
          #     `HAS_SUSPENDED_TOKENS`, `HIGH_RISK`, `INACTIVE_ACCOUNT`, `LOW_ACCOUNT_SCORE`,
          #     `LOW_DEVICE_SCORE`, `OUTSIDE_HOME_TERRITORY`, `SUSPICIOUS_ACTIVITY`,
          #     `TOO_MANY_DIFFERENT_CARDHOLDERS`, `TOO_MANY_RECENT_ATTEMPTS`,
          #     `TOO_MANY_RECENT_TOKENS`, `UNABLE_TO_ASSESS`.
          #   - `TOKEN_REQUESTOR_ID`: Unique identifier for the entity requesting the token.
          #   - `WALLET_TOKEN_STATUS`: The current status of the wallet token.
          #   - `CARD_STATE`: The state of the card being tokenized. Valid values are
          #     `CLOSED`, `OPEN`, `PAUSED`, `PENDING_ACTIVATION`, `PENDING_FULFILLMENT`.
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute]
          required :attribute,
                   enum: -> { Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute }

          # @!attribute operation
          #   The operation to apply to the attribute
          #
          #   @return [Symbol, Lithic::Models::AuthRules::ConditionalOperation]
          required :operation, enum: -> { Lithic::AuthRules::ConditionalOperation }

          # @!attribute value
          #   A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          #
          #   @return [String, Integer, Array<String>, Time]
          required :value, union: -> { Lithic::AuthRules::ConditionalValue }

          # @!method initialize(attribute:, operation:, value:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Condition}
          #   for more details.
          #
          #   @param attribute [Symbol, Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute] The attribute to target.
          #
          #   @param operation [Symbol, Lithic::Models::AuthRules::ConditionalOperation] The operation to apply to the attribute
          #
          #   @param value [String, Integer, Array<String>, Time] A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`

          # The attribute to target.
          #
          # The following attributes may be targeted:
          #
          # - `TIMESTAMP`: The timestamp of the tokenization request in ISO 8601 format.
          # - `TOKENIZATION_CHANNEL`: The channel through which the tokenization request was
          #   initiated (e.g., DIGITAL_WALLET, ECOMMERCE).
          # - `TOKENIZATION_SOURCE`: The source of the tokenization request.
          # - `TOKEN_REQUESTOR_NAME`: The name of the entity requesting the token. Valid
          #   values are `ALT_ID`, `AMAZON_ONE`, `AMERICAN_EXPRESS_TOKEN_SERVICE`,
          #   `ANDROID_PAY`, `APPLE_PAY`, `FACEBOOK`, `FITBIT_PAY`, `GARMIN_PAY`,
          #   `GOOGLE_PAY`, `GOOGLE_VCN`, `ISSUER_HCE`, `MICROSOFT_PAY`, `NETFLIX`,
          #   `SAMSUNG_PAY`, `UNKNOWN`, `VISA_CHECKOUT`.
          # - `WALLET_ACCOUNT_SCORE`: Risk score for the account in the digital wallet.
          #   Numeric value where lower numbers indicate higher risk (e.g., 1 = high risk, 2
          #   = medium risk).
          # - `WALLET_DEVICE_SCORE`: Risk score for the device in the digital wallet.
          #   Numeric value where lower numbers indicate higher risk (e.g., 1 = high risk, 2
          #   = medium risk).
          # - `WALLET_RECOMMENDED_DECISION`: The decision recommended by the digital wallet
          #   provider. Valid values include APPROVE, DECLINE,
          #   REQUIRE_ADDITIONAL_AUTHENTICATION.
          # - `WALLET_RECOMMENDATION_REASONS`: List of reasons provided by the digital
          #   wallet provider for the recommended decision. Valid values are
          #   `ACCOUNT_CARD_TOO_NEW`, `ACCOUNT_RECENTLY_CHANGED`, `ACCOUNT_TOO_NEW`,
          #   `ACCOUNT_TOO_NEW_SINCE_LAUNCH`, `DEVICE_RECENTLY_LOST`,
          #   `HAS_SUSPENDED_TOKENS`, `HIGH_RISK`, `INACTIVE_ACCOUNT`, `LOW_ACCOUNT_SCORE`,
          #   `LOW_DEVICE_SCORE`, `OUTSIDE_HOME_TERRITORY`, `SUSPICIOUS_ACTIVITY`,
          #   `TOO_MANY_DIFFERENT_CARDHOLDERS`, `TOO_MANY_RECENT_ATTEMPTS`,
          #   `TOO_MANY_RECENT_TOKENS`, `UNABLE_TO_ASSESS`.
          # - `TOKEN_REQUESTOR_ID`: Unique identifier for the entity requesting the token.
          # - `WALLET_TOKEN_STATUS`: The current status of the wallet token.
          # - `CARD_STATE`: The state of the card being tokenized. Valid values are
          #   `CLOSED`, `OPEN`, `PAUSED`, `PENDING_ACTIVATION`, `PENDING_FULFILLMENT`.
          #
          # @see Lithic::Models::AuthRules::ConditionalTokenizationActionParameters::Condition#attribute
          module Attribute
            extend Lithic::Internal::Type::Enum

            TIMESTAMP = :TIMESTAMP
            TOKENIZATION_CHANNEL = :TOKENIZATION_CHANNEL
            TOKENIZATION_SOURCE = :TOKENIZATION_SOURCE
            TOKEN_REQUESTOR_NAME = :TOKEN_REQUESTOR_NAME
            WALLET_ACCOUNT_SCORE = :WALLET_ACCOUNT_SCORE
            WALLET_DEVICE_SCORE = :WALLET_DEVICE_SCORE
            WALLET_RECOMMENDED_DECISION = :WALLET_RECOMMENDED_DECISION
            WALLET_RECOMMENDATION_REASONS = :WALLET_RECOMMENDATION_REASONS
            TOKEN_REQUESTOR_ID = :TOKEN_REQUESTOR_ID
            WALLET_TOKEN_STATUS = :WALLET_TOKEN_STATUS
            CARD_STATE = :CARD_STATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
