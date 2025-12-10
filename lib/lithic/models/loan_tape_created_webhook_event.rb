# frozen_string_literal: true

module Lithic
  module Models
    class LoanTapeCreatedWebhookEvent < Lithic::Models::FinancialAccounts::LoanTape
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"loan_tape.created"]
      required :event_type, const: :"loan_tape.created"

      # @!method initialize(event_type: :"loan_tape.created")
      #   @param event_type [Symbol, :"loan_tape.created"] The type of event that occurred.
    end
  end
end
