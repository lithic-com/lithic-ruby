# frozen_string_literal: true

module Lithic
  module Models
    class SettlementDetail < Lithic::BaseModel
      # @!attribute token
      #   Globally unique identifier denoting the Settlement Detail.
      #
      #   @return [String]
      required :token, String

      # @!attribute account_token
      #   The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      #     for Visa).
      #
      #   @return [String]
      required :account_token, String

      # @!attribute card_program_token
      #   Globally unique identifier denoting the card program that the associated
      #     Transaction occurred on.
      #
      #   @return [String]
      required :card_program_token, String

      # @!attribute card_token
      #   Globally unique identifier denoting the card that the associated Transaction
      #     occurred on.
      #
      #   @return [String]
      required :card_token, String

      # @!attribute created
      #   Date and time when the transaction first occurred. UTC time zone.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #   Three-character alphabetic ISO 4217 code.
      #
      #   @return [String]
      required :currency, String

      # @!attribute disputes_gross_amount
      #   The total gross amount of disputes settlements.
      #
      #   @return [Integer]
      required :disputes_gross_amount, Integer

      # @!attribute event_tokens
      #   Globally unique identifiers denoting the Events associated with this settlement.
      #
      #   @return [Array<String>]
      required :event_tokens, Lithic::ArrayOf[String]

      # @!attribute institution
      #   The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      #     for Visa).
      #
      #   @return [String]
      required :institution, String

      # @!attribute interchange_fee_extended_precision
      #   The total amount of interchange in six-digit extended precision.
      #
      #   @return [Integer]
      required :interchange_fee_extended_precision, Integer

      # @!attribute interchange_gross_amount
      #   The total amount of interchange.
      #
      #   @return [Integer]
      required :interchange_gross_amount, Integer

      # @!attribute network
      #   Card network where the transaction took place.
      #
      #   @return [Symbol, Lithic::Models::SettlementDetail::Network]
      required :network, enum: -> { Lithic::Models::SettlementDetail::Network }

      # @!attribute other_fees_details
      #   The total gross amount of other fees by type.
      #
      #   @return [Lithic::Models::SettlementDetail::OtherFeesDetails]
      required :other_fees_details, -> { Lithic::Models::SettlementDetail::OtherFeesDetails }

      # @!attribute other_fees_gross_amount
      #   Total amount of gross other fees outside of interchange.
      #
      #   @return [Integer]
      required :other_fees_gross_amount, Integer

      # @!attribute report_date
      #   Date of when the report was first generated.
      #
      #   @return [String]
      required :report_date, String

      # @!attribute settlement_date
      #   Date of when money movement is triggered for the transaction.
      #
      #   @return [String]
      required :settlement_date, String

      # @!attribute transaction_token
      #   Globally unique identifier denoting the associated Transaction object.
      #
      #   @return [String]
      required :transaction_token, String

      # @!attribute transactions_gross_amount
      #   The total amount of settlement impacting transactions (excluding interchange,
      #     fees, and disputes).
      #
      #   @return [Integer]
      required :transactions_gross_amount, Integer

      # @!attribute type
      #   The type of settlement record.
      #
      #   @return [Symbol, Lithic::Models::SettlementDetail::Type]
      required :type, enum: -> { Lithic::Models::SettlementDetail::Type }

      # @!attribute updated
      #   Date and time when the transaction first occurred. UTC time zone.
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute [r] fee_description
      #   Network's description of a fee, only present on records with type `FEE`.
      #
      #   @return [String, nil]
      optional :fee_description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :fee_description

      # @!parse
      #   # @param token [String]
      #   # @param account_token [String]
      #   # @param card_program_token [String]
      #   # @param card_token [String]
      #   # @param created [Time]
      #   # @param currency [String]
      #   # @param disputes_gross_amount [Integer]
      #   # @param event_tokens [Array<String>]
      #   # @param institution [String]
      #   # @param interchange_fee_extended_precision [Integer]
      #   # @param interchange_gross_amount [Integer]
      #   # @param network [Symbol, Lithic::Models::SettlementDetail::Network]
      #   # @param other_fees_details [Lithic::Models::SettlementDetail::OtherFeesDetails]
      #   # @param other_fees_gross_amount [Integer]
      #   # @param report_date [String]
      #   # @param settlement_date [String]
      #   # @param transaction_token [String]
      #   # @param transactions_gross_amount [Integer]
      #   # @param type [Symbol, Lithic::Models::SettlementDetail::Type]
      #   # @param updated [Time]
      #   # @param fee_description [String]
      #   #
      #   def initialize(
      #     token:,
      #     account_token:,
      #     card_program_token:,
      #     card_token:,
      #     created:,
      #     currency:,
      #     disputes_gross_amount:,
      #     event_tokens:,
      #     institution:,
      #     interchange_fee_extended_precision:,
      #     interchange_gross_amount:,
      #     network:,
      #     other_fees_details:,
      #     other_fees_gross_amount:,
      #     report_date:,
      #     settlement_date:,
      #     transaction_token:,
      #     transactions_gross_amount:,
      #     type:,
      #     updated:,
      #     fee_description: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Card network where the transaction took place.
      module Network
        extend Lithic::Enum

        INTERLINK = :INTERLINK
        MAESTRO = :MAESTRO
        MASTERCARD = :MASTERCARD
        UNKNOWN = :UNKNOWN
        VISA = :VISA

        finalize!
      end

      class OtherFeesDetails < Lithic::BaseModel
        # @!attribute [r] isa
        #
        #   @return [Integer, nil]
        optional :isa, Integer, api_name: :ISA

        # @!parse
        #   # @return [Integer]
        #   attr_writer :isa

        # @!parse
        #   # The total gross amount of other fees by type.
        #   #
        #   # @param isa [Integer]
        #   #
        #   def initialize(isa: nil, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end

      # The type of settlement record.
      module Type
        extend Lithic::Enum

        ADJUSTMENT = :ADJUSTMENT
        ARBITRATION = :ARBITRATION
        CHARGEBACK = :CHARGEBACK
        CLEARING = :CLEARING
        FEE = :FEE
        FINANCIAL = :FINANCIAL
        NON_FINANCIAL = :"NON-FINANCIAL"
        PREARBITRATION = :PREARBITRATION
        REPRESENTMENT = :REPRESENTMENT

        finalize!
      end
    end
  end
end
