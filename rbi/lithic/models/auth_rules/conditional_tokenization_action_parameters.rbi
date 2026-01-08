# typed: strong

module Lithic
  module Models
    module AuthRules
      class ConditionalTokenizationActionParameters < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::ConditionalTokenizationActionParameters,
              Lithic::Internal::AnyHash
            )
          end

        # The action to take if the conditions are met
        sig do
          returns(
            T.any(
              Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction,
              Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction
            )
          )
        end
        attr_accessor :action

        sig do
          returns(
            T::Array[
              Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition
            ]
          )
        end
        attr_accessor :conditions

        sig do
          params(
            action:
              T.any(
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::OrHash,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::OrHash
              ),
            conditions:
              T::Array[
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The action to take if the conditions are met
          action:,
          conditions:
        )
        end

        sig do
          override.returns(
            {
              action:
                T.any(
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction
                ),
              conditions:
                T::Array[
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition
                ]
            }
          )
        end
        def to_hash
        end

        # The action to take if the conditions are met
        module Action
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction
              )
            end

          class DeclineAction < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction,
                  Lithic::Internal::AnyHash
                )
              end

            # Decline the tokenization request
            sig do
              returns(
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Type::OrSymbol
              )
            end
            attr_accessor :type

            # Reason code for declining the tokenization request
            sig do
              returns(
                T.nilable(
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::OrSymbol
                )
              )
            end
            attr_reader :reason

            sig do
              params(
                reason:
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::OrSymbol
              ).void
            end
            attr_writer :reason

            sig do
              params(
                type:
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Type::OrSymbol,
                reason:
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Decline the tokenization request
              type:,
              # Reason code for declining the tokenization request
              reason: nil
            )
            end

            sig do
              override.returns(
                {
                  type:
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Type::OrSymbol,
                  reason:
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Decline the tokenization request
            module Type
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DECLINE =
                T.let(
                  :DECLINE,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Reason code for declining the tokenization request
            module Reason
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACCOUNT_SCORE_1 =
                T.let(
                  :ACCOUNT_SCORE_1,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )
              DEVICE_SCORE_1 =
                T.let(
                  :DEVICE_SCORE_1,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )
              ALL_WALLET_DECLINE_REASONS_PRESENT =
                T.let(
                  :ALL_WALLET_DECLINE_REASONS_PRESENT,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )
              WALLET_RECOMMENDED_DECISION_RED =
                T.let(
                  :WALLET_RECOMMENDED_DECISION_RED,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )
              CVC_MISMATCH =
                T.let(
                  :CVC_MISMATCH,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )
              CARD_EXPIRY_MONTH_MISMATCH =
                T.let(
                  :CARD_EXPIRY_MONTH_MISMATCH,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )
              CARD_EXPIRY_YEAR_MISMATCH =
                T.let(
                  :CARD_EXPIRY_YEAR_MISMATCH,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )
              CARD_INVALID_STATE =
                T.let(
                  :CARD_INVALID_STATE,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )
              CUSTOMER_RED_PATH =
                T.let(
                  :CUSTOMER_RED_PATH,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )
              INVALID_CUSTOMER_RESPONSE =
                T.let(
                  :INVALID_CUSTOMER_RESPONSE,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )
              NETWORK_FAILURE =
                T.let(
                  :NETWORK_FAILURE,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )
              GENERIC_DECLINE =
                T.let(
                  :GENERIC_DECLINE,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )
              DIGITAL_CARD_ART_REQUIRED =
                T.let(
                  :DIGITAL_CARD_ART_REQUIRED,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::DeclineAction::Reason::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class RequireTfaAction < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction,
                  Lithic::Internal::AnyHash
                )
              end

            # Require two-factor authentication for the tokenization request
            sig do
              returns(
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Type::OrSymbol
              )
            end
            attr_accessor :type

            # Reason code for requiring two-factor authentication
            sig do
              returns(
                T.nilable(
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::OrSymbol
                )
              )
            end
            attr_reader :reason

            sig do
              params(
                reason:
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::OrSymbol
              ).void
            end
            attr_writer :reason

            sig do
              params(
                type:
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Type::OrSymbol,
                reason:
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Require two-factor authentication for the tokenization request
              type:,
              # Reason code for requiring two-factor authentication
              reason: nil
            )
            end

            sig do
              override.returns(
                {
                  type:
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Type::OrSymbol,
                  reason:
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Require two-factor authentication for the tokenization request
            module Type
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              REQUIRE_TFA =
                T.let(
                  :REQUIRE_TFA,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Reason code for requiring two-factor authentication
            module Reason
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WALLET_RECOMMENDED_TFA =
                T.let(
                  :WALLET_RECOMMENDED_TFA,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              SUSPICIOUS_ACTIVITY =
                T.let(
                  :SUSPICIOUS_ACTIVITY,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              DEVICE_RECENTLY_LOST =
                T.let(
                  :DEVICE_RECENTLY_LOST,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              TOO_MANY_RECENT_ATTEMPTS =
                T.let(
                  :TOO_MANY_RECENT_ATTEMPTS,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              TOO_MANY_RECENT_TOKENS =
                T.let(
                  :TOO_MANY_RECENT_TOKENS,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              TOO_MANY_DIFFERENT_CARDHOLDERS =
                T.let(
                  :TOO_MANY_DIFFERENT_CARDHOLDERS,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              OUTSIDE_HOME_TERRITORY =
                T.let(
                  :OUTSIDE_HOME_TERRITORY,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              HAS_SUSPENDED_TOKENS =
                T.let(
                  :HAS_SUSPENDED_TOKENS,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              HIGH_RISK =
                T.let(
                  :HIGH_RISK,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              ACCOUNT_SCORE_LOW =
                T.let(
                  :ACCOUNT_SCORE_LOW,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              DEVICE_SCORE_LOW =
                T.let(
                  :DEVICE_SCORE_LOW,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              CARD_STATE_TFA =
                T.let(
                  :CARD_STATE_TFA,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              HARDCODED_TFA =
                T.let(
                  :HARDCODED_TFA,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              CUSTOMER_RULE_TFA =
                T.let(
                  :CUSTOMER_RULE_TFA,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              DEVICE_HOST_CARD_EMULATION =
                T.let(
                  :DEVICE_HOST_CARD_EMULATION,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::RequireTfaAction::Reason::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Action::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class Condition < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition,
                Lithic::Internal::AnyHash
              )
            end

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
          sig do
            returns(
              Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::OrSymbol
            )
          end
          attr_accessor :attribute

          # The operation to apply to the attribute
          sig { returns(Lithic::AuthRules::ConditionalOperation::OrSymbol) }
          attr_accessor :operation

          # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
          sig { returns(Lithic::AuthRules::ConditionalValue::Variants) }
          attr_accessor :value

          sig do
            params(
              attribute:
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::OrSymbol,
              operation: Lithic::AuthRules::ConditionalOperation::OrSymbol,
              value: Lithic::AuthRules::ConditionalValue::Variants
            ).returns(T.attached_class)
          end
          def self.new(
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
            attribute:,
            # The operation to apply to the attribute
            operation:,
            # A regex string, to be used with `MATCHES` or `DOES_NOT_MATCH`
            value:
          )
          end

          sig do
            override.returns(
              {
                attribute:
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::OrSymbol,
                operation: Lithic::AuthRules::ConditionalOperation::OrSymbol,
                value: Lithic::AuthRules::ConditionalValue::Variants
              }
            )
          end
          def to_hash
          end

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
          module Attribute
            extend Lithic::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TIMESTAMP =
              T.let(
                :TIMESTAMP,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::TaggedSymbol
              )
            TOKENIZATION_CHANNEL =
              T.let(
                :TOKENIZATION_CHANNEL,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::TaggedSymbol
              )
            TOKENIZATION_SOURCE =
              T.let(
                :TOKENIZATION_SOURCE,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::TaggedSymbol
              )
            TOKEN_REQUESTOR_NAME =
              T.let(
                :TOKEN_REQUESTOR_NAME,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::TaggedSymbol
              )
            WALLET_ACCOUNT_SCORE =
              T.let(
                :WALLET_ACCOUNT_SCORE,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::TaggedSymbol
              )
            WALLET_DEVICE_SCORE =
              T.let(
                :WALLET_DEVICE_SCORE,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::TaggedSymbol
              )
            WALLET_RECOMMENDED_DECISION =
              T.let(
                :WALLET_RECOMMENDED_DECISION,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::TaggedSymbol
              )
            WALLET_RECOMMENDATION_REASONS =
              T.let(
                :WALLET_RECOMMENDATION_REASONS,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::TaggedSymbol
              )
            TOKEN_REQUESTOR_ID =
              T.let(
                :TOKEN_REQUESTOR_ID,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::TaggedSymbol
              )
            WALLET_TOKEN_STATUS =
              T.let(
                :WALLET_TOKEN_STATUS,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::TaggedSymbol
              )
            CARD_STATE =
              T.let(
                :CARD_STATE,
                Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Lithic::AuthRules::ConditionalTokenizationActionParameters::Condition::Attribute::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
