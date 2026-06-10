# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # @see Lithic::Resources::TransactionMonitoring::Cases#list_transactions
      class CaseTransaction < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Globally unique identifier for the transaction
        #
        #   @return [String]
        required :token, String

        # @!attribute account_token
        #   Token of the account the transaction belongs to
        #
        #   @return [String]
        required :account_token, String

        # @!attribute added_at
        #   Date and time at which the transaction was added to the case
        #
        #   @return [Time]
        required :added_at, Time

        # @!attribute card_token
        #   Token of the card the transaction was made on
        #
        #   @return [String]
        required :card_token, String

        # @!attribute transaction_created_at
        #   Date and time at which the transaction was created
        #
        #   @return [Time]
        required :transaction_created_at, Time

        # @!method initialize(token:, account_token:, added_at:, card_token:, transaction_created_at:)
        #   A single transaction associated with a case
        #
        #   @param token [String] Globally unique identifier for the transaction
        #
        #   @param account_token [String] Token of the account the transaction belongs to
        #
        #   @param added_at [Time] Date and time at which the transaction was added to the case
        #
        #   @param card_token [String] Token of the card the transaction was made on
        #
        #   @param transaction_created_at [Time] Date and time at which the transaction was created
      end
    end
  end
end
