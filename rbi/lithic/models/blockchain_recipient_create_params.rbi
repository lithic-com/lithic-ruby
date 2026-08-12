# typed: strong

module Lithic
  module Models
    class BlockchainRecipientCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::BlockchainRecipientCreateParams,
            Lithic::Internal::AnyHash
          )
        end

      # The financial account the blockchain recipient belongs to
      sig { returns(String) }
      attr_accessor :account_token

      # The blockchain address funds will be withdrawn to
      sig { returns(String) }
      attr_accessor :address

      # The blockchain network that the address belongs to
      sig { returns(String) }
      attr_accessor :chain

      # Legal name of the business or individual who owns the blockchain address
      sig { returns(String) }
      attr_accessor :owner

      # Owner Type
      sig { returns(Lithic::OwnerType::OrSymbol) }
      attr_accessor :owner_type

      # An optional tag or memo used by some chains to identify the destination of a
      # transfer within a shared address
      sig { returns(T.nilable(String)) }
      attr_reader :address_tag

      sig { params(address_tag: String).void }
      attr_writer :address_tag

      # The nickname for this blockchain recipient
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          account_token: String,
          address: String,
          chain: String,
          owner: String,
          owner_type: Lithic::OwnerType::OrSymbol,
          address_tag: String,
          name: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The financial account the blockchain recipient belongs to
        account_token:,
        # The blockchain address funds will be withdrawn to
        address:,
        # The blockchain network that the address belongs to
        chain:,
        # Legal name of the business or individual who owns the blockchain address
        owner:,
        # Owner Type
        owner_type:,
        # An optional tag or memo used by some chains to identify the destination of a
        # transfer within a shared address
        address_tag: nil,
        # The nickname for this blockchain recipient
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_token: String,
            address: String,
            chain: String,
            owner: String,
            owner_type: Lithic::OwnerType::OrSymbol,
            address_tag: String,
            name: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
