# typed: strong

module Lithic
  module Models
    class BlockchainRecipientRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::BlockchainRecipientRetrieveParams,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :blockchain_recipient_token

      sig do
        params(
          blockchain_recipient_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(blockchain_recipient_token:, request_options: {})
      end

      sig do
        override.returns(
          {
            blockchain_recipient_token: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
