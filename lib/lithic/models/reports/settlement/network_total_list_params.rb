# frozen_string_literal: true

module Lithic
  module Models
    module Reports
      module Settlement
        class NetworkTotalListParams < Lithic::BaseModel
          # @!parse
          #   extend Lithic::Type::RequestParameters::Converter
          include Lithic::RequestParameters

          # @!attribute [r] begin_
          #   Datetime in RFC 3339 format. Only entries created after the specified time will
          #     be included. UTC time zone.
          #
          #   @return [Time, nil]
          optional :begin_, Time, api_name: :begin

          # @!parse
          #   # @return [Time]
          #   attr_writer :begin_

          # @!attribute [r] end_
          #   Datetime in RFC 3339 format. Only entries created before the specified time will
          #     be included. UTC time zone.
          #
          #   @return [Time, nil]
          optional :end_, Time, api_name: :end

          # @!parse
          #   # @return [Time]
          #   attr_writer :end_

          # @!attribute [r] ending_before
          #   A cursor representing an item's token before which a page of results should end.
          #     Used to retrieve the previous page of results before this item.
          #
          #   @return [String, nil]
          optional :ending_before, String

          # @!parse
          #   # @return [String]
          #   attr_writer :ending_before

          # @!attribute [r] institution_id
          #   Institution ID to filter on.
          #
          #   @return [String, nil]
          optional :institution_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :institution_id

          # @!attribute [r] network
          #   Network to filter on.
          #
          #   @return [Symbol, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network, nil]
          optional :network, enum: -> { Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network }

          # @!parse
          #   # @return [Symbol, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network]
          #   attr_writer :network

          # @!attribute [r] page_size
          #   Number of records per page.
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :page_size

          # @!attribute [r] report_date
          #   Singular report date to filter on (YYYY-MM-DD). Cannot be populated in
          #     conjunction with report_date_begin or report_date_end.
          #
          #   @return [Date, nil]
          optional :report_date, Date

          # @!parse
          #   # @return [Date]
          #   attr_writer :report_date

          # @!attribute [r] report_date_begin
          #   Earliest report date to filter on, inclusive (YYYY-MM-DD).
          #
          #   @return [Date, nil]
          optional :report_date_begin, Date

          # @!parse
          #   # @return [Date]
          #   attr_writer :report_date_begin

          # @!attribute [r] report_date_end
          #   Latest report date to filter on, inclusive (YYYY-MM-DD).
          #
          #   @return [Date, nil]
          optional :report_date_end, Date

          # @!parse
          #   # @return [Date]
          #   attr_writer :report_date_end

          # @!attribute [r] settlement_institution_id
          #   Settlement institution ID to filter on.
          #
          #   @return [String, nil]
          optional :settlement_institution_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :settlement_institution_id

          # @!attribute [r] starting_after
          #   A cursor representing an item's token after which a page of results should
          #     begin. Used to retrieve the next page of results after this item.
          #
          #   @return [String, nil]
          optional :starting_after, String

          # @!parse
          #   # @return [String]
          #   attr_writer :starting_after

          # @!parse
          #   # @param begin_ [Time]
          #   # @param end_ [Time]
          #   # @param ending_before [String]
          #   # @param institution_id [String]
          #   # @param network [Symbol, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network]
          #   # @param page_size [Integer]
          #   # @param report_date [Date]
          #   # @param report_date_begin [Date]
          #   # @param report_date_end [Date]
          #   # @param settlement_institution_id [String]
          #   # @param starting_after [String]
          #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     begin_: nil,
          #     end_: nil,
          #     ending_before: nil,
          #     institution_id: nil,
          #     network: nil,
          #     page_size: nil,
          #     report_date: nil,
          #     report_date_begin: nil,
          #     report_date_end: nil,
          #     settlement_institution_id: nil,
          #     starting_after: nil,
          #     request_options: {},
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Lithic::BaseModel) -> void

          # Network to filter on.
          module Network
            extend Lithic::Enum

            VISA = :VISA
            MASTERCARD = :MASTERCARD
            MAESTRO = :MAESTRO
            INTERLINK = :INTERLINK

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end
    end
  end
end
