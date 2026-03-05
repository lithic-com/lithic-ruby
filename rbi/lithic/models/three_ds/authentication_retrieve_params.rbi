# typed: strong

module Lithic
  module Models
    module ThreeDS
      class AuthenticationRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::ThreeDS::AuthenticationRetrieveParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :three_ds_authentication_token

        sig do
          params(
            three_ds_authentication_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(three_ds_authentication_token:, request_options: {})
        end

        sig do
          override.returns(
            {
              three_ds_authentication_token: String,
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
