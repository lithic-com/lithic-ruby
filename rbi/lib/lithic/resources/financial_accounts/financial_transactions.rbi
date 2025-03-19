# typed: strong

module Lithic
  module Resources
    class FinancialAccounts
      class FinancialTransactions
        # Get the financial transaction for the provided token.
        sig do
          params(
            financial_transaction_token: String,
            financial_account_token: String,
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Lithic::Models::FinancialTransaction)
        end
        def retrieve(
          # Globally unique identifier for financial transaction token.
          financial_transaction_token,
          # Globally unique identifier for financial account.
          financial_account_token:,
          request_options: {}
        )
        end

        # List the financial transactions for a given financial account.
        sig do
          params(
            financial_account_token: String,
            begin_: Time,
            category: Symbol,
            end_: Time,
            ending_before: String,
            result: Symbol,
            starting_after: String,
            status: Symbol,
            request_options: T.nilable(T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Lithic::SinglePage[Lithic::Models::FinancialTransaction])
        end
        def list(
          # Globally unique identifier for financial account.
          financial_account_token,
          # Date string in RFC 3339 format. Only entries created after the specified time
          #   will be included. UTC time zone.
          begin_: nil,
          # Financial Transaction category to be returned.
          category: nil,
          # Date string in RFC 3339 format. Only entries created before the specified time
          #   will be included. UTC time zone.
          end_: nil,
          # A cursor representing an item's token before which a page of results should end.
          #   Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Financial Transaction result to be returned.
          result: nil,
          # A cursor representing an item's token after which a page of results should
          #   begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          # Financial Transaction status to be returned.
          status: nil,
          request_options: {}
        )
        end

        sig { params(client: Lithic::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
