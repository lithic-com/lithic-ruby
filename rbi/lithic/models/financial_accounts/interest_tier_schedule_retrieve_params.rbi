# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class InterestTierScheduleRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::FinancialAccounts::InterestTierScheduleRetrieveParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :financial_account_token

        sig { returns(Date) }
        attr_accessor :effective_date

        sig do
          params(
            financial_account_token: String,
            effective_date: Date,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          financial_account_token:,
          effective_date:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              financial_account_token: String,
              effective_date: Date,
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
