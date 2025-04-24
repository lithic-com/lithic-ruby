# frozen_string_literal: true

module Lithic
  module Models
    module Reports
      module Settlement
        # @see Lithic::Resources::Reports::Settlement::NetworkTotals#retrieve
        class NetworkTotalRetrieveResponse < Lithic::Internal::Type::BaseModel
          # @!attribute token
          #   Globally unique identifier.
          #
          #   @return [String]
          required :token, String

          # @!attribute amounts
          #
          #   @return [Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse::Amounts]
          required :amounts, -> { Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse::Amounts }

          # @!attribute created
          #   RFC 3339 timestamp for when the record was created. UTC time zone.
          #
          #   @return [Time]
          required :created, Time

          # @!attribute currency
          #   3-character alphabetic ISO 4217 code.
          #
          #   @return [String]
          required :currency, String

          # @!attribute institution_id
          #   The institution that activity occurred on. For Mastercard: ICA (Interbank Card
          #   Association). For Maestro: institution ID. For Visa: lowest level SRE
          #   (Settlement Reporting Entity).
          #
          #   @return [String]
          required :institution_id, String

          # @!attribute network
          #   Card network where the transaction took place. VISA, MASTERCARD, MAESTRO, or
          #   INTERLINK.
          #
          #   @return [Symbol, Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse::Network]
          required :network, enum: -> { Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse::Network }

          # @!attribute report_date
          #   Date that the network total record applies to. YYYY-MM-DD format.
          #
          #   @return [Date]
          required :report_date, Date

          # @!attribute settlement_institution_id
          #   The institution responsible for settlement. For Mastercard: same as
          #   `institution_id`. For Maestro: billing ICA. For Visa: Funds Transfer SRE
          #   (FTSRE).
          #
          #   @return [String]
          required :settlement_institution_id, String

          # @!attribute settlement_service
          #   Settlement service.
          #
          #   @return [String]
          required :settlement_service, String

          # @!attribute updated
          #   RFC 3339 timestamp for when the record was last updated. UTC time zone.
          #
          #   @return [Time]
          required :updated, Time

          # @!attribute cycle
          #   The clearing cycle that the network total record applies to. Mastercard only.
          #
          #   @return [Integer, nil]
          optional :cycle, Integer

          # @!method initialize(token:, amounts:, created:, currency:, institution_id:, network:, report_date:, settlement_institution_id:, settlement_service:, updated:, cycle: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse} for more
          #   details.
          #
          #   @param token [String] Globally unique identifier.
          #
          #   @param amounts [Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse::Amounts]
          #
          #   @param created [Time] RFC 3339 timestamp for when the record was created. UTC time zone.
          #
          #   @param currency [String] 3-character alphabetic ISO 4217 code.
          #
          #   @param institution_id [String] The institution that activity occurred on. For Mastercard: ICA (Interbank Card A
          #   ...
          #
          #   @param network [Symbol, Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse::Network] Card network where the transaction took place. VISA, MASTERCARD, MAESTRO, or INT
          #   ...
          #
          #   @param report_date [Date] Date that the network total record applies to. YYYY-MM-DD format.
          #
          #   @param settlement_institution_id [String] The institution responsible for settlement. For Mastercard: same as `institution
          #   ...
          #
          #   @param settlement_service [String] Settlement service.
          #
          #   @param updated [Time] RFC 3339 timestamp for when the record was last updated. UTC time zone.
          #
          #   @param cycle [Integer] The clearing cycle that the network total record applies to. Mastercard only.

          # @see Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse#amounts
          class Amounts < Lithic::Internal::Type::BaseModel
            # @!attribute gross_settlement
            #   Total settlement amount excluding interchange, in currency's smallest unit.
            #
            #   @return [Integer]
            required :gross_settlement, Integer

            # @!attribute interchange_fees
            #   Interchange amount, in currency's smallest unit.
            #
            #   @return [Integer]
            required :interchange_fees, Integer

            # @!attribute net_settlement
            #   `gross_settlement` net of `interchange_fees` and `visa_charges` (if applicable),
            #   in currency's smallest unit.
            #
            #   @return [Integer]
            required :net_settlement, Integer

            # @!attribute visa_charges
            #   Charges specific to Visa/Interlink, in currency's smallest unit.
            #
            #   @return [Integer, nil]
            optional :visa_charges, Integer

            # @!method initialize(gross_settlement:, interchange_fees:, net_settlement:, visa_charges: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse::Amounts} for
            #   more details.
            #
            #   @param gross_settlement [Integer] Total settlement amount excluding interchange, in currency's smallest unit.
            #
            #   @param interchange_fees [Integer] Interchange amount, in currency's smallest unit.
            #
            #   @param net_settlement [Integer] `gross_settlement` net of `interchange_fees` and `visa_charges` (if applicable),
            #   ...
            #
            #   @param visa_charges [Integer] Charges specific to Visa/Interlink, in currency's smallest unit.
          end

          # Card network where the transaction took place. VISA, MASTERCARD, MAESTRO, or
          # INTERLINK.
          #
          # @see Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse#network
          module Network
            extend Lithic::Internal::Type::Enum

            VISA = :VISA
            MASTERCARD = :MASTERCARD
            MAESTRO = :MAESTRO
            INTERLINK = :INTERLINK

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
