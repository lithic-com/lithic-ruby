# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2ListResultsResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AuthRules::V2ListResultsResponse,
              Lithic::Internal::AnyHash
            )
          end

        # Globally unique identifier for the evaluation
        sig { returns(String) }
        attr_accessor :token

        # Actions returned by the rule evaluation
        sig do
          returns(
            T::Array[
              Lithic::Models::AuthRules::V2ListResultsResponse::Action::Variants
            ]
          )
        end
        attr_accessor :actions

        # The Auth Rule token
        sig { returns(String) }
        attr_accessor :auth_rule_token

        # Timestamp of the rule evaluation
        sig { returns(Time) }
        attr_accessor :evaluation_time

        # The event stream during which the rule was evaluated
        sig { returns(Lithic::AuthRules::EventStream::TaggedSymbol) }
        attr_accessor :event_stream

        # Token of the event that triggered the evaluation
        sig { returns(String) }
        attr_accessor :event_token

        # The state of the Auth Rule
        sig do
          returns(
            Lithic::Models::AuthRules::V2ListResultsResponse::Mode::TaggedSymbol
          )
        end
        attr_accessor :mode

        # Version of the rule that was evaluated
        sig { returns(Integer) }
        attr_accessor :rule_version

        # Result of an Auth Rule evaluation
        sig do
          params(
            token: String,
            actions:
              T::Array[
                T.any(
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::AuthorizationAction::OrHash,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::Authentication3DSAction::OrHash,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::OrHash,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::OrHash,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction::OrHash,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::OrHash
                )
              ],
            auth_rule_token: String,
            evaluation_time: Time,
            event_stream: Lithic::AuthRules::EventStream::OrSymbol,
            event_token: String,
            mode:
              Lithic::Models::AuthRules::V2ListResultsResponse::Mode::OrSymbol,
            rule_version: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier for the evaluation
          token:,
          # Actions returned by the rule evaluation
          actions:,
          # The Auth Rule token
          auth_rule_token:,
          # Timestamp of the rule evaluation
          evaluation_time:,
          # The event stream during which the rule was evaluated
          event_stream:,
          # Token of the event that triggered the evaluation
          event_token:,
          # The state of the Auth Rule
          mode:,
          # Version of the rule that was evaluated
          rule_version:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              actions:
                T::Array[
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::Variants
                ],
              auth_rule_token: String,
              evaluation_time: Time,
              event_stream: Lithic::AuthRules::EventStream::TaggedSymbol,
              event_token: String,
              mode:
                Lithic::Models::AuthRules::V2ListResultsResponse::Mode::TaggedSymbol,
              rule_version: Integer
            }
          )
        end
        def to_hash
        end

        module Action
          extend Lithic::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Lithic::Models::AuthRules::V2ListResultsResponse::Action::AuthorizationAction,
                Lithic::Models::AuthRules::V2ListResultsResponse::Action::Authentication3DSAction,
                Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction,
                Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction,
                Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction,
                Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction
              )
            end

          class AuthorizationAction < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::AuthorizationAction,
                  Lithic::Internal::AnyHash
                )
              end

            # Optional explanation for why this action was taken
            sig { returns(T.nilable(String)) }
            attr_reader :explanation

            sig { params(explanation: String).void }
            attr_writer :explanation

            sig { params(explanation: String).returns(T.attached_class) }
            def self.new(
              # Optional explanation for why this action was taken
              explanation: nil
            )
            end

            sig { override.returns({ explanation: String }) }
            def to_hash
            end
          end

          class Authentication3DSAction < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::Authentication3DSAction,
                  Lithic::Internal::AnyHash
                )
              end

            # Optional explanation for why this action was taken
            sig { returns(T.nilable(String)) }
            attr_reader :explanation

            sig { params(explanation: String).void }
            attr_writer :explanation

            sig { params(explanation: String).returns(T.attached_class) }
            def self.new(
              # Optional explanation for why this action was taken
              explanation: nil
            )
            end

            sig { override.returns({ explanation: String }) }
            def to_hash
            end
          end

          class DeclineAction < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction,
                  Lithic::Internal::AnyHash
                )
              end

            # Decline the tokenization request
            sig do
              returns(
                Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # Reason code for declining the tokenization request
            sig do
              returns(
                T.nilable(
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              )
            end
            attr_reader :reason

            sig do
              params(
                reason:
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::OrSymbol
              ).void
            end
            attr_writer :reason

            sig do
              params(
                type:
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Type::OrSymbol,
                reason:
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::OrSymbol
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
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Type::TaggedSymbol,
                  reason:
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
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
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DECLINE =
                T.let(
                  :DECLINE,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Type::TaggedSymbol
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
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACCOUNT_SCORE_1 =
                T.let(
                  :ACCOUNT_SCORE_1,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              DEVICE_SCORE_1 =
                T.let(
                  :DEVICE_SCORE_1,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              ALL_WALLET_DECLINE_REASONS_PRESENT =
                T.let(
                  :ALL_WALLET_DECLINE_REASONS_PRESENT,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              WALLET_RECOMMENDED_DECISION_RED =
                T.let(
                  :WALLET_RECOMMENDED_DECISION_RED,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              CVC_MISMATCH =
                T.let(
                  :CVC_MISMATCH,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              CARD_EXPIRY_MONTH_MISMATCH =
                T.let(
                  :CARD_EXPIRY_MONTH_MISMATCH,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              CARD_EXPIRY_YEAR_MISMATCH =
                T.let(
                  :CARD_EXPIRY_YEAR_MISMATCH,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              CARD_INVALID_STATE =
                T.let(
                  :CARD_INVALID_STATE,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              CUSTOMER_RED_PATH =
                T.let(
                  :CUSTOMER_RED_PATH,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              INVALID_CUSTOMER_RESPONSE =
                T.let(
                  :INVALID_CUSTOMER_RESPONSE,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              NETWORK_FAILURE =
                T.let(
                  :NETWORK_FAILURE,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              GENERIC_DECLINE =
                T.let(
                  :GENERIC_DECLINE,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )
              DIGITAL_CARD_ART_REQUIRED =
                T.let(
                  :DIGITAL_CARD_ART_REQUIRED,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason::TaggedSymbol
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
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction,
                  Lithic::Internal::AnyHash
                )
              end

            # Require two-factor authentication for the tokenization request
            sig do
              returns(
                Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # Reason code for requiring two-factor authentication
            sig do
              returns(
                T.nilable(
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              )
            end
            attr_reader :reason

            sig do
              params(
                reason:
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::OrSymbol
              ).void
            end
            attr_writer :reason

            sig do
              params(
                type:
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Type::OrSymbol,
                reason:
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::OrSymbol
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
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Type::TaggedSymbol,
                  reason:
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
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
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              REQUIRE_TFA =
                T.let(
                  :REQUIRE_TFA,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Type::TaggedSymbol
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
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WALLET_RECOMMENDED_TFA =
                T.let(
                  :WALLET_RECOMMENDED_TFA,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              SUSPICIOUS_ACTIVITY =
                T.let(
                  :SUSPICIOUS_ACTIVITY,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              DEVICE_RECENTLY_LOST =
                T.let(
                  :DEVICE_RECENTLY_LOST,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              TOO_MANY_RECENT_ATTEMPTS =
                T.let(
                  :TOO_MANY_RECENT_ATTEMPTS,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              TOO_MANY_RECENT_TOKENS =
                T.let(
                  :TOO_MANY_RECENT_TOKENS,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              TOO_MANY_DIFFERENT_CARDHOLDERS =
                T.let(
                  :TOO_MANY_DIFFERENT_CARDHOLDERS,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              OUTSIDE_HOME_TERRITORY =
                T.let(
                  :OUTSIDE_HOME_TERRITORY,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              HAS_SUSPENDED_TOKENS =
                T.let(
                  :HAS_SUSPENDED_TOKENS,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              HIGH_RISK =
                T.let(
                  :HIGH_RISK,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              ACCOUNT_SCORE_LOW =
                T.let(
                  :ACCOUNT_SCORE_LOW,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              DEVICE_SCORE_LOW =
                T.let(
                  :DEVICE_SCORE_LOW,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              CARD_STATE_TFA =
                T.let(
                  :CARD_STATE_TFA,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              HARDCODED_TFA =
                T.let(
                  :HARDCODED_TFA,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              CUSTOMER_RULE_TFA =
                T.let(
                  :CUSTOMER_RULE_TFA,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )
              DEVICE_HOST_CARD_EMULATION =
                T.let(
                  :DEVICE_HOST_CARD_EMULATION,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class ApproveAction < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction,
                  Lithic::Internal::AnyHash
                )
              end

            # Approve the ACH transaction
            sig do
              returns(
                Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                type:
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Approve the ACH transaction
              type:
            )
            end

            sig do
              override.returns(
                {
                  type:
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Approve the ACH transaction
            module Type
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              APPROVE =
                T.let(
                  :APPROVE,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class ReturnAction < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction,
                  Lithic::Internal::AnyHash
                )
              end

            # NACHA return code to use when returning the transaction. Note that the list of
            # available return codes is subject to an allowlist configured at the program
            # level
            sig do
              returns(
                Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
              )
            end
            attr_accessor :code

            # Return the ACH transaction
            sig do
              returns(
                Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                code:
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::OrSymbol,
                type:
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # NACHA return code to use when returning the transaction. Note that the list of
              # available return codes is subject to an allowlist configured at the program
              # level
              code:,
              # Return the ACH transaction
              type:
            )
            end

            sig do
              override.returns(
                {
                  code:
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol,
                  type:
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # NACHA return code to use when returning the transaction. Note that the list of
            # available return codes is subject to an allowlist configured at the program
            # level
            module Code
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              R01 =
                T.let(
                  :R01,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R02 =
                T.let(
                  :R02,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R03 =
                T.let(
                  :R03,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R04 =
                T.let(
                  :R04,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R05 =
                T.let(
                  :R05,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R06 =
                T.let(
                  :R06,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R07 =
                T.let(
                  :R07,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R08 =
                T.let(
                  :R08,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R09 =
                T.let(
                  :R09,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R10 =
                T.let(
                  :R10,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R11 =
                T.let(
                  :R11,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R12 =
                T.let(
                  :R12,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R13 =
                T.let(
                  :R13,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R14 =
                T.let(
                  :R14,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R15 =
                T.let(
                  :R15,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R16 =
                T.let(
                  :R16,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R17 =
                T.let(
                  :R17,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R18 =
                T.let(
                  :R18,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R19 =
                T.let(
                  :R19,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R20 =
                T.let(
                  :R20,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R21 =
                T.let(
                  :R21,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R22 =
                T.let(
                  :R22,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R23 =
                T.let(
                  :R23,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R24 =
                T.let(
                  :R24,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R25 =
                T.let(
                  :R25,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R26 =
                T.let(
                  :R26,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R27 =
                T.let(
                  :R27,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R28 =
                T.let(
                  :R28,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R29 =
                T.let(
                  :R29,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R30 =
                T.let(
                  :R30,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R31 =
                T.let(
                  :R31,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R32 =
                T.let(
                  :R32,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R33 =
                T.let(
                  :R33,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R34 =
                T.let(
                  :R34,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R35 =
                T.let(
                  :R35,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R36 =
                T.let(
                  :R36,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R37 =
                T.let(
                  :R37,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R38 =
                T.let(
                  :R38,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R39 =
                T.let(
                  :R39,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R40 =
                T.let(
                  :R40,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R41 =
                T.let(
                  :R41,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R42 =
                T.let(
                  :R42,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R43 =
                T.let(
                  :R43,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R44 =
                T.let(
                  :R44,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R45 =
                T.let(
                  :R45,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R46 =
                T.let(
                  :R46,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R47 =
                T.let(
                  :R47,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R50 =
                T.let(
                  :R50,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R51 =
                T.let(
                  :R51,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R52 =
                T.let(
                  :R52,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R53 =
                T.let(
                  :R53,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R61 =
                T.let(
                  :R61,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R62 =
                T.let(
                  :R62,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R67 =
                T.let(
                  :R67,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R68 =
                T.let(
                  :R68,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R69 =
                T.let(
                  :R69,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R70 =
                T.let(
                  :R70,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R71 =
                T.let(
                  :R71,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R72 =
                T.let(
                  :R72,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R73 =
                T.let(
                  :R73,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R74 =
                T.let(
                  :R74,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R75 =
                T.let(
                  :R75,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R76 =
                T.let(
                  :R76,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R77 =
                T.let(
                  :R77,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R80 =
                T.let(
                  :R80,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R81 =
                T.let(
                  :R81,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R82 =
                T.let(
                  :R82,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R83 =
                T.let(
                  :R83,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R84 =
                T.let(
                  :R84,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )
              R85 =
                T.let(
                  :R85,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Return the ACH transaction
            module Type
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              RETURN =
                T.let(
                  :RETURN,
                  Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Type::TaggedSymbol
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
                Lithic::Models::AuthRules::V2ListResultsResponse::Action::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # The state of the Auth Rule
        module Mode
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::Models::AuthRules::V2ListResultsResponse::Mode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :ACTIVE,
              Lithic::Models::AuthRules::V2ListResultsResponse::Mode::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :INACTIVE,
              Lithic::Models::AuthRules::V2ListResultsResponse::Mode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::Models::AuthRules::V2ListResultsResponse::Mode::TaggedSymbol
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
