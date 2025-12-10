# frozen_string_literal: true

module Lithic
  module Models
    class FinancialAccountCreatedWebhookEvent < Lithic::Models::FinancialAccount
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"financial_account.created"]
      required :event_type, const: :"financial_account.created"

      # @!method initialize(event_type: :"financial_account.created")
      #   @param event_type [Symbol, :"financial_account.created"] The type of event that occurred.
    end
  end
end
