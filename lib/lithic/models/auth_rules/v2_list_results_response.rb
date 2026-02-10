# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#list_results
      class V2ListResultsResponse < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the evaluation
        #
        #   @return [String]
        required :token, String

        # @!attribute actions
        #   Actions returned by the rule evaluation
        #
        #   @return [Array<Lithic::Models::AuthRules::V2ListResultsResponse::Action::AuthorizationAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ThreeDSAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction>]
        required :actions,
                 -> { Lithic::Internal::Type::ArrayOf[union: Lithic::Models::AuthRules::V2ListResultsResponse::Action] }

        # @!attribute auth_rule_token
        #   The Auth Rule token
        #
        #   @return [String]
        required :auth_rule_token, String

        # @!attribute evaluation_time
        #   Timestamp of the rule evaluation
        #
        #   @return [Time]
        required :evaluation_time, Time

        # @!attribute event_stream
        #   The event stream during which the rule was evaluated
        #
        #   @return [Symbol, Lithic::Models::AuthRules::EventStream]
        required :event_stream, enum: -> { Lithic::AuthRules::EventStream }

        # @!attribute event_token
        #   Token of the event that triggered the evaluation
        #
        #   @return [String]
        required :event_token, String

        # @!attribute mode
        #   The state of the Auth Rule
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Mode]
        required :mode, enum: -> { Lithic::Models::AuthRules::V2ListResultsResponse::Mode }

        # @!attribute rule_version
        #   Version of the rule that was evaluated
        #
        #   @return [Integer]
        required :rule_version, Integer

        # @!method initialize(token:, actions:, auth_rule_token:, evaluation_time:, event_stream:, event_token:, mode:, rule_version:)
        #   Result of an Auth Rule evaluation
        #
        #   @param token [String] Globally unique identifier for the evaluation
        #
        #   @param actions [Array<Lithic::Models::AuthRules::V2ListResultsResponse::Action::AuthorizationAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ThreeDSAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction>] Actions returned by the rule evaluation
        #
        #   @param auth_rule_token [String] The Auth Rule token
        #
        #   @param evaluation_time [Time] Timestamp of the rule evaluation
        #
        #   @param event_stream [Symbol, Lithic::Models::AuthRules::EventStream] The event stream during which the rule was evaluated
        #
        #   @param event_token [String] Token of the event that triggered the evaluation
        #
        #   @param mode [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Mode] The state of the Auth Rule
        #
        #   @param rule_version [Integer] Version of the rule that was evaluated

        module Action
          extend Lithic::Internal::Type::Union

          variant -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::AuthorizationAction }

          variant -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::ThreeDSAction }

          variant -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction }

          variant -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction }

          variant -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction }

          variant -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction }

          class AuthorizationAction < Lithic::Internal::Type::BaseModel
            # @!attribute explanation
            #   Optional explanation for why this action was taken
            #
            #   @return [String, nil]
            optional :explanation, String

            # @!method initialize(explanation: nil)
            #   @param explanation [String] Optional explanation for why this action was taken
          end

          class ThreeDSAction < Lithic::Internal::Type::BaseModel
            # @!attribute explanation
            #   Optional explanation for why this action was taken
            #
            #   @return [String, nil]
            optional :explanation, String

            # @!method initialize(explanation: nil)
            #   @param explanation [String] Optional explanation for why this action was taken
          end

          class DeclineAction < Lithic::Internal::Type::BaseModel
            # @!attribute type
            #   Decline the tokenization request
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Type]
            required :type, enum: -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Type }

            # @!attribute reason
            #   Reason code for declining the tokenization request
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason, nil]
            optional :reason,
                     enum: -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason }

            # @!method initialize(type:, reason: nil)
            #   @param type [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Type] Decline the tokenization request
            #
            #   @param reason [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction::Reason] Reason code for declining the tokenization request

            # Decline the tokenization request
            #
            # @see Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction#type
            module Type
              extend Lithic::Internal::Type::Enum

              DECLINE = :DECLINE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Reason code for declining the tokenization request
            #
            # @see Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction#reason
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
            #   @return [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Type]
            required :type,
                     enum: -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Type }

            # @!attribute reason
            #   Reason code for requiring two-factor authentication
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason, nil]
            optional :reason,
                     enum: -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason }

            # @!method initialize(type:, reason: nil)
            #   @param type [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Type] Require two-factor authentication for the tokenization request
            #
            #   @param reason [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction::Reason] Reason code for requiring two-factor authentication

            # Require two-factor authentication for the tokenization request
            #
            # @see Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction#type
            module Type
              extend Lithic::Internal::Type::Enum

              REQUIRE_TFA = :REQUIRE_TFA

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Reason code for requiring two-factor authentication
            #
            # @see Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction#reason
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

          class ApproveAction < Lithic::Internal::Type::BaseModel
            # @!attribute type
            #   Approve the ACH transaction
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction::Type]
            required :type, enum: -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction::Type }

            # @!method initialize(type:)
            #   @param type [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction::Type] Approve the ACH transaction

            # Approve the ACH transaction
            #
            # @see Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction#type
            module Type
              extend Lithic::Internal::Type::Enum

              APPROVE = :APPROVE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class ReturnAction < Lithic::Internal::Type::BaseModel
            # @!attribute code
            #   NACHA return code to use when returning the transaction. Note that the list of
            #   available return codes is subject to an allowlist configured at the program
            #   level
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code]
            required :code, enum: -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code }

            # @!attribute type
            #   Return the ACH transaction
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Type]
            required :type, enum: -> { Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Type }

            # @!method initialize(code:, type:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction} for
            #   more details.
            #
            #   @param code [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Code] NACHA return code to use when returning the transaction. Note that the list of a
            #
            #   @param type [Symbol, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction::Type] Return the ACH transaction

            # NACHA return code to use when returning the transaction. Note that the list of
            # available return codes is subject to an allowlist configured at the program
            # level
            #
            # @see Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction#code
            module Code
              extend Lithic::Internal::Type::Enum

              R01 = :R01
              R02 = :R02
              R03 = :R03
              R04 = :R04
              R05 = :R05
              R06 = :R06
              R07 = :R07
              R08 = :R08
              R09 = :R09
              R10 = :R10
              R11 = :R11
              R12 = :R12
              R13 = :R13
              R14 = :R14
              R15 = :R15
              R16 = :R16
              R17 = :R17
              R18 = :R18
              R19 = :R19
              R20 = :R20
              R21 = :R21
              R22 = :R22
              R23 = :R23
              R24 = :R24
              R25 = :R25
              R26 = :R26
              R27 = :R27
              R28 = :R28
              R29 = :R29
              R30 = :R30
              R31 = :R31
              R32 = :R32
              R33 = :R33
              R34 = :R34
              R35 = :R35
              R36 = :R36
              R37 = :R37
              R38 = :R38
              R39 = :R39
              R40 = :R40
              R41 = :R41
              R42 = :R42
              R43 = :R43
              R44 = :R44
              R45 = :R45
              R46 = :R46
              R47 = :R47
              R50 = :R50
              R51 = :R51
              R52 = :R52
              R53 = :R53
              R61 = :R61
              R62 = :R62
              R67 = :R67
              R68 = :R68
              R69 = :R69
              R70 = :R70
              R71 = :R71
              R72 = :R72
              R73 = :R73
              R74 = :R74
              R75 = :R75
              R76 = :R76
              R77 = :R77
              R80 = :R80
              R81 = :R81
              R82 = :R82
              R83 = :R83
              R84 = :R84
              R85 = :R85

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Return the ACH transaction
            #
            # @see Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction#type
            module Type
              extend Lithic::Internal::Type::Enum

              RETURN = :RETURN

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Lithic::Models::AuthRules::V2ListResultsResponse::Action::AuthorizationAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ThreeDSAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::DeclineAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::RequireTfaAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ApproveAction, Lithic::Models::AuthRules::V2ListResultsResponse::Action::ReturnAction)]
        end

        # The state of the Auth Rule
        #
        # @see Lithic::Models::AuthRules::V2ListResultsResponse#mode
        module Mode
          extend Lithic::Internal::Type::Enum

          ACTIVE = :ACTIVE
          INACTIVE = :INACTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
