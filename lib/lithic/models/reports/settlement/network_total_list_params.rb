# frozen_string_literal: true

module Lithic
  module Models
    module Reports
      module Settlement
        # @see Lithic::Resources::Reports::Settlement::NetworkTotals#list
        class NetworkTotalListParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!attribute begin_
          #   Datetime in RFC 3339 format. Only entries created after the specified time will
          #   be included. UTC time zone.
          #
          #   @return [Time, nil]
          optional :begin_, Time

          # @!attribute end_
          #   Datetime in RFC 3339 format. Only entries created before the specified time will
          #   be included. UTC time zone.
          #
          #   @return [Time, nil]
          optional :end_, Time

          # @!attribute ending_before
          #   A cursor representing an item's token before which a page of results should end.
          #   Used to retrieve the previous page of results before this item.
          #
          #   @return [String, nil]
          optional :ending_before, String

          # @!attribute institution_id
          #   Institution ID to filter on.
          #
          #   @return [String, nil]
          optional :institution_id, String

          # @!attribute network
          #   Network to filter on.
          #
          #   @return [Symbol, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network, nil]
          optional :network, enum: -> { Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network }

          # @!attribute page_size
          #   Number of records per page.
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!attribute report_date
          #   Singular report date to filter on (YYYY-MM-DD). Cannot be populated in
          #   conjunction with report_date_begin or report_date_end.
          #
          #   @return [Date, nil]
          optional :report_date, Date

          # @!attribute report_date_begin
          #   Earliest report date to filter on, inclusive (YYYY-MM-DD).
          #
          #   @return [Date, nil]
          optional :report_date_begin, Date

          # @!attribute report_date_end
          #   Latest report date to filter on, inclusive (YYYY-MM-DD).
          #
          #   @return [Date, nil]
          optional :report_date_end, Date

          # @!attribute settlement_institution_id
          #   Settlement institution ID to filter on.
          #
          #   @return [String, nil]
          optional :settlement_institution_id, String

          # @!attribute starting_after
          #   A cursor representing an item's token after which a page of results should
          #   begin. Used to retrieve the next page of results after this item.
          #
          #   @return [String, nil]
          optional :starting_after, String

          # @!method initialize(begin_: nil, end_: nil, ending_before: nil, institution_id: nil, network: nil, page_size: nil, report_date: nil, report_date_begin: nil, report_date_end: nil, settlement_institution_id: nil, starting_after: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::Reports::Settlement::NetworkTotalListParams} for more details.
          #
          #   @param begin_ [Time] Datetime in RFC 3339 format. Only entries created after the specified time will
          #   ...
          #
          #   @param end_ [Time] Datetime in RFC 3339 format. Only entries created before the specified time will
          #   ...
          #
          #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
          #   ...
          #
          #   @param institution_id [String] Institution ID to filter on.
          #
          #   @param network [Symbol, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network] Network to filter on.
          #
          #   @param page_size [Integer] Number of records per page.
          #
          #   @param report_date [Date] Singular report date to filter on (YYYY-MM-DD). Cannot be populated in conjuncti
          #   ...
          #
          #   @param report_date_begin [Date] Earliest report date to filter on, inclusive (YYYY-MM-DD).
          #
          #   @param report_date_end [Date] Latest report date to filter on, inclusive (YYYY-MM-DD).
          #
          #   @param settlement_institution_id [String] Settlement institution ID to filter on.
          #
          #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
          #   ...
          #
          #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

          # Network to filter on.
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
