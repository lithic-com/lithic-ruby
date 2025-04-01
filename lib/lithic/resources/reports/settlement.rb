# frozen_string_literal: true

module Lithic
  module Resources
    class Reports
      class Settlement
        # @return [Lithic::Resources::Reports::Settlement::NetworkTotals]
        attr_reader :network_totals

        # List details.
        #
        # @overload list_details(report_date, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
        #
        # @param report_date [Date]
        # @param ending_before [String]
        # @param page_size [Integer]
        # @param starting_after [String]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
        # @overload summary(report_date, request_options: {})
        #
        # @param report_date [Date]
        # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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
