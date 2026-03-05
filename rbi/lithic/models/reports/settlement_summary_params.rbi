# typed: strong

module Lithic
  module Models
    module Reports
      class SettlementSummaryParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::Reports::SettlementSummaryParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(Date) }
        attr_accessor :report_date

        sig do
          params(
            report_date: Date,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(report_date:, request_options: {})
        end

        sig do
          override.returns(
            { report_date: Date, request_options: Lithic::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
