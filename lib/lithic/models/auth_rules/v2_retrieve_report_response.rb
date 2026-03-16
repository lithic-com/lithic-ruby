# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#retrieve_report
      class V2RetrieveReportResponse < Lithic::Internal::Type::BaseModel
        # @!attribute auth_rule_token
        #   Auth Rule Token
        #
        #   @return [String]
        required :auth_rule_token, String

        # @!attribute begin_
        #   The start date (UTC) of the report.
        #
        #   @return [Date]
        required :begin_, Date, api_name: :begin

        # @!attribute daily_statistics
        #   Daily evaluation statistics for the Auth Rule.
        #
        #   @return [Array<Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic>]
        required :daily_statistics,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic] }

        # @!attribute end_
        #   The end date (UTC) of the report.
        #
        #   @return [Date]
        required :end_, Date, api_name: :end

        # @!method initialize(auth_rule_token:, begin_:, daily_statistics:, end_:)
        #   @param auth_rule_token [String] Auth Rule Token
        #
        #   @param begin_ [Date] The start date (UTC) of the report.
        #
        #   @param daily_statistics [Array<Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic>] Daily evaluation statistics for the Auth Rule.
        #
        #   @param end_ [Date] The end date (UTC) of the report.

        class DailyStatistic < Lithic::Internal::Type::BaseModel
          # @!attribute current_version_statistics
          #   Detailed statistics for the current version of the rule.
          #
          #   @return [Lithic::Models::AuthRules::ReportStats, nil]
          required :current_version_statistics, -> { Lithic::AuthRules::ReportStats }, nil?: true

          # @!attribute date
          #   The date (UTC) for which the statistics are reported.
          #
          #   @return [Date]
          required :date, Date

          # @!attribute draft_version_statistics
          #   Detailed statistics for the draft version of the rule.
          #
          #   @return [Lithic::Models::AuthRules::ReportStats, nil]
          required :draft_version_statistics, -> { Lithic::AuthRules::ReportStats }, nil?: true

          # @!attribute versions
          #   Statistics for each version of the rule that was evaluated during the reported
          #   day.
          #
          #   @return [Array<Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version>]
          required :versions,
                   -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version] }

          # @!method initialize(current_version_statistics:, date:, draft_version_statistics:, versions:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic} for more
          #   details.
          #
          #   @param current_version_statistics [Lithic::Models::AuthRules::ReportStats, nil] Detailed statistics for the current version of the rule.
          #
          #   @param date [Date] The date (UTC) for which the statistics are reported.
          #
          #   @param draft_version_statistics [Lithic::Models::AuthRules::ReportStats, nil] Detailed statistics for the draft version of the rule.
          #
          #   @param versions [Array<Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version>] Statistics for each version of the rule that was evaluated during the reported d

          class Version < Lithic::Internal::Type::BaseModel
            # @!attribute action_counts
            #   A mapping of action types to the number of times that action was returned by
            #   this version during the relevant period. Actions are the possible outcomes of a
            #   rule evaluation, such as DECLINE, CHALLENGE, REQUIRE_TFA, etc. In case rule
            #   didn't trigger any action, it's counted under NO_ACTION key.
            #
            #   @return [Hash{Symbol=>Integer}]
            required :action_counts, Lithic::Internal::Type::HashOf[Integer]

            # @!attribute examples
            #   Example events and their outcomes for this version.
            #
            #   @return [Array<Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example>]
            required :examples,
                     -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example] }

            # @!attribute state
            #   The evaluation mode of this version during the reported period.
            #
            #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::State]
            required :state,
                     enum: -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::State }

            # @!attribute version
            #   The rule version number.
            #
            #   @return [Integer]
            required :version, Integer

            # @!method initialize(action_counts:, examples:, state:, version:)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version}
            #   for more details.
            #
            #   @param action_counts [Hash{Symbol=>Integer}] A mapping of action types to the number of times that action was returned by thi
            #
            #   @param examples [Array<Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example>] Example events and their outcomes for this version.
            #
            #   @param state [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::State] The evaluation mode of this version during the reported period.
            #
            #   @param version [Integer] The rule version number.

            class Example < Lithic::Internal::Type::BaseModel
              # @!attribute actions
              #   The actions taken by this version for this event.
              #
              #   @return [Array<Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction>]
              required :actions,
                       -> { Lithic::Internal::Type::ArrayOf[union: Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action] }

              # @!attribute event_token
              #   The event token.
              #
              #   @return [String]
              required :event_token, String

              # @!attribute timestamp
              #   The timestamp of the event.
              #
              #   @return [Time]
              required :timestamp, Time

              # @!method initialize(actions:, event_token:, timestamp:)
              #   @param actions [Array<Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction>] The actions taken by this version for this event.
              #
              #   @param event_token [String] The event token.
              #
              #   @param timestamp [Time] The timestamp of the event.

              module Action
                extend Lithic::Internal::Type::Union

                variant -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization }

                variant -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization }

                variant -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction }

                variant -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization }

                variant -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction }

                variant -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH }

                variant -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction }

                class DeclineActionAuthorization < Lithic::Internal::Type::BaseModel
                  # @!attribute code
                  #   The detailed result code explaining the specific reason for the decline
                  #
                  #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code]
                  required :code,
                           enum: -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code }

                  # @!attribute type
                  #
                  #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Type]
                  required :type,
                           enum: -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Type }

                  # @!method initialize(code:, type:)
                  #   @param code [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code] The detailed result code explaining the specific reason for the decline
                  #
                  #   @param type [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Type]

                  # The detailed result code explaining the specific reason for the decline
                  #
                  # @see Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization#code
                  module Code
                    extend Lithic::Internal::Type::Enum

                    ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED = :ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED
                    ACCOUNT_DELINQUENT = :ACCOUNT_DELINQUENT
                    ACCOUNT_INACTIVE = :ACCOUNT_INACTIVE
                    ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED = :ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED
                    ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED = :ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED
                    ACCOUNT_PAUSED = :ACCOUNT_PAUSED
                    ACCOUNT_UNDER_REVIEW = :ACCOUNT_UNDER_REVIEW
                    ADDRESS_INCORRECT = :ADDRESS_INCORRECT
                    APPROVED = :APPROVED
                    AUTH_RULE_ALLOWED_COUNTRY = :AUTH_RULE_ALLOWED_COUNTRY
                    AUTH_RULE_ALLOWED_MCC = :AUTH_RULE_ALLOWED_MCC
                    AUTH_RULE_BLOCKED_COUNTRY = :AUTH_RULE_BLOCKED_COUNTRY
                    AUTH_RULE_BLOCKED_MCC = :AUTH_RULE_BLOCKED_MCC
                    AUTH_RULE = :AUTH_RULE
                    CARD_CLOSED = :CARD_CLOSED
                    CARD_CRYPTOGRAM_VALIDATION_FAILURE = :CARD_CRYPTOGRAM_VALIDATION_FAILURE
                    CARD_EXPIRED = :CARD_EXPIRED
                    CARD_EXPIRY_DATE_INCORRECT = :CARD_EXPIRY_DATE_INCORRECT
                    CARD_INVALID = :CARD_INVALID
                    CARD_NOT_ACTIVATED = :CARD_NOT_ACTIVATED
                    CARD_PAUSED = :CARD_PAUSED
                    CARD_PIN_INCORRECT = :CARD_PIN_INCORRECT
                    CARD_RESTRICTED = :CARD_RESTRICTED
                    CARD_SECURITY_CODE_INCORRECT = :CARD_SECURITY_CODE_INCORRECT
                    CARD_SPEND_LIMIT_EXCEEDED = :CARD_SPEND_LIMIT_EXCEEDED
                    CONTACT_CARD_ISSUER = :CONTACT_CARD_ISSUER
                    CUSTOMER_ASA_TIMEOUT = :CUSTOMER_ASA_TIMEOUT
                    CUSTOM_ASA_RESULT = :CUSTOM_ASA_RESULT
                    DECLINED = :DECLINED
                    DO_NOT_HONOR = :DO_NOT_HONOR
                    DRIVER_NUMBER_INVALID = :DRIVER_NUMBER_INVALID
                    FORMAT_ERROR = :FORMAT_ERROR
                    INSUFFICIENT_FUNDING_SOURCE_BALANCE = :INSUFFICIENT_FUNDING_SOURCE_BALANCE
                    INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS
                    LITHIC_SYSTEM_ERROR = :LITHIC_SYSTEM_ERROR
                    LITHIC_SYSTEM_RATE_LIMIT = :LITHIC_SYSTEM_RATE_LIMIT
                    MALFORMED_ASA_RESPONSE = :MALFORMED_ASA_RESPONSE
                    MERCHANT_INVALID = :MERCHANT_INVALID
                    MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE = :MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE
                    MERCHANT_NOT_PERMITTED = :MERCHANT_NOT_PERMITTED
                    OVER_REVERSAL_ATTEMPTED = :OVER_REVERSAL_ATTEMPTED
                    PIN_BLOCKED = :PIN_BLOCKED
                    PROGRAM_CARD_SPEND_LIMIT_EXCEEDED = :PROGRAM_CARD_SPEND_LIMIT_EXCEEDED
                    PROGRAM_SUSPENDED = :PROGRAM_SUSPENDED
                    PROGRAM_USAGE_RESTRICTION = :PROGRAM_USAGE_RESTRICTION
                    REVERSAL_UNMATCHED = :REVERSAL_UNMATCHED
                    SECURITY_VIOLATION = :SECURITY_VIOLATION
                    SINGLE_USE_CARD_REATTEMPTED = :SINGLE_USE_CARD_REATTEMPTED
                    SUSPECTED_FRAUD = :SUSPECTED_FRAUD
                    TRANSACTION_INVALID = :TRANSACTION_INVALID
                    TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL = :TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL
                    TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER = :TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER
                    TRANSACTION_PREVIOUSLY_COMPLETED = :TRANSACTION_PREVIOUSLY_COMPLETED
                    UNAUTHORIZED_MERCHANT = :UNAUTHORIZED_MERCHANT
                    VEHICLE_NUMBER_INVALID = :VEHICLE_NUMBER_INVALID
                    CARDHOLDER_CHALLENGED = :CARDHOLDER_CHALLENGED
                    CARDHOLDER_CHALLENGE_FAILED = :CARDHOLDER_CHALLENGE_FAILED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization#type
                  module Type
                    extend Lithic::Internal::Type::Enum

                    DECLINE = :DECLINE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class ChallengeActionAuthorization < Lithic::Internal::Type::BaseModel
                  # @!attribute type
                  #
                  #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization::Type]
                  required :type,
                           enum: -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization::Type }

                  # @!method initialize(type:)
                  #   @param type [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization::Type]

                  # @see Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization#type
                  module Type
                    extend Lithic::Internal::Type::Enum

                    CHALLENGE = :CHALLENGE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class ResultAuthentication3DSAction < Lithic::Internal::Type::BaseModel
                  # @!attribute type
                  #
                  #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction::Type]
                  required :type,
                           enum: -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction::Type }

                  # @!method initialize(type:)
                  #   @param type [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction::Type]

                  # @see Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction#type
                  module Type
                    extend Lithic::Internal::Type::Enum

                    DECLINE = :DECLINE
                    CHALLENGE = :CHALLENGE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class DeclineActionTokenization < Lithic::Internal::Type::BaseModel
                  # @!attribute type
                  #   Decline the tokenization request
                  #
                  #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Type]
                  required :type,
                           enum: -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Type }

                  # @!attribute reason
                  #   Reason code for declining the tokenization request
                  #
                  #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason, nil]
                  optional :reason,
                           enum: -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason }

                  # @!method initialize(type:, reason: nil)
                  #   @param type [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Type] Decline the tokenization request
                  #
                  #   @param reason [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason] Reason code for declining the tokenization request

                  # Decline the tokenization request
                  #
                  # @see Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization#type
                  module Type
                    extend Lithic::Internal::Type::Enum

                    DECLINE = :DECLINE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # Reason code for declining the tokenization request
                  #
                  # @see Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization#reason
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
                  #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Type]
                  required :type,
                           enum: -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Type }

                  # @!attribute reason
                  #   Reason code for requiring two-factor authentication
                  #
                  #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason, nil]
                  optional :reason,
                           enum: -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason }

                  # @!method initialize(type:, reason: nil)
                  #   @param type [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Type] Require two-factor authentication for the tokenization request
                  #
                  #   @param reason [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason] Reason code for requiring two-factor authentication

                  # Require two-factor authentication for the tokenization request
                  #
                  # @see Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction#type
                  module Type
                    extend Lithic::Internal::Type::Enum

                    REQUIRE_TFA = :REQUIRE_TFA

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # Reason code for requiring two-factor authentication
                  #
                  # @see Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction#reason
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

                class ApproveActionACH < Lithic::Internal::Type::BaseModel
                  # @!attribute type
                  #   Approve the ACH transaction
                  #
                  #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH::Type]
                  required :type,
                           enum: -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH::Type }

                  # @!method initialize(type:)
                  #   @param type [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH::Type] Approve the ACH transaction

                  # Approve the ACH transaction
                  #
                  # @see Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH#type
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
                  #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code]
                  required :code,
                           enum: -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code }

                  # @!attribute type
                  #   Return the ACH transaction
                  #
                  #   @return [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Type]
                  required :type,
                           enum: -> { Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Type }

                  # @!method initialize(code:, type:)
                  #   Some parameter documentations has been truncated, see
                  #   {Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction}
                  #   for more details.
                  #
                  #   @param code [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code] NACHA return code to use when returning the transaction. Note that the list of a
                  #
                  #   @param type [Symbol, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Type] Return the ACH transaction

                  # NACHA return code to use when returning the transaction. Note that the list of
                  # available return codes is subject to an allowlist configured at the program
                  # level
                  #
                  # @see Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction#code
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
                  # @see Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction#type
                  module Type
                    extend Lithic::Internal::Type::Enum

                    RETURN = :RETURN

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH, Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction)]
              end
            end

            # The evaluation mode of this version during the reported period.
            #
            # @see Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version#state
            module State
              extend Lithic::Internal::Type::Enum

              ACTIVE = :ACTIVE
              SHADOW = :SHADOW
              INACTIVE = :INACTIVE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
