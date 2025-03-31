# typed: strong

module Lithic
  module Models
    module AuthRules
      module V2
        class BacktestRetrieveParams < Lithic::BaseModel
          extend Lithic::Type::RequestParameters::Converter
          include Lithic::RequestParameters

          sig { returns(String) }
          attr_accessor :auth_rule_token

          sig do
            params(
              auth_rule_token: String,
              request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(auth_rule_token:, request_options: {})
          end

          sig { override.returns({auth_rule_token: String, request_options: Lithic::RequestOptions}) }
          def to_hash
          end
        end
      end
    end
  end
end
