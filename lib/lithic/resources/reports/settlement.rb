# frozen_string_literal: true

module Lithic
  module Resources
    class Reports
      class Settlement
        # @return [Lithic::Resources::Reports::Settlement::NetworkTotals]
        attr_reader :network_totals

        # Some parameter documentations has been truncated, see
        # {Lithic::Models::Reports::SettlementListDetailsParams} for more details.
        #
        # List details.
        #
        # @overload list_details(report_date, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
        #
        # @param report_date [Date] Date of the settlement report to retrieve. Not available in sandbox.
        #
        # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        # @param page_size [Integer] Page size (for pagination).
        #
        # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::Internal::CursorPage<Lithic::SettlementDetail>]
        #
        # @see Lithic::Models::Reports::SettlementListDetailsParams
        def list_details(report_date, params = {})
          parsed, options = Lithic::Reports::SettlementListDetailsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/reports/settlement/details/%1$s", report_date],
            query: parsed,
            page: Lithic::Internal::CursorPage,
            model: Lithic::SettlementDetail,
            options: options
          )
        end

        # Get the settlement report for a specified report date. Not available in sandbox.
        #
        # @overload summary(report_date, request_options: {})
        #
        # @param report_date [Date] Date of the settlement report to retrieve.
        #
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Lithic::SettlementReport]
        #
        # @see Lithic::Models::Reports::SettlementSummaryParams
        def summary(report_date, params = {})
          @client.request(
            method: :get,
            path: ["v1/reports/settlement/summary/%1$s", report_date],
            model: Lithic::SettlementReport,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Lithic::Client]
        def initialize(client:)
          @client = client
          @network_totals = Lithic::Resources::Reports::Settlement::NetworkTotals.new(client: client)
        end
      end
    end
  end
end
