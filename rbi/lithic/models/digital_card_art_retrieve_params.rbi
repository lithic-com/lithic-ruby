# typed: strong

module Lithic
  module Models
    class DigitalCardArtRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::DigitalCardArtRetrieveParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :digital_card_art_token

      sig do
        params(
          digital_card_art_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(digital_card_art_token:, request_options: {})
      end

      sig do
        override.returns(
          {
            digital_card_art_token: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
