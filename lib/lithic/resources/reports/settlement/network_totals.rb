# frozen_string_literal: true

module Lithic
  module Resources
    class Reports
      class Settlement
        class NetworkTotals
          # Retrieve a specific network total record by token. Not available in sandbox.
          #
          # @param token [String] Token of the network total record to retrieve
          #
          # @param params [Lithic::Models::Reports::Settlement::NetworkTotalRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse]
          #
          # @see Lithic::Models::Reports::Settlement::NetworkTotalRetrieveParams
          def retrieve(token, params = {})
            @client.request(
              method: :get,
              path: ["v1/reports/settlement/network_totals/%1$s", token],
              model: Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse,
              options: params[:request_options]
            )
          end

          # List network total records with optional filters. Not available in sandbox.
          #
          # @param params [Lithic::Models::Reports::Settlement::NetworkTotalListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Time] :begin_ Datetime in RFC 3339 format. Only entries created after the specified time will
          #     be included. UTC time zone.
          #
          #   @option params [Time] :end_ Datetime in RFC 3339 format. Only entries created before the specified time will
          #     be included. UTC time zone.
          #
          #   @option params [String] :ending_before A cursor representing an item's token before which a page of results should end.
          #     Used to retrieve the previous page of results before this item.
          #
          #   @option params [String] :institution_id Institution ID to filter on.
          #
          #   @option params [Symbol, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network] :network Network to filter on.
          #
          #   @option params [Integer] :page_size Number of records per page.
          #
          #   @option params [Date] :report_date Singular report date to filter on (YYYY-MM-DD). Cannot be populated in
          #     conjunction with report_date_begin or report_date_end.
          #
          #   @option params [Date] :report_date_begin Earliest report date to filter on, inclusive (YYYY-MM-DD).
          #
          #   @option params [Date] :report_date_end Latest report date to filter on, inclusive (YYYY-MM-DD).
          #
          #   @option params [String] :settlement_institution_id Settlement institution ID to filter on.
          #
          #   @option params [String] :starting_after A cursor representing an item's token after which a page of results should
          #     begin. Used to retrieve the next page of results after this item.
          #
          #   @option params [Lithic::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Lithic::CursorPage<Lithic::Models::Reports::Settlement::NetworkTotalListResponse>]
          #
          # @see Lithic::Models::Reports::Settlement::NetworkTotalListParams
          def list(params = {})
            parsed, options = Lithic::Models::Reports::Settlement::NetworkTotalListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "v1/reports/settlement/network_totals",
              query: parsed,
              page: Lithic::CursorPage,
              model: Lithic::Models::Reports::Settlement::NetworkTotalListResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Lithic::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
