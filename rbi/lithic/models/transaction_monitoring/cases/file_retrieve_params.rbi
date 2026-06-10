# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      module Cases
        class FileRetrieveParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Lithic::TransactionMonitoring::Cases::FileRetrieveParams,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :case_token

          sig { returns(String) }
          attr_accessor :file_token

          sig do
            params(
              case_token: String,
              file_token: String,
              request_options: Lithic::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(case_token:, file_token:, request_options: {})
          end

          sig do
            override.returns(
              {
                case_token: String,
                file_token: String,
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
end
