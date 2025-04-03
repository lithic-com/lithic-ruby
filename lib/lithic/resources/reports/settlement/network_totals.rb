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
          # @param token [String]
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

          # List network total records with optional filters. Not available in sandbox.
          #
          # @overload list(begin_: nil, end_: nil, ending_before: nil, institution_id: nil, network: nil, page_size: nil, report_date: nil, report_date_begin: nil, report_date_end: nil, settlement_institution_id: nil, starting_after: nil, request_options: {})
          #
          # @param begin_ [Time]
          # @param end_ [Time]
          # @param ending_before [String]
          # @param institution_id [String]
          # @param network [Symbol, Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network]
          # @param page_size [Integer]
          # @param report_date [Date]
          # @param report_date_begin [Date]
          # @param report_date_end [Date]
          # @param settlement_institution_id [String]
          # @param starting_after [String]
          # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Lithic::Internal::CursorPage<Lithic::Models::Reports::Settlement::NetworkTotalListResponse>]
          #
          # @see Lithic::Models::Reports::Settlement::NetworkTotalListParams
          def list(params = {})
            parsed, options = Lithic::Models::Reports::Settlement::NetworkTotalListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "v1/reports/settlement/network_totals",
              query: parsed,
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
