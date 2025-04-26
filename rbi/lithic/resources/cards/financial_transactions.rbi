# typed: strong

module Lithic
  module Resources
    class Cards
      class FinancialTransactions
        # Get the card financial transaction for the provided token.
        sig do
          params(
            financial_transaction_token: String,
            card_token: String,
            request_options: Lithic::RequestOpts
          )
            .returns(Lithic::Models::FinancialTransaction)
        end
        def retrieve(
          # Globally unique identifier for financial transaction token.
          financial_transaction_token,
          card_token:,
          request_options: {}
        ); end
        # List the financial transactions for a given card.
        sig do
          params(
            card_token: String,
            begin_: Time,
            category: Lithic::Models::Cards::FinancialTransactionListParams::Category::OrSymbol,
            end_: Time,
            ending_before: String,
            result: Lithic::Models::Cards::FinancialTransactionListParams::Result::OrSymbol,
            starting_after: String,
            status: Lithic::Models::Cards::FinancialTransactionListParams::Status::OrSymbol,
            request_options: Lithic::RequestOpts
          )
            .returns(Lithic::Internal::SinglePage[Lithic::Models::FinancialTransaction])
        end
        def list(
          card_token,
          # Date string in RFC 3339 format. Only entries created after the specified time
          # will be included. UTC time zone.
          begin_: nil,
          # Financial Transaction category to be returned.
          category: nil,
          # Date string in RFC 3339 format. Only entries created before the specified time
          # will be included. UTC time zone.
          end_: nil,
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Financial Transaction result to be returned.
          result: nil,
          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          # Financial Transaction status to be returned.
          status: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
