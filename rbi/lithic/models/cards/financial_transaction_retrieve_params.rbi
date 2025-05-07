# typed: strong

module Lithic
  module Models
    module Cards
      class FinancialTransactionRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :card_token

        sig do
          params(
            card_token: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(card_token:, request_options: {})
        end

        sig do
          override.returns(
            { card_token: String, request_options: Lithic::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
