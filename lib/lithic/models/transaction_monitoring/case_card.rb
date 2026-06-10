# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      class CaseCard < Lithic::Internal::Type::BaseModel
        # @!attribute account_token
        #   Token of the account the card belongs to
        #
        #   @return [String]
        required :account_token, String

        # @!attribute card_token
        #   Token of the card
        #
        #   @return [String]
        required :card_token, String

        # @!attribute transaction_count
        #   Number of the card's transactions associated with the case
        #
        #   @return [Integer]
        required :transaction_count, Integer

        # @!method initialize(account_token:, card_token:, transaction_count:)
        #   Summary of a card's involvement in a case, aggregated across the case's
        #   transactions
        #
        #   @param account_token [String] Token of the account the card belongs to
        #
        #   @param card_token [String] Token of the card
        #
        #   @param transaction_count [Integer] Number of the card's transactions associated with the case
      end
    end
  end
end
