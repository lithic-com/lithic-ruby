# typed: strong

module Lithic
  module Models
    module Transactions
      class EnhancedCommercialDataRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::Transactions::EnhancedCommercialDataRetrieveParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :transaction_token

        sig do
          params(
            transaction_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(transaction_token:, request_options: {})
        end

        sig do
          override.returns(
            {
              transaction_token: String,
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
