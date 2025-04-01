# frozen_string_literal: true

module Lithic
  module Models
    class SettlementSummaryDetails < Lithic::BaseModel
      # @!attribute [r] currency
      #   3-character alphabetic ISO 4217 code.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!parse
      #   # @return [String]
      #   attr_writer :currency

      # @!attribute [r] disputes_gross_amount
      #   The total gross amount of disputes settlements.
      #
      #   @return [Integer, nil]
      optional :disputes_gross_amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :disputes_gross_amount

      # @!attribute [r] institution
      #   The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      #     for Visa).
      #
      #   @return [String, nil]
      optional :institution, String

      # @!parse
      #   # @return [String]
      #   attr_writer :institution

      # @!attribute [r] interchange_gross_amount
      #   The total amount of interchange.
      #
      #   @return [Integer, nil]
      optional :interchange_gross_amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :interchange_gross_amount

      # @!attribute [r] network
      #   Card network where the transaction took place
      #
      #   @return [Symbol, Lithic::Models::SettlementSummaryDetails::Network, nil]
      optional :network, enum: -> { Lithic::Models::SettlementSummaryDetails::Network }

      # @!parse
      #   # @return [Symbol, Lithic::Models::SettlementSummaryDetails::Network]
      #   attr_writer :network

      # @!attribute [r] other_fees_gross_amount
      #   Total amount of gross other fees outside of interchange.
      #
      #   @return [Integer, nil]
      optional :other_fees_gross_amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :other_fees_gross_amount

      # @!attribute [r] settled_net_amount
      #   The total net amount of cash moved. (net value of settled_gross_amount,
      #     interchange, fees).
      #
      #   @return [Integer, nil]
      optional :settled_net_amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :settled_net_amount

      # @!attribute [r] transactions_gross_amount
      #   The total amount of settlement impacting transactions (excluding interchange,
      #     fees, and disputes).
      #
      #   @return [Integer, nil]
      optional :transactions_gross_amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :transactions_gross_amount

      # @!parse
      #   # @param currency [String]
      #   # @param disputes_gross_amount [Integer]
      #   # @param institution [String]
      #   # @param interchange_gross_amount [Integer]
      #   # @param network [Symbol, Lithic::Models::SettlementSummaryDetails::Network]
      #   # @param other_fees_gross_amount [Integer]
      #   # @param settled_net_amount [Integer]
      #   # @param transactions_gross_amount [Integer]
      #   #
      #   def initialize(
      #     currency: nil,
      #     disputes_gross_amount: nil,
      #     institution: nil,
      #     interchange_gross_amount: nil,
      #     network: nil,
      #     other_fees_gross_amount: nil,
      #     settled_net_amount: nil,
      #     transactions_gross_amount: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Card network where the transaction took place
      #
      # @see Lithic::Models::SettlementSummaryDetails#network
      module Network
        extend Lithic::Enum

        INTERLINK = :INTERLINK
        MAESTRO = :MAESTRO
        MASTERCARD = :MASTERCARD
        UNKNOWN = :UNKNOWN
        VISA = :VISA

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
