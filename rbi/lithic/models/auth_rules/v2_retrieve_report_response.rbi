# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2RetrieveReportResponse < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::Models::AuthRules::V2RetrieveReportResponse,
              Lithic::Internal::AnyHash
            )
          end

        # Auth Rule Token
        sig { returns(String) }
        attr_accessor :auth_rule_token

        # The start date (UTC) of the report.
        sig { returns(Date) }
        attr_accessor :begin_

        # Daily evaluation statistics for the Auth Rule.
        sig do
          returns(
            T::Array[
              Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic
            ]
          )
        end
        attr_accessor :daily_statistics

        # The end date (UTC) of the report.
        sig { returns(Date) }
        attr_accessor :end_

        sig do
          params(
            auth_rule_token: String,
            begin_: Date,
            daily_statistics:
              T::Array[
                Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::OrHash
              ],
            end_: Date
          ).returns(T.attached_class)
        end
        def self.new(
          # Auth Rule Token
          auth_rule_token:,
          # The start date (UTC) of the report.
          begin_:,
          # Daily evaluation statistics for the Auth Rule.
          daily_statistics:,
          # The end date (UTC) of the report.
          end_:
        )
        end

        sig do
          override.returns(
            {
              auth_rule_token: String,
              begin_: Date,
              daily_statistics:
                T::Array[
                  Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic
                ],
              end_: Date
            }
          )
        end
        def to_hash
        end

        class DailyStatistic < Lithic::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic,
                Lithic::Internal::AnyHash
              )
            end

          # Detailed statistics for the current version of the rule.
          sig { returns(T.nilable(Lithic::AuthRules::ReportStats)) }
          attr_reader :current_version_statistics

          sig do
            params(
              current_version_statistics:
                T.nilable(Lithic::AuthRules::ReportStats::OrHash)
            ).void
          end
          attr_writer :current_version_statistics

          # The date (UTC) for which the statistics are reported.
          sig { returns(Date) }
          attr_accessor :date

          # Detailed statistics for the draft version of the rule.
          sig { returns(T.nilable(Lithic::AuthRules::ReportStats)) }
          attr_reader :draft_version_statistics

          sig do
            params(
              draft_version_statistics:
                T.nilable(Lithic::AuthRules::ReportStats::OrHash)
            ).void
          end
          attr_writer :draft_version_statistics

          # Statistics for each version of the rule that was evaluated during the reported
          # day.
          sig do
            returns(
              T::Array[
                Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version
              ]
            )
          end
          attr_accessor :versions

          sig do
            params(
              current_version_statistics:
                T.nilable(Lithic::AuthRules::ReportStats::OrHash),
              date: Date,
              draft_version_statistics:
                T.nilable(Lithic::AuthRules::ReportStats::OrHash),
              versions:
                T::Array[
                  Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Detailed statistics for the current version of the rule.
            current_version_statistics:,
            # The date (UTC) for which the statistics are reported.
            date:,
            # Detailed statistics for the draft version of the rule.
            draft_version_statistics:,
            # Statistics for each version of the rule that was evaluated during the reported
            # day.
            versions:
          )
          end

          sig do
            override.returns(
              {
                current_version_statistics:
                  T.nilable(Lithic::AuthRules::ReportStats),
                date: Date,
                draft_version_statistics:
                  T.nilable(Lithic::AuthRules::ReportStats),
                versions:
                  T::Array[
                    Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version
                  ]
              }
            )
          end
          def to_hash
          end

          class Version < Lithic::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version,
                  Lithic::Internal::AnyHash
                )
              end

            # A mapping of action types to the number of times that action was returned by
            # this version during the relevant period. Actions are the possible outcomes of a
            # rule evaluation, such as DECLINE, CHALLENGE, REQUIRE_TFA, etc. In case rule
            # didn't trigger any action, it's counted under NO_ACTION key.
            sig { returns(T::Hash[Symbol, Integer]) }
            attr_accessor :action_counts

            # Example events and their outcomes for this version.
            sig do
              returns(
                T::Array[
                  Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example
                ]
              )
            end
            attr_accessor :examples

            # The evaluation mode of this version during the reported period.
            sig do
              returns(
                Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::State::TaggedSymbol
              )
            end
            attr_accessor :state

            # The rule version number.
            sig { returns(Integer) }
            attr_accessor :version

            sig do
              params(
                action_counts: T::Hash[Symbol, Integer],
                examples:
                  T::Array[
                    Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::OrHash
                  ],
                state:
                  Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::State::OrSymbol,
                version: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # A mapping of action types to the number of times that action was returned by
              # this version during the relevant period. Actions are the possible outcomes of a
              # rule evaluation, such as DECLINE, CHALLENGE, REQUIRE_TFA, etc. In case rule
              # didn't trigger any action, it's counted under NO_ACTION key.
              action_counts:,
              # Example events and their outcomes for this version.
              examples:,
              # The evaluation mode of this version during the reported period.
              state:,
              # The rule version number.
              version:
            )
            end

            sig do
              override.returns(
                {
                  action_counts: T::Hash[Symbol, Integer],
                  examples:
                    T::Array[
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example
                    ],
                  state:
                    Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::State::TaggedSymbol,
                  version: Integer
                }
              )
            end
            def to_hash
            end

            class Example < Lithic::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example,
                    Lithic::Internal::AnyHash
                  )
                end

              # The actions taken by this version for this event.
              sig do
                returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::Variants
                  ]
                )
              end
              attr_accessor :actions

              # The event token.
              sig { returns(String) }
              attr_accessor :event_token

              # The timestamp of the event.
              sig { returns(Time) }
              attr_accessor :timestamp

              sig do
                params(
                  actions:
                    T::Array[
                      T.any(
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::OrHash,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization::OrHash,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction::OrHash,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::OrHash,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::OrHash,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH::OrHash,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::OrHash
                      )
                    ],
                  event_token: String,
                  timestamp: Time
                ).returns(T.attached_class)
              end
              def self.new(
                # The actions taken by this version for this event.
                actions:,
                # The event token.
                event_token:,
                # The timestamp of the event.
                timestamp:
              )
              end

              sig do
                override.returns(
                  {
                    actions:
                      T::Array[
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::Variants
                      ],
                    event_token: String,
                    timestamp: Time
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
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization,
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization,
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction,
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization,
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction,
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH,
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction
                    )
                  end

                class DeclineActionAuthorization < Lithic::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization,
                        Lithic::Internal::AnyHash
                      )
                    end

                  # The detailed result code explaining the specific reason for the decline
                  sig do
                    returns(
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                    )
                  end
                  attr_accessor :code

                  sig do
                    returns(
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      code:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::OrSymbol,
                      type:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # The detailed result code explaining the specific reason for the decline
                    code:,
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        code:
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol,
                        type:
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Type::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  # The detailed result code explaining the specific reason for the decline
                  module Code
                    extend Lithic::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED =
                      T.let(
                        :ACCOUNT_DAILY_SPEND_LIMIT_EXCEEDED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    ACCOUNT_DELINQUENT =
                      T.let(
                        :ACCOUNT_DELINQUENT,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    ACCOUNT_INACTIVE =
                      T.let(
                        :ACCOUNT_INACTIVE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED =
                      T.let(
                        :ACCOUNT_LIFETIME_SPEND_LIMIT_EXCEEDED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED =
                      T.let(
                        :ACCOUNT_MONTHLY_SPEND_LIMIT_EXCEEDED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    ACCOUNT_PAUSED =
                      T.let(
                        :ACCOUNT_PAUSED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    ACCOUNT_UNDER_REVIEW =
                      T.let(
                        :ACCOUNT_UNDER_REVIEW,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    ADDRESS_INCORRECT =
                      T.let(
                        :ADDRESS_INCORRECT,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    APPROVED =
                      T.let(
                        :APPROVED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    AUTH_RULE_ALLOWED_COUNTRY =
                      T.let(
                        :AUTH_RULE_ALLOWED_COUNTRY,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    AUTH_RULE_ALLOWED_MCC =
                      T.let(
                        :AUTH_RULE_ALLOWED_MCC,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    AUTH_RULE_BLOCKED_COUNTRY =
                      T.let(
                        :AUTH_RULE_BLOCKED_COUNTRY,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    AUTH_RULE_BLOCKED_MCC =
                      T.let(
                        :AUTH_RULE_BLOCKED_MCC,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    AUTH_RULE =
                      T.let(
                        :AUTH_RULE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARD_CLOSED =
                      T.let(
                        :CARD_CLOSED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARD_CRYPTOGRAM_VALIDATION_FAILURE =
                      T.let(
                        :CARD_CRYPTOGRAM_VALIDATION_FAILURE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARD_EXPIRED =
                      T.let(
                        :CARD_EXPIRED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARD_EXPIRY_DATE_INCORRECT =
                      T.let(
                        :CARD_EXPIRY_DATE_INCORRECT,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARD_INVALID =
                      T.let(
                        :CARD_INVALID,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARD_NOT_ACTIVATED =
                      T.let(
                        :CARD_NOT_ACTIVATED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARD_PAUSED =
                      T.let(
                        :CARD_PAUSED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARD_PIN_INCORRECT =
                      T.let(
                        :CARD_PIN_INCORRECT,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARD_RESTRICTED =
                      T.let(
                        :CARD_RESTRICTED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARD_SECURITY_CODE_INCORRECT =
                      T.let(
                        :CARD_SECURITY_CODE_INCORRECT,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARD_SPEND_LIMIT_EXCEEDED =
                      T.let(
                        :CARD_SPEND_LIMIT_EXCEEDED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CONTACT_CARD_ISSUER =
                      T.let(
                        :CONTACT_CARD_ISSUER,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CUSTOMER_ASA_TIMEOUT =
                      T.let(
                        :CUSTOMER_ASA_TIMEOUT,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CUSTOM_ASA_RESULT =
                      T.let(
                        :CUSTOM_ASA_RESULT,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    DECLINED =
                      T.let(
                        :DECLINED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    DO_NOT_HONOR =
                      T.let(
                        :DO_NOT_HONOR,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    DRIVER_NUMBER_INVALID =
                      T.let(
                        :DRIVER_NUMBER_INVALID,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    FORMAT_ERROR =
                      T.let(
                        :FORMAT_ERROR,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    INSUFFICIENT_FUNDING_SOURCE_BALANCE =
                      T.let(
                        :INSUFFICIENT_FUNDING_SOURCE_BALANCE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    INSUFFICIENT_FUNDS =
                      T.let(
                        :INSUFFICIENT_FUNDS,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    LITHIC_SYSTEM_ERROR =
                      T.let(
                        :LITHIC_SYSTEM_ERROR,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    LITHIC_SYSTEM_RATE_LIMIT =
                      T.let(
                        :LITHIC_SYSTEM_RATE_LIMIT,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    MALFORMED_ASA_RESPONSE =
                      T.let(
                        :MALFORMED_ASA_RESPONSE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    MERCHANT_INVALID =
                      T.let(
                        :MERCHANT_INVALID,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE =
                      T.let(
                        :MERCHANT_LOCKED_CARD_ATTEMPTED_ELSEWHERE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    MERCHANT_NOT_PERMITTED =
                      T.let(
                        :MERCHANT_NOT_PERMITTED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    OVER_REVERSAL_ATTEMPTED =
                      T.let(
                        :OVER_REVERSAL_ATTEMPTED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    PIN_BLOCKED =
                      T.let(
                        :PIN_BLOCKED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    PROGRAM_CARD_SPEND_LIMIT_EXCEEDED =
                      T.let(
                        :PROGRAM_CARD_SPEND_LIMIT_EXCEEDED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    PROGRAM_SUSPENDED =
                      T.let(
                        :PROGRAM_SUSPENDED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    PROGRAM_USAGE_RESTRICTION =
                      T.let(
                        :PROGRAM_USAGE_RESTRICTION,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    REVERSAL_UNMATCHED =
                      T.let(
                        :REVERSAL_UNMATCHED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    SECURITY_VIOLATION =
                      T.let(
                        :SECURITY_VIOLATION,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    SINGLE_USE_CARD_REATTEMPTED =
                      T.let(
                        :SINGLE_USE_CARD_REATTEMPTED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    SUSPECTED_FRAUD =
                      T.let(
                        :SUSPECTED_FRAUD,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    TRANSACTION_INVALID =
                      T.let(
                        :TRANSACTION_INVALID,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL =
                      T.let(
                        :TRANSACTION_NOT_PERMITTED_TO_ACQUIRER_OR_TERMINAL,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER =
                      T.let(
                        :TRANSACTION_NOT_PERMITTED_TO_ISSUER_OR_CARDHOLDER,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    TRANSACTION_PREVIOUSLY_COMPLETED =
                      T.let(
                        :TRANSACTION_PREVIOUSLY_COMPLETED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    UNAUTHORIZED_MERCHANT =
                      T.let(
                        :UNAUTHORIZED_MERCHANT,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    VEHICLE_NUMBER_INVALID =
                      T.let(
                        :VEHICLE_NUMBER_INVALID,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARDHOLDER_CHALLENGED =
                      T.let(
                        :CARDHOLDER_CHALLENGED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )
                    CARDHOLDER_CHALLENGE_FAILED =
                      T.let(
                        :CARDHOLDER_CHALLENGE_FAILED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Code::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end

                  module Type
                    extend Lithic::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DECLINE =
                      T.let(
                        :DECLINE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionAuthorization::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class ChallengeActionAuthorization < Lithic::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization,
                        Lithic::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization::Type::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  module Type
                    extend Lithic::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CHALLENGE =
                      T.let(
                        :CHALLENGE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ChallengeActionAuthorization::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class ResultAuthentication3DSAction < Lithic::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction,
                        Lithic::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(type:)
                  end

                  sig do
                    override.returns(
                      {
                        type:
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction::Type::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  module Type
                    extend Lithic::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DECLINE =
                      T.let(
                        :DECLINE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction::Type::TaggedSymbol
                      )
                    CHALLENGE =
                      T.let(
                        :CHALLENGE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ResultAuthentication3DSAction::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class DeclineActionTokenization < Lithic::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization,
                        Lithic::Internal::AnyHash
                      )
                    end

                  # Decline the tokenization request
                  sig do
                    returns(
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  # Reason code for declining the tokenization request
                  sig do
                    returns(
                      T.nilable(
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    )
                  end
                  attr_reader :reason

                  sig do
                    params(
                      reason:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::OrSymbol
                    ).void
                  end
                  attr_writer :reason

                  sig do
                    params(
                      type:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Type::OrSymbol,
                      reason:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::OrSymbol
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
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Type::TaggedSymbol,
                        reason:
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
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
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DECLINE =
                      T.let(
                        :DECLINE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Type::TaggedSymbol
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
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ACCOUNT_SCORE_1 =
                      T.let(
                        :ACCOUNT_SCORE_1,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    DEVICE_SCORE_1 =
                      T.let(
                        :DEVICE_SCORE_1,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    ALL_WALLET_DECLINE_REASONS_PRESENT =
                      T.let(
                        :ALL_WALLET_DECLINE_REASONS_PRESENT,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    WALLET_RECOMMENDED_DECISION_RED =
                      T.let(
                        :WALLET_RECOMMENDED_DECISION_RED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    CVC_MISMATCH =
                      T.let(
                        :CVC_MISMATCH,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    CARD_EXPIRY_MONTH_MISMATCH =
                      T.let(
                        :CARD_EXPIRY_MONTH_MISMATCH,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    CARD_EXPIRY_YEAR_MISMATCH =
                      T.let(
                        :CARD_EXPIRY_YEAR_MISMATCH,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    CARD_INVALID_STATE =
                      T.let(
                        :CARD_INVALID_STATE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    CUSTOMER_RED_PATH =
                      T.let(
                        :CUSTOMER_RED_PATH,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    INVALID_CUSTOMER_RESPONSE =
                      T.let(
                        :INVALID_CUSTOMER_RESPONSE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    NETWORK_FAILURE =
                      T.let(
                        :NETWORK_FAILURE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    GENERIC_DECLINE =
                      T.let(
                        :GENERIC_DECLINE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )
                    DIGITAL_CARD_ART_REQUIRED =
                      T.let(
                        :DIGITAL_CARD_ART_REQUIRED,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::DeclineActionTokenization::Reason::TaggedSymbol
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
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction,
                        Lithic::Internal::AnyHash
                      )
                    end

                  # Require two-factor authentication for the tokenization request
                  sig do
                    returns(
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  # Reason code for requiring two-factor authentication
                  sig do
                    returns(
                      T.nilable(
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    )
                  end
                  attr_reader :reason

                  sig do
                    params(
                      reason:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::OrSymbol
                    ).void
                  end
                  attr_writer :reason

                  sig do
                    params(
                      type:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Type::OrSymbol,
                      reason:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::OrSymbol
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
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Type::TaggedSymbol,
                        reason:
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
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
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    REQUIRE_TFA =
                      T.let(
                        :REQUIRE_TFA,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Type::TaggedSymbol
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
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    WALLET_RECOMMENDED_TFA =
                      T.let(
                        :WALLET_RECOMMENDED_TFA,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    SUSPICIOUS_ACTIVITY =
                      T.let(
                        :SUSPICIOUS_ACTIVITY,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    DEVICE_RECENTLY_LOST =
                      T.let(
                        :DEVICE_RECENTLY_LOST,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    TOO_MANY_RECENT_ATTEMPTS =
                      T.let(
                        :TOO_MANY_RECENT_ATTEMPTS,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    TOO_MANY_RECENT_TOKENS =
                      T.let(
                        :TOO_MANY_RECENT_TOKENS,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    TOO_MANY_DIFFERENT_CARDHOLDERS =
                      T.let(
                        :TOO_MANY_DIFFERENT_CARDHOLDERS,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    OUTSIDE_HOME_TERRITORY =
                      T.let(
                        :OUTSIDE_HOME_TERRITORY,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    HAS_SUSPENDED_TOKENS =
                      T.let(
                        :HAS_SUSPENDED_TOKENS,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    HIGH_RISK =
                      T.let(
                        :HIGH_RISK,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    ACCOUNT_SCORE_LOW =
                      T.let(
                        :ACCOUNT_SCORE_LOW,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    DEVICE_SCORE_LOW =
                      T.let(
                        :DEVICE_SCORE_LOW,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    CARD_STATE_TFA =
                      T.let(
                        :CARD_STATE_TFA,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    HARDCODED_TFA =
                      T.let(
                        :HARDCODED_TFA,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    CUSTOMER_RULE_TFA =
                      T.let(
                        :CUSTOMER_RULE_TFA,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )
                    DEVICE_HOST_CARD_EMULATION =
                      T.let(
                        :DEVICE_HOST_CARD_EMULATION,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::RequireTfaAction::Reason::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class ApproveActionACH < Lithic::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH,
                        Lithic::Internal::AnyHash
                      )
                    end

                  # Approve the ACH transaction
                  sig do
                    returns(
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      type:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH::Type::OrSymbol
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
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH::Type::TaggedSymbol
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
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    APPROVE =
                      T.let(
                        :APPROVE,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ApproveActionACH::Type::TaggedSymbol
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
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction,
                        Lithic::Internal::AnyHash
                      )
                    end

                  # NACHA return code to use when returning the transaction. Note that the list of
                  # available return codes is subject to an allowlist configured at the program
                  # level
                  sig do
                    returns(
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                    )
                  end
                  attr_accessor :code

                  # Return the ACH transaction
                  sig do
                    returns(
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      code:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::OrSymbol,
                      type:
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Type::OrSymbol
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
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol,
                        type:
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Type::TaggedSymbol
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
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    R01 =
                      T.let(
                        :R01,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R02 =
                      T.let(
                        :R02,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R03 =
                      T.let(
                        :R03,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R04 =
                      T.let(
                        :R04,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R05 =
                      T.let(
                        :R05,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R06 =
                      T.let(
                        :R06,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R07 =
                      T.let(
                        :R07,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R08 =
                      T.let(
                        :R08,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R09 =
                      T.let(
                        :R09,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R10 =
                      T.let(
                        :R10,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R11 =
                      T.let(
                        :R11,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R12 =
                      T.let(
                        :R12,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R13 =
                      T.let(
                        :R13,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R14 =
                      T.let(
                        :R14,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R15 =
                      T.let(
                        :R15,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R16 =
                      T.let(
                        :R16,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R17 =
                      T.let(
                        :R17,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R18 =
                      T.let(
                        :R18,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R19 =
                      T.let(
                        :R19,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R20 =
                      T.let(
                        :R20,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R21 =
                      T.let(
                        :R21,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R22 =
                      T.let(
                        :R22,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R23 =
                      T.let(
                        :R23,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R24 =
                      T.let(
                        :R24,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R25 =
                      T.let(
                        :R25,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R26 =
                      T.let(
                        :R26,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R27 =
                      T.let(
                        :R27,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R28 =
                      T.let(
                        :R28,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R29 =
                      T.let(
                        :R29,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R30 =
                      T.let(
                        :R30,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R31 =
                      T.let(
                        :R31,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R32 =
                      T.let(
                        :R32,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R33 =
                      T.let(
                        :R33,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R34 =
                      T.let(
                        :R34,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R35 =
                      T.let(
                        :R35,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R36 =
                      T.let(
                        :R36,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R37 =
                      T.let(
                        :R37,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R38 =
                      T.let(
                        :R38,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R39 =
                      T.let(
                        :R39,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R40 =
                      T.let(
                        :R40,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R41 =
                      T.let(
                        :R41,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R42 =
                      T.let(
                        :R42,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R43 =
                      T.let(
                        :R43,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R44 =
                      T.let(
                        :R44,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R45 =
                      T.let(
                        :R45,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R46 =
                      T.let(
                        :R46,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R47 =
                      T.let(
                        :R47,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R50 =
                      T.let(
                        :R50,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R51 =
                      T.let(
                        :R51,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R52 =
                      T.let(
                        :R52,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R53 =
                      T.let(
                        :R53,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R61 =
                      T.let(
                        :R61,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R62 =
                      T.let(
                        :R62,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R67 =
                      T.let(
                        :R67,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R68 =
                      T.let(
                        :R68,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R69 =
                      T.let(
                        :R69,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R70 =
                      T.let(
                        :R70,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R71 =
                      T.let(
                        :R71,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R72 =
                      T.let(
                        :R72,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R73 =
                      T.let(
                        :R73,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R74 =
                      T.let(
                        :R74,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R75 =
                      T.let(
                        :R75,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R76 =
                      T.let(
                        :R76,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R77 =
                      T.let(
                        :R77,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R80 =
                      T.let(
                        :R80,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R81 =
                      T.let(
                        :R81,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R82 =
                      T.let(
                        :R82,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R83 =
                      T.let(
                        :R83,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R84 =
                      T.let(
                        :R84,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )
                    R85 =
                      T.let(
                        :R85,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Code::TaggedSymbol
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
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    RETURN =
                      T.let(
                        :RETURN,
                        Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::ReturnAction::Type::TaggedSymbol
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
                      Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::Example::Action::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end

            # The evaluation mode of this version during the reported period.
            module State
              extend Lithic::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::State
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :ACTIVE,
                  Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::State::TaggedSymbol
                )
              SHADOW =
                T.let(
                  :SHADOW,
                  Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::State::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :INACTIVE,
                  Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::State::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Lithic::Models::AuthRules::V2RetrieveReportResponse::DailyStatistic::Version::State::TaggedSymbol
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
end
