# frozen_string_literal: true

module Lithic
  module Resources
    class Reports
      class Settlement
        class NetworkTotals
          # Retrieve a specific network total record by token. Not available in sandbox.
          #
          # @overload retrieve(token, request_options: {})
          #
          # @param token [String] Token of the network total record to retrieve
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
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

          # Some parameter documentations has been truncated, see
          # {Lithic::Models::Reports::Settlement::NetworkTotalListParams} for more details.
          #
          # List network total records with optional filters. Not available in sandbox.
          #
          # @overload list(begin_: nil, end_: nil, ending_before: nil, institution_id: nil, network: nil, page_size: nil, report_date: nil, report_date_begin: nil, report_date_end: nil, settlement_institution_id: nil, starting_after: nil, request_options: {})
          #
          # @param begin_ [Time] Datetime in RFC 3339 format. Only entries created after the specified time will
          #
          # @param end_ [Time] Datetime in RFC 3339 format. Only entries created before the specified time will
          #
          # @param ending_before [String] A cursor representing an item's token before which a page of results should end.
          #
          # @param institution_id [String] Institution ID to filter on.
          #
          # @param network [Symbol, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network] Network to filter on.
          #
          # @param page_size [Integer] Number of records per page.
          #
          # @param report_date [Date] Singular report date to filter on (YYYY-MM-DD). Cannot be populated in conjuncti
          #
          # @param report_date_begin [Date] Earliest report date to filter on, inclusive (YYYY-MM-DD).
          #
          # @param report_date_end [Date] Latest report date to filter on, inclusive (YYYY-MM-DD).
          #
          # @param settlement_institution_id [String] Settlement institution ID to filter on.
          #
          # @param starting_after [String] A cursor representing an item's token after which a page of results should begin
          #
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Lithic::Internal::CursorPage<Lithic::Models::Reports::Settlement::NetworkTotalListResponse>]
          #
          # @see Lithic::Models::Reports::Settlement::NetworkTotalListParams
          def list(params = {})
            parsed, options = Lithic::Reports::Settlement::NetworkTotalListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "v1/reports/settlement/network_totals",
              query: parsed.transform_keys(begin_: "begin", end_: "end"),
              page: Lithic::Internal::CursorPage,
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
