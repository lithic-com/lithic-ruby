# frozen_string_literal: true

module Lithic
  module Models
    class LoanTapeUpdatedWebhookEvent < Lithic::Models::FinancialAccounts::LoanTape
      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"loan_tape.updated"]
      required :event_type, const: :"loan_tape.updated"

      # @!method initialize(event_type: :"loan_tape.updated")
      #   @param event_type [Symbol, :"loan_tape.updated"] The type of event that occurred.
    end
  end
end
