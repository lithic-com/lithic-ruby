# frozen_string_literal: true

module Lithic
  module Models
    module Cards
      # @see Lithic::Resources::Cards::AggregateBalances#list
      class AggregateBalanceListResponse < Lithic::Internal::Type::BaseModel
        # @!attribute available_amount
        #   Funds available for spend in the currency's smallest unit (e.g., cents for USD)
        #
        #   @return [Integer]
        required :available_amount, Integer

        # @!attribute created
        #   Date and time for when the balance was first created.
        #
        #   @return [Time]
        required :created, Time

        # @!attribute currency
        #   3-character alphabetic ISO 4217 code for the local currency of the balance.
        #
        #   @return [String]
        required :currency, String

        # @!attribute last_card_token
        #   Globally unique identifier for the card that had its balance updated most
        #   recently
        #
        #   @return [String]
        required :last_card_token, String

        # @!attribute last_transaction_event_token
        #   Globally unique identifier for the last transaction event that impacted this
        #   balance
        #
        #   @return [String]
        required :last_transaction_event_token, String

        # @!attribute last_transaction_token
        #   Globally unique identifier for the last transaction that impacted this balance
        #
        #   @return [String]
        required :last_transaction_token, String

        # @!attribute pending_amount
        #   Funds not available for spend due to card authorizations or pending ACH release.
        #   Shown in the currency's smallest unit (e.g., cents for USD)
        #
        #   @return [Integer]
        required :pending_amount, Integer

        # @!attribute total_amount
        #   The sum of available and pending balance in the currency's smallest unit (e.g.,
        #   cents for USD)
        #
        #   @return [Integer]
        required :total_amount, Integer

        # @!attribute updated
        #   Date and time for when the balance was last updated.
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(available_amount:, created:, currency:, last_card_token:, last_transaction_event_token:, last_transaction_token:, pending_amount:, total_amount:, updated:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::Cards::AggregateBalanceListResponse} for more details.
        #
        #   Card Aggregate Balance across all end-user accounts
        #
        #   @param available_amount [Integer] Funds available for spend in the currency's smallest unit (e.g., cents for USD)
        #
        #   @param created [Time] Date and time for when the balance was first created.
        #
        #   @param currency [String] 3-character alphabetic ISO 4217 code for the local currency of the balance.
        #
        #   @param last_card_token [String] Globally unique identifier for the card that had its balance updated most recent
        #
        #   @param last_transaction_event_token [String] Globally unique identifier for the last transaction event that impacted this bal
        #
        #   @param last_transaction_token [String] Globally unique identifier for the last transaction that impacted this balance
        #
        #   @param pending_amount [Integer] Funds not available for spend due to card authorizations or pending ACH release.
        #
        #   @param total_amount [Integer] The sum of available and pending balance in the currency's smallest unit (e.g.,
        #
        #   @param updated [Time] Date and time for when the balance was last updated.
      end
    end
  end
end
