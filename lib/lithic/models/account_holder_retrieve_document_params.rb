# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::AccountHolders#retrieve_document
    class AccountHolderRetrieveDocumentParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_holder_token
      #
      #   @return [String]
      required :account_holder_token, String

      # @!parse
      #   # @param account_holder_token [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(account_holder_token:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
