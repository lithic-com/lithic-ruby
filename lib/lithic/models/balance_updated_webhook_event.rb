# frozen_string_literal: true

module Lithic
  module Models
    class BalanceUpdatedWebhookEvent < Lithic::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Lithic::Models::FinancialAccountBalance>]
      required :data, -> { Lithic::Internal::Type::ArrayOf[Lithic::FinancialAccountBalance] }

      # @!attribute event_type
      #   The type of event that occurred.
      #
      #   @return [Symbol, :"balance.updated"]
      required :event_type, const: :"balance.updated"

      # @!method initialize(data:, event_type: :"balance.updated")
      #   @param data [Array<Lithic::Models::FinancialAccountBalance>]
      #
      #   @param event_type [Symbol, :"balance.updated"] The type of event that occurred.
    end
  end
end
