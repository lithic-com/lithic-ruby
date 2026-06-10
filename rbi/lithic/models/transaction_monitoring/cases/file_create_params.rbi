# typed: strong

module Lithic
  module Models
    module TransactionMonitoring
      module Cases
        class FileCreateParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Lithic::TransactionMonitoring::Cases::FileCreateParams,
                Lithic::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :case_token

          # Name of the file to upload
          sig { returns(String) }
          attr_accessor :name

          sig do
            params(
              case_token: String,
              name: String,
              request_options: Lithic::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            case_token:,
            # Name of the file to upload
            name:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                case_token: String,
                name: String,
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
