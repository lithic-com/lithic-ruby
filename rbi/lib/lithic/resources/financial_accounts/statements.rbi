# typed: strong

module Lithic
  module Resources
    class FinancialAccounts
      class Statements
        sig { returns(Lithic::Resources::FinancialAccounts::Statements::LineItems) }
        attr_reader :line_items

        # Get a specific statement for a given financial account.
        sig do
          params(
            statement_token: String,
            financial_account_token: String,
            request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash))
          )
            .returns(Lithic::Models::FinancialAccounts::Statement)
        end
        def retrieve(
          # Globally unique identifier for statements.
          statement_token,
          # Globally unique identifier for financial account.
          financial_account_token:,
          request_options: {}
        )
        end

        # List the statements for a given financial account.
        sig do
          params(
            financial_account_token: String,
            begin_: Date,
            end_: Date,
            ending_before: String,
            include_initial_statements: T::Boolean,
            page_size: Integer,
            starting_after: String,
            request_options: T.nilable(T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash))
          )
            .returns(Lithic::Internal::CursorPage[Lithic::Models::FinancialAccounts::Statement])
        end
        def list(
          # Globally unique identifier for financial account.
          financial_account_token,
          # Date string in RFC 3339 format. Only entries created after the specified date
          #   will be included.
          begin_: nil,
          # Date string in RFC 3339 format. Only entries created before the specified date
          #   will be included.
          end_: nil,
          # A cursor representing an item's token before which a page of results should end.
          #   Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Whether to include the initial statement. It is not included by default.
          include_initial_statements: nil,
          # Page size (for pagination).
          page_size: nil,
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
