# typed: strong

module Lithic
  module Models
    module AccountHolders
      class EntityDeleteParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::AccountHolders::EntityDeleteParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account_holder_token

        sig do
          params(
            account_holder_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(account_holder_token:, request_options: {})
        end

        sig do
          override.returns(
            {
              account_holder_token: String,
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
