# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class InterestTierScheduleListParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::InterestTierScheduleListParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :financial_account_token

        # Return schedules with effective_date >= after_date (ISO format YYYY-MM-DD)
        sig { returns(T.nilable(Date)) }
        attr_reader :after_date

        sig { params(after_date: Date).void }
        attr_writer :after_date

        # Return schedules with effective_date <= before_date (ISO format YYYY-MM-DD)
        sig { returns(T.nilable(Date)) }
        attr_reader :before_date

        sig { params(before_date: Date).void }
        attr_writer :before_date

        # Return schedule with effective_date == for_date (ISO format YYYY-MM-DD)
        sig { returns(T.nilable(Date)) }
        attr_reader :for_date

        sig { params(for_date: Date).void }
        attr_writer :for_date

        sig do
          params(
            financial_account_token: String,
            after_date: Date,
            before_date: Date,
            for_date: Date,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          financial_account_token:,
          # Return schedules with effective_date >= after_date (ISO format YYYY-MM-DD)
          after_date: nil,
          # Return schedules with effective_date <= before_date (ISO format YYYY-MM-DD)
          before_date: nil,
          # Return schedule with effective_date == for_date (ISO format YYYY-MM-DD)
          for_date: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              financial_account_token: String,
              after_date: Date,
              before_date: Date,
              for_date: Date,
              request_options: Lithic::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
