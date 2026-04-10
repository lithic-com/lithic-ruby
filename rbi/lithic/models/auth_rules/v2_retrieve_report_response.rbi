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

          # The date (UTC) for which the statistics are reported.
          sig { returns(Date) }
          attr_accessor :date

          # Statistics for each version of the rule that was evaluated during the reported
          # day.
          sig { returns(T::Array[Lithic::AuthRules::ReportStats]) }
          attr_accessor :versions

          sig do
            params(
              date: Date,
              versions: T::Array[Lithic::AuthRules::ReportStats::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # The date (UTC) for which the statistics are reported.
            date:,
            # Statistics for each version of the rule that was evaluated during the reported
            # day.
            versions:
          )
          end

          sig do
            override.returns(
              { date: Date, versions: T::Array[Lithic::AuthRules::ReportStats] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
