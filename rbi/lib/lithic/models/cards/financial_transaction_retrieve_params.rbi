# typed: strong

module Lithic
  module Models
    module Cards
      class FinancialTransactionRetrieveParams < Lithic::BaseModel
        extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        sig { returns(String) }
        def card_token
        end

        sig { params(_: String).returns(String) }
        def card_token=(_)
        end

        sig do
          params(card_token: String, request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash))
            .returns(T.attached_class)
        end
        def self.new(card_token:, request_options: {})
        end

        sig { override.returns({card_token: String, request_options: Lithic::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
