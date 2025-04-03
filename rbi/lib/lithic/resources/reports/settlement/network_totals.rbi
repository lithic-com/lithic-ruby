# typed: strong

module Lithic
  module Resources
    class Reports
      class Settlement
        class NetworkTotals
          # Retrieve a specific network total record by token. Not available in sandbox.
          sig do
            params(
              token: String,
              request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash))
            )
              .returns(Lithic::Models::Reports::Settlement::NetworkTotalRetrieveResponse)
          end
          def retrieve(
            # Token of the network total record to retrieve
            token,
            request_options: {}
          )
          end

          # List network total records with optional filters. Not available in sandbox.
          sig do
            params(
              begin_: Time,
              end_: Time,
              ending_before: String,
              institution_id: String,
              network: Lithic::Models::Reports::Settlement::NetworkTotalListParams::Network::OrSymbol,
              page_size: Integer,
              report_date: Date,
              report_date_begin: Date,
              report_date_end: Date,
              settlement_institution_id: String,
              starting_after: String,
              request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash))
            )
              .returns(Lithic::Internal::CursorPage[Lithic::Models::Reports::Settlement::NetworkTotalListResponse])
          end
          def list(
            # Datetime in RFC 3339 format. Only entries created after the specified time will
            #   be included. UTC time zone.
            begin_: nil,
            # Datetime in RFC 3339 format. Only entries created before the specified time will
            #   be included. UTC time zone.
            end_: nil,
            # A cursor representing an item's token before which a page of results should end.
            #   Used to retrieve the previous page of results before this item.
            ending_before: nil,
            # Institution ID to filter on.
            institution_id: nil,
            # Network to filter on.
            network: nil,
            # Number of records per page.
            page_size: nil,
            # Singular report date to filter on (YYYY-MM-DD). Cannot be populated in
            #   conjunction with report_date_begin or report_date_end.
            report_date: nil,
            # Earliest report date to filter on, inclusive (YYYY-MM-DD).
            report_date_begin: nil,
            # Latest report date to filter on, inclusive (YYYY-MM-DD).
            report_date_end: nil,
            # Settlement institution ID to filter on.
            settlement_institution_id: nil,
            # A cursor representing an item's token after which a page of results should
            #   begin. Used to retrieve the next page of results after this item.
            starting_after: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Lithic::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
