# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BlockchainRecipients#create
    class BlockchainRecipientCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_token
      #   The financial account the blockchain recipient belongs to
      #
      #   @return [String]
      required :account_token, String

      # @!attribute address
      #   The blockchain address funds will be withdrawn to
      #
      #   @return [String]
      required :address, String

      # @!attribute chain
      #   The blockchain network that the address belongs to
      #
      #   @return [String]
      required :chain, String

      # @!attribute owner
      #   Legal name of the business or individual who owns the blockchain address
      #
      #   @return [String]
      required :owner, String

      # @!attribute owner_type
      #   Owner Type
      #
      #   @return [Symbol, Lithic::Models::OwnerType]
      required :owner_type, enum: -> { Lithic::OwnerType }

      # @!attribute address_tag
      #   An optional tag or memo used by some chains to identify the destination of a
      #   transfer within a shared address
      #
      #   @return [String, nil]
      optional :address_tag, String

      # @!attribute name
      #   The nickname for this blockchain recipient
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(account_token:, address:, chain:, owner:, owner_type:, address_tag: nil, name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::BlockchainRecipientCreateParams} for more details.
      #
      #   @param account_token [String] The financial account the blockchain recipient belongs to
      #
      #   @param address [String] The blockchain address funds will be withdrawn to
      #
      #   @param chain [String] The blockchain network that the address belongs to
      #
      #   @param owner [String] Legal name of the business or individual who owns the blockchain address
      #
      #   @param owner_type [Symbol, Lithic::Models::OwnerType] Owner Type
      #
      #   @param address_tag [String] An optional tag or memo used by some chains to identify the destination of a tra
      #
      #   @param name [String] The nickname for this blockchain recipient
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
