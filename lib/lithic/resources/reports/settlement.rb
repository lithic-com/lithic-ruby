# frozen_string_literal: true

module Lithic
  module Resources
    class Reports
      class Settlement
        # @return [Lithic::Resources::Reports::Settlement::NetworkTotals]
        attr_reader :network_totals

        # List details.
        #
        # @param report_date [Date] Date of the settlement report to retrieve. Not available in sandbox.
        #
        # @param params [Lithic::Models::Reports::SettlementListDetailsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
        #     Used to retrieve the previous page of results before this item.
        #
        #   @option params [Integer] :page_size Page size (for pagination).
        #
        #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
        #     begin. Used to retrieve the next page of results after this item.
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::CursorPage<Lithic::Models::SettlementDetail>]
        #
        # @see Lithic::Models::Reports::SettlementListDetailsParams
        def list_details(report_date, params = {})
          parsed, options = Lithic::Models::Reports::SettlementListDetailsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/reports/settlement/details/%1$s", report_date],
            query: parsed,
            page: Lithic::CursorPage,
            model: Lithic::Models::SettlementDetail,
            options: options
          )
        end

        # Get the settlement report for a specified report date. Not available in sandbox.
        #
        # @param report_date [Date] Date of the settlement report to retrieve.
        #
        # @param params [Lithic::Models::Reports::SettlementSummaryParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Lithic::Models::SettlementReport]
        #
        # @see Lithic::Models::Reports::SettlementSummaryParams
        def summary(report_date, params = {})
          @client.request(
            method: :get,
            path: ["v1/reports/settlement/summary/%1$s", report_date],
            model: Lithic::Models::SettlementReport,
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
