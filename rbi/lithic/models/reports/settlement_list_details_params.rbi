# typed: strong

module Lithic
  module Models
    module Reports
      class SettlementListDetailsParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Lithic::Reports::SettlementListDetailsParams,
              Lithic::Internal::AnyHash
            )
          end

        # A cursor representing an item's token before which a page of results should end.
        # Used to retrieve the previous page of results before this item.
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
        # begin. Used to retrieve the next page of results after this item.
        sig { returns(T.nilable(String)) }
        attr_reader :starting_after

        sig { params(starting_after: String).void }
        attr_writer :starting_after

        sig do
          params(
            ending_before: String,
            page_size: Integer,
            starting_after: String,
            request_options: Lithic::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A cursor representing an item's token before which a page of results should end.
          # Used to retrieve the previous page of results before this item.
          ending_before: nil,
          # Page size (for pagination).
          page_size: nil,
          # A cursor representing an item's token after which a page of results should
          # begin. Used to retrieve the next page of results after this item.
          starting_after: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
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
