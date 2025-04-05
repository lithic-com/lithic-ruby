# typed: strong

module Lithic
  module Models
    module Cards
      class FinancialTransactionRetrieveParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        sig { returns(String) }
        attr_accessor :card_token

        sig do
          params(
            card_token: String,
            request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(card_token:, request_options: {}); end

        sig { override.returns({card_token: String, request_options: Lithic::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
