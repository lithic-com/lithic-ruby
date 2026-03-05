# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2RetrieveReportParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::V2RetrieveReportParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :auth_rule_token

        # Start date for the report
        sig { returns(Date) }
        attr_accessor :begin_

        # End date for the report
        sig { returns(Date) }
        attr_accessor :end_

        sig do
          params(
            auth_rule_token: String,
            begin_: Date,
            end_: Date,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          auth_rule_token:,
          # Start date for the report
          begin_:,
          # End date for the report
          end_:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              auth_rule_token: String,
              begin_: Date,
              end_: Date,
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
