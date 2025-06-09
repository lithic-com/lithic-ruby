# frozen_string_literal: true

module Lithic
  module Models
    class SettlementDetail < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier denoting the Settlement Detail.
      #
      #   @return [String]
      required :token, String

      # @!attribute account_token
      #   The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      #   for Visa).
      #
      #   @return [String]
      required :account_token, String

      # @!attribute card_program_token
      #   Globally unique identifier denoting the card program that the associated
      #   Transaction occurred on.
      #
      #   @return [String]
      required :card_program_token, String

      # @!attribute card_token
      #   Globally unique identifier denoting the card that the associated Transaction
      #   occurred on.
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
      required :event_tokens, Lithic::Internal::Type::ArrayOf[String]

      # @!attribute institution
      #   The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE
      #   for Visa).
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
      required :network, enum: -> { Lithic::SettlementDetail::Network }

      # @!attribute other_fees_details
      #   The total gross amount of other fees by type.
      #
      #   @return [Lithic::Models::SettlementDetail::OtherFeesDetails]
      required :other_fees_details, -> { Lithic::SettlementDetail::OtherFeesDetails }

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
      #   Date of when money movement is triggered for the transaction. One exception
      #   applies - for Mastercard dual message settlement, this is the settlement
      #   advisement date, which is distinct from the date of money movement.
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
      #   fees, and disputes).
      #
      #   @return [Integer]
      required :transactions_gross_amount, Integer

      # @!attribute type
      #   The type of settlement record.
      #
      #   @return [Symbol, Lithic::Models::SettlementDetail::Type]
      required :type, enum: -> { Lithic::SettlementDetail::Type }

      # @!attribute updated
      #   Date and time when the transaction first occurred. UTC time zone.
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute fee_description
      #   Network's description of a fee, only present on records with type `FEE`.
      #
      #   @return [String, nil]
      optional :fee_description, String

      # @!method initialize(token:, account_token:, card_program_token:, card_token:, created:, currency:, disputes_gross_amount:, event_tokens:, institution:, interchange_fee_extended_precision:, interchange_gross_amount:, network:, other_fees_details:, other_fees_gross_amount:, report_date:, settlement_date:, transaction_token:, transactions_gross_amount:, type:, updated:, fee_description: nil)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::SettlementDetail} for more details.
      #
      #   @param token [String] Globally unique identifier denoting the Settlement Detail.
      #
      #   @param account_token [String] The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE f
      #
      #   @param card_program_token [String] Globally unique identifier denoting the card program that the associated Transac
      #
      #   @param card_token [String] Globally unique identifier denoting the card that the associated Transaction occ
      #
      #   @param created [Time] Date and time when the transaction first occurred. UTC time zone.
      #
      #   @param currency [String] Three-character alphabetic ISO 4217 code.
      #
      #   @param disputes_gross_amount [Integer] The total gross amount of disputes settlements.
      #
      #   @param event_tokens [Array<String>] Globally unique identifiers denoting the Events associated with this settlement.
      #
      #   @param institution [String] The most granular ID the network settles with (e.g., ICA for Mastercard, FTSRE f
      #
      #   @param interchange_fee_extended_precision [Integer] The total amount of interchange in six-digit extended precision.
      #
      #   @param interchange_gross_amount [Integer] The total amount of interchange.
      #
      #   @param network [Symbol, Lithic::Models::SettlementDetail::Network] Card network where the transaction took place.
      #
      #   @param other_fees_details [Lithic::Models::SettlementDetail::OtherFeesDetails] The total gross amount of other fees by type.
      #
      #   @param other_fees_gross_amount [Integer] Total amount of gross other fees outside of interchange.
      #
      #   @param report_date [String] Date of when the report was first generated.
      #
      #   @param settlement_date [String] Date of when money movement is triggered for the transaction. One exception appl
      #
      #   @param transaction_token [String] Globally unique identifier denoting the associated Transaction object.
      #
      #   @param transactions_gross_amount [Integer] The total amount of settlement impacting transactions (excluding interchange, fe
      #
      #   @param type [Symbol, Lithic::Models::SettlementDetail::Type] The type of settlement record.
      #
      #   @param updated [Time] Date and time when the transaction first occurred. UTC time zone.
      #
      #   @param fee_description [String] Network's description of a fee, only present on records with type `FEE`.

      # Card network where the transaction took place.
      #
      # @see Lithic::Models::SettlementDetail#network
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

      # @see Lithic::Models::SettlementDetail#other_fees_details
      class OtherFeesDetails < Lithic::Internal::Type::BaseModel
        # @!attribute isa
        #
        #   @return [Integer, nil]
        optional :isa, Integer, api_name: :ISA

        # @!method initialize(isa: nil)
        #   The total gross amount of other fees by type.
        #
        #   @param isa [Integer]
      end

      # The type of settlement record.
      #
      # @see Lithic::Models::SettlementDetail#type
      module Type
        extend Lithic::Internal::Type::Enum

        ADJUSTMENT = :ADJUSTMENT
        ARBITRATION = :ARBITRATION
        CHARGEBACK = :CHARGEBACK
        CLEARING = :CLEARING
        FEE = :FEE
        FINANCIAL = :FINANCIAL
        NON_FINANCIAL = :"NON-FINANCIAL"
        PREARBITRATION = :PREARBITRATION
        REPRESENTMENT = :REPRESENTMENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
