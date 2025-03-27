# frozen_string_literal: true

module Lithic
  module Models
    class SettlementReport < Lithic::BaseModel
      # @!attribute created
      #   Date and time when the transaction first occurred. UTC time zone.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #   Three-digit alphabetic ISO 4217 code. (This field is deprecated and will be
      #     removed in a future version of the API.)
      #
      #   @return [String]
      required :currency, String

      # @!attribute details
      #
      #   @return [Array<Lithic::Models::SettlementSummaryDetails>]
      required :details, -> { Lithic::ArrayOf[Lithic::Models::SettlementSummaryDetails] }

      # @!attribute disputes_gross_amount
      #   The total gross amount of disputes settlements. (This field is deprecated and
      #     will be removed in a future version of the API. To compute total amounts, Lithic
      #     recommends that customers sum the relevant settlement amounts found within
      #     `details`.)
      #
      #   @return [Integer]
      required :disputes_gross_amount, Integer

      # @!attribute interchange_gross_amount
      #   The total amount of interchange. (This field is deprecated and will be removed
      #     in a future version of the API. To compute total amounts, Lithic recommends that
      #     customers sum the relevant settlement amounts found within `details`.)
      #
      #   @return [Integer]
      required :interchange_gross_amount, Integer

      # @!attribute is_complete
      #   Indicates that all data expected on the given report date is available.
      #
      #   @return [Boolean]
      required :is_complete, Lithic::BooleanModel

      # @!attribute other_fees_gross_amount
      #   Total amount of gross other fees outside of interchange. (This field is
      #     deprecated and will be removed in a future version of the API. To compute total
      #     amounts, Lithic recommends that customers sum the relevant settlement amounts
      #     found within `details`.)
      #
      #   @return [Integer]
      required :other_fees_gross_amount, Integer

      # @!attribute report_date
      #   Date of when the report was first generated.
      #
      #   @return [String]
      required :report_date, String

      # @!attribute settled_net_amount
      #   The total net amount of cash moved. (net value of settled_gross_amount,
      #     interchange, fees). (This field is deprecated and will be removed in a future
      #     version of the API. To compute total amounts, Lithic recommends that customers
      #     sum the relevant settlement amounts found within `details`.)
      #
      #   @return [Integer]
      required :settled_net_amount, Integer

      # @!attribute transactions_gross_amount
      #   The total amount of settlement impacting transactions (excluding interchange,
      #     fees, and disputes). (This field is deprecated and will be removed in a future
      #     version of the API. To compute total amounts, Lithic recommends that customers
      #     sum the relevant settlement amounts found within `details`.)
      #
      #   @return [Integer]
      required :transactions_gross_amount, Integer

      # @!attribute updated
      #   Date and time when the transaction first occurred. UTC time zone.
      #
      #   @return [Time]
      required :updated, Time

      # @!parse
      #   # @param created [Time]
      #   # @param currency [String]
      #   # @param details [Array<Lithic::Models::SettlementSummaryDetails>]
      #   # @param disputes_gross_amount [Integer]
      #   # @param interchange_gross_amount [Integer]
      #   # @param is_complete [Boolean]
      #   # @param other_fees_gross_amount [Integer]
      #   # @param report_date [String]
      #   # @param settled_net_amount [Integer]
      #   # @param transactions_gross_amount [Integer]
      #   # @param updated [Time]
      #   #
      #   def initialize(
      #     created:,
      #     currency:,
      #     details:,
      #     disputes_gross_amount:,
      #     interchange_gross_amount:,
      #     is_complete:,
      #     other_fees_gross_amount:,
      #     report_date:,
      #     settled_net_amount:,
      #     transactions_gross_amount:,
      #     updated:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
