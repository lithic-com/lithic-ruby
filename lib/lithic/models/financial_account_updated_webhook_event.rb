# frozen_string_literal: true

module Lithic
  module Models
    class FinancialAccountUpdatedWebhookEvent < Lithic::Models::FinancialAccount
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"financial_account.updated"]
      required :event_type, const: :"financial_account.updated"

      # @!method initialize(event_type: :"financial_account.updated")
      #   @param event_type [Symbol, :"financial_account.updated"] The type of event that occurred.
    end
  end
end
