# frozen_string_literal: true

module Lithic
  module Models
    class StatementsCreatedWebhookEvent < Lithic::Models::FinancialAccounts::Statement
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"statements.created"]
      required :event_type, const: :"statements.created"

      # @!method initialize(event_type: :"statements.created")
      #   @param event_type [Symbol, :"statements.created"] The type of event that occurred.
    end
  end
end
