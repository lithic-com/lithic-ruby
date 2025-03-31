# typed: strong

module Lithic
  module Models
    module FinancialAccounts
      class LoanTapeListParams < Lithic::BaseModel
        extend Lithic::Type::RequestParameters::Converter
        include Lithic::RequestParameters

        # Date string in RFC 3339 format. Only entries created after the specified date
        #   will be included.
        sig { returns(T.nilable(Date)) }
        attr_reader :begin_

        sig { params(begin_: Date).void }
        attr_writer :begin_

        # Date string in RFC 3339 format. Only entries created before the specified date
        #   will be included.
        sig { returns(T.nilable(Date)) }
        attr_reader :end_

        sig { params(end_: Date).void }
        attr_writer :end_

        # A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        sig { returns(T.nilable(String)) }
        attr_reader :ending_before

        sig { params(ending_before: String).void }
        attr_writer :ending_before

        # Page size (for pagination).
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        sig { returns(T.nilable(String)) }
        attr_reader :starting_after

        sig { params(starting_after: String).void }
        attr_writer :starting_after

        sig do
          params(
            begin_: Date,
            end_: Date,
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                begin_: Date,
                end_: Date,
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
