# frozen_string_literal: true

module Lithic
  module Models
    class ExternalBankAccountCreatedWebhookEvent < Lithic::Models::ExternalBankAccount
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"external_bank_account.created"]
      required :event_type, const: :"external_bank_account.created"

      # @!method initialize(event_type: :"external_bank_account.created")
      #   @param event_type [Symbol, :"external_bank_account.created"] The type of event that occurred.
    end
  end
end
