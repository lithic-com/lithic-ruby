# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#reassign_account
    class CardReassignAccountParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute card_token
      #
      #   @return [String]
      required :card_token, String

      # @!attribute new_account_token
      #   Globally unique identifier for the account to associate with the card
      #
      #   @return [String]
      required :new_account_token, String

      # @!method initialize(card_token:, new_account_token:, request_options: {})
      #   @param card_token [String]
      #
      #   @param new_account_token [String] Globally unique identifier for the account to associate with the card
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
