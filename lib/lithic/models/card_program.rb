# frozen_string_literal: true

module Lithic
  module Models
    class CardProgram < Lithic::BaseModel
      # @!attribute token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :token, String

      # @!attribute created
      #   Timestamp of when the card program was created.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute name
      #   The name of the card program.
      #
      #   @return [String]
      required :name, String

      # @!attribute pan_range_end
      #   The first digits of the card number that this card program ends with.
      #
      #   @return [String]
      required :pan_range_end, String

      # @!attribute pan_range_start
      #   The first digits of the card number that this card program starts with.
      #
      #   @return [String]
      required :pan_range_start, String

      # @!attribute [r] cardholder_currency
      #   3-digit alphabetic ISO 4217 code for the currency of the cardholder.
      #
      #   @return [String, nil]
      optional :cardholder_currency, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cardholder_currency

      # @!attribute [r] settlement_currencies
      #   List of 3-digit alphabetic ISO 4217 codes for the currencies that the card
      #     program supports for settlement.
      #
      #   @return [Array<String>, nil]
      optional :settlement_currencies, Lithic::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :settlement_currencies

      # @!parse
      #   # @param token [String]
      #   # @param created [Time]
      #   # @param name [String]
      #   # @param pan_range_end [String]
      #   # @param pan_range_start [String]
      #   # @param cardholder_currency [String]
      #   # @param settlement_currencies [Array<String>]
      #   #
      #   def initialize(
      #     token:,
      #     created:,
      #     name:,
      #     pan_range_end:,
      #     pan_range_start:,
      #     cardholder_currency: nil,
      #     settlement_currencies: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
