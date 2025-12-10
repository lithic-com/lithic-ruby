# frozen_string_literal: true

module Lithic
  module Models
    class DigitalWalletTokenizationUpdatedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute account_token
      #   Account token
      #
      #   @return [String]
      required :account_token, String

      # @!attribute card_token
      #   Card token
      #
      #   @return [String]
      required :card_token, String

      # @!attribute created
      #   Created date
      #
      #   @return [Time]
      required :created, Time

      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"digital_wallet.tokenization_updated"]
      required :event_type, const: :"digital_wallet.tokenization_updated"

      # @!attribute tokenization
      #
      #   @return [Lithic::Models::Tokenization]
      required :tokenization, -> { Lithic::Tokenization }

      # @!method initialize(account_token:, card_token:, created:, tokenization:, event_type: :"digital_wallet.tokenization_updated")
      #   @param account_token [String] Account token
      #
      #   @param card_token [String] Card token
      #
      #   @param created [Time] Created date
      #
      #   @param tokenization [Lithic::Models::Tokenization]
      #
      #   @param event_type [Symbol, :"digital_wallet.tokenization_updated"] The type of event that occurred.
    end
  end
end
