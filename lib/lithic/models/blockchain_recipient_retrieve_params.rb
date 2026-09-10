# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BlockchainRecipients#retrieve
    class BlockchainRecipientRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute blockchain_recipient_token
      #
      #   @return [String]
      required :blockchain_recipient_token, String

      # @!method initialize(blockchain_recipient_token:, request_options: {})
      #   @param blockchain_recipient_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
