# typed: strong

module Lithic
  module Models
    class CardProgramRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::CardProgramRetrieveParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :card_program_token

      sig do
        params(
          card_program_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(card_program_token:, request_options: {})
      end

      sig do
        override.returns(
          {
            card_program_token: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
