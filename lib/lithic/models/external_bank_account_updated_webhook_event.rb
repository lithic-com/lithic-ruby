# frozen_string_literal: true

module Lithic
  module Models
    class ExternalBankAccountUpdatedWebhookEvent < Lithic::Models::ExternalBankAccount
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"external_bank_account.updated"]
      required :event_type, const: :"external_bank_account.updated"

      # @!method initialize(event_type: :"external_bank_account.updated")
      #   @param event_type [Symbol, :"external_bank_account.updated"] The type of event that occurred.
    end
  end
end
