# typed: strong

module Lithic
  module Models
    module AuthRules
      class V2RetrieveFeaturesParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::AuthRules::V2RetrieveFeaturesParams,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :account_token

        sig { params(account_token: String).void }
        attr_writer :account_token

        sig { returns(T.nilable(String)) }
        attr_reader :card_token

        sig { params(card_token: String).void }
        attr_writer :card_token

        sig do
          params(
            account_token: String,
            card_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(account_token: nil, card_token: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              account_token: String,
              card_token: String,
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
