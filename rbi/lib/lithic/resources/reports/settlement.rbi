# typed: strong

module Lithic
  module Resources
    class Reports
      class Settlement
        sig { returns(Lithic::Resources::Reports::Settlement::NetworkTotals) }
        attr_reader :network_totals

        # List details.
        sig do
          params(
            report_date: Date,
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
          )
            .returns(Lithic::Internal::CursorPage[Lithic::Models::SettlementDetail])
        end
        def list_details(
          # Date of the settlement report to retrieve. Not available in sandbox.
          report_date,
          # A cursor representing an item's token before which a page of results should end.
          #   Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Page size (for pagination).
          page_size: nil,
          # A cursor representing an item's token after which a page of results should
          #   begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          request_options: {}
        ); end
        # Get the settlement report for a specified report date. Not available in sandbox.
        sig do
          params(
            report_date: Date,
            request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash))
          )
            .returns(Lithic::Models::SettlementReport)
        end
        def summary(
          # Date of the settlement report to retrieve.
          report_date,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
