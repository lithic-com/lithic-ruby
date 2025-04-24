# frozen_string_literal: true

module Lithic
  module Models
    class SettlementSummaryDetails < Lithic::Internal::Type::BaseModel
      # @!attribute currency
      #   3-character alphabetic ISO 4217 code.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute disputes_gross_amount
      #   The total gross amount of disputes settlements.
      #
      #   @return [Integer, nil]
      optional :disputes_gross_amount, Integer

      # @!attribute institution
      #   The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      #   for Visa).
      #
      #   @return [String, nil]
      optional :institution, String

      # @!attribute interchange_gross_amount
      #   The total amount of interchange.
      #
      #   @return [Integer, nil]
      optional :interchange_gross_amount, Integer

      # @!attribute network
      #   Card network where the transaction took place
      #
      #   @return [Symbol, Lithic::Models::SettlementSummaryDetails::Network, nil]
      optional :network, enum: -> { Lithic::Models::SettlementSummaryDetails::Network }

      # @!attribute other_fees_gross_amount
      #   Total amount of gross other fees outside of interchange.
      #
      #   @return [Integer, nil]
      optional :other_fees_gross_amount, Integer

      # @!attribute settled_net_amount
      #   The total net amount of cash moved. (net value of settled_gross_amount,
      #   interchange, fees).
      #
      #   @return [Integer, nil]
      optional :settled_net_amount, Integer

      # @!attribute transactions_gross_amount
      #   The total amount of settlement impacting transactions (excluding interchange,
      #   fees, and disputes).
      #
      #   @return [Integer, nil]
      optional :transactions_gross_amount, Integer

      # @!method initialize(currency: nil, disputes_gross_amount: nil, institution: nil, interchange_gross_amount: nil, network: nil, other_fees_gross_amount: nil, settled_net_amount: nil, transactions_gross_amount: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::SettlementSummaryDetails} for more details.
      #
      #   @param currency [String] 3-character alphabetic ISO 4217 code.
      #
      #   @param disputes_gross_amount [Integer] The total gross amount of disputes settlements.
      #
      #   @param institution [String] The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE f
      #   ...
      #
      #   @param interchange_gross_amount [Integer] The total amount of interchange.
      #
      #   @param network [Symbol, Lithic::Models::SettlementSummaryDetails::Network] Card network where the transaction took place
      #
      #   @param other_fees_gross_amount [Integer] Total amount of gross other fees outside of interchange.
      #
      #   @param settled_net_amount [Integer] The total net amount of cash moved. (net value of settled_gross_amount, intercha
      #   ...
      #
      #   @param transactions_gross_amount [Integer] The total amount of settlement impacting transactions (excluding interchange, fe
      #   ...

      # Card network where the transaction took place
      #
      # @see Lithic::Models::SettlementSummaryDetails#network
      module Network
        extend Lithic::Internal::Type::Enum

        INTERLINK = :INTERLINK
        MAESTRO = :MAESTRO
        MASTERCARD = :MASTERCARD
        UNKNOWN = :UNKNOWN
        VISA = :VISA

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
