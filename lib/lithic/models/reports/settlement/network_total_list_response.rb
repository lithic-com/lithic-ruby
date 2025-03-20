# frozen_string_literal: true

module Lithic
  module Models
    module Reports
      module Settlement
        class NetworkTotalListResponse < Lithic::BaseModel
          # @!attribute token
          #   Globally unique identifier.
          #
          #   @return [String]
          required :token, String

          # @!attribute amounts
          #
          #   @return [Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Amounts]
          required :amounts, -> { Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Amounts }

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
          #     Association). For Maestro: institution ID. For Visa: lowest level SRE
          #     (Settlement Reporting Entity).
          #
          #   @return [String]
          required :institution_id, String

          # @!attribute network
          #   Card network where the transaction took place. VISA, MASTERCARD, MAESTRO, or
          #     INTERLINK.
          #
          #   @return [Symbol, Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Network]
          required :network, enum: -> { Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Network }

          # @!attribute report_date
          #   Date that the network total record applies to. YYYY-MM-DD format.
          #
          #   @return [Date]
          required :report_date, Date

          # @!attribute settlement_institution_id
          #   The institution responsible for settlement. For Mastercard: same as
          #     `institution_id`. For Maestro: billing ICA. For Visa: Funds Transfer SRE
          #     (FTSRE).
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

          # @!attribute [r] cycle
          #   The clearing cycle that the network total record applies to. Mastercard only.
          #
          #   @return [Integer, nil]
          optional :cycle, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :cycle

          # @!parse
          #   # @param token [String]
          #   # @param amounts [Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Amounts]
          #   # @param created [Time]
          #   # @param currency [String]
          #   # @param institution_id [String]
          #   # @param network [Symbol, Lithic::Models::Reports::Settlement::NetworkTotalListResponse::Network]
          #   # @param report_date [Date]
          #   # @param settlement_institution_id [String]
          #   # @param settlement_service [String]
          #   # @param updated [Time]
          #   # @param cycle [Integer]
          #   #
          #   def initialize(
          #     token:,
          #     amounts:,
          #     created:,
          #     currency:,
          #     institution_id:,
          #     network:,
          #     report_date:,
          #     settlement_institution_id:,
          #     settlement_service:,
          #     updated:,
          #     cycle: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Lithic::BaseModel) -> void

          class Amounts < Lithic::BaseModel
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
            #     in currency's smallest unit.
            #
            #   @return [Integer]
            required :net_settlement, Integer

            # @!attribute [r] visa_charges
            #   Charges specific to Visa/Interlink, in currency's smallest unit.
            #
            #   @return [Integer, nil]
            optional :visa_charges, Integer

            # @!parse
            #   # @return [Integer]
            #   attr_writer :visa_charges

            # @!parse
            #   # @param gross_settlement [Integer]
            #   # @param interchange_fees [Integer]
            #   # @param net_settlement [Integer]
            #   # @param visa_charges [Integer]
            #   #
            #   def initialize(gross_settlement:, interchange_fees:, net_settlement:, visa_charges: nil, **) = super

            # def initialize: (Hash | Lithic::BaseModel) -> void
          end

          # Card network where the transaction took place. VISA, MASTERCARD, MAESTRO, or
          #   INTERLINK.
          module Network
            extend Lithic::Enum

            VISA = :VISA
            MASTERCARD = :MASTERCARD
            MAESTRO = :MAESTRO
            INTERLINK = :INTERLINK

            finalize!
          end
        end
      end
    end
  end
end
