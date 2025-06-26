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
          sig { returns(T.nilable(Lithic::AuthRules::RuleStats)) }
          attr_reader :current_version_statistics

          sig do
            params(
              current_version_statistics:
                T.nilable(Lithic::AuthRules::RuleStats::OrHash)
            ).void
          end
          attr_writer :current_version_statistics

          # The date (UTC) for which the statistics are reported.
          sig { returns(Date) }
          attr_accessor :date

          # Detailed statistics for the draft version of the rule.
          sig { returns(T.nilable(Lithic::AuthRules::RuleStats)) }
          attr_reader :draft_version_statistics

          sig do
            params(
              draft_version_statistics:
                T.nilable(Lithic::AuthRules::RuleStats::OrHash)
            ).void
          end
          attr_writer :draft_version_statistics

          sig do
            params(
              current_version_statistics:
                T.nilable(Lithic::AuthRules::RuleStats::OrHash),
              date: Date,
              draft_version_statistics:
                T.nilable(Lithic::AuthRules::RuleStats::OrHash)
            ).returns(T.attached_class)
          end
          def self.new(
            # Detailed statistics for the current version of the rule.
            current_version_statistics:,
            # The date (UTC) for which the statistics are reported.
            date:,
            # Detailed statistics for the draft version of the rule.
            draft_version_statistics:
          )
          end

          sig do
            override.returns(
              {
                current_version_statistics:
                  T.nilable(Lithic::AuthRules::RuleStats),
                date: Date,
                draft_version_statistics:
                  T.nilable(Lithic::AuthRules::RuleStats)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
