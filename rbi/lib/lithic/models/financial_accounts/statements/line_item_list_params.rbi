# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      module Statements
        class LineItemListParams < Lithic::BaseModel
          extend Lithic::RequestParameters::Converter
          include Lithic::RequestParameters

          # Globally unique identifier for financial account.
          sig { returns(String) }
          def financial_account_token
          end

          sig { params(_: String).returns(String) }
          def financial_account_token=(_)
          end

          # A cursor representing an item's token before which a page of results should end.
          #   Used to retrieve the previous page of results before this item.
          sig { returns(T.nilable(String)) }
          def ending_before
          end

          sig { params(_: String).returns(String) }
          def ending_before=(_)
          end

          # Page size (for pagination).
          sig { returns(T.nilable(Integer)) }
          def page_size
          end

          sig { params(_: Integer).returns(Integer) }
          def page_size=(_)
          end

          # A cursor representing an item's token after which a page of results should
          #   begin. Used to retrieve the next page of results after this item.
          sig { returns(T.nilable(String)) }
          def starting_after
          end

          sig { params(_: String).returns(String) }
          def starting_after=(_)
          end

          sig do
            params(
              financial_account_token: String,
              ending_before: String,
              page_size: Integer,
              starting_after: String,
              request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(financial_account_token:, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  financial_account_token: String,
                  ending_before: String,
                  page_size: Integer,
                  starting_after: String,
                  request_options: Lithic::RequestOptions
                }
              )
          end
          def to_hash
          end
        end
      end
    end
  end
end
