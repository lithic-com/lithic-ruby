# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      module Statements
        # @see Lithic::Resources::FinancialAccounts::Statements::LineItems#list
        class LineItemListParams < Lithic::Internal::Type::BaseModel
          extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!attribute financial_account_token
          #   Globally unique identifier for financial account.
          #
          #   @return [String]
          required :financial_account_token, String

          # @!attribute ending_before
          #   A cursor representing an item's token before which a page of results should end.
          #   Used to retrieve the previous page of results before this item.
          #
          #   @return [String, nil]
          optional :ending_before, String

          # @!attribute page_size
          #   Page size (for pagination).
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!attribute starting_after
          #   A cursor representing an item's token after which a page of results should
          #   begin. Used to retrieve the next page of results after this item.
          #
          #   @return [String, nil]
          optional :starting_after, String

          # @!method initialize(financial_account_token:, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::FinancialAccounts::Statements::LineItemListParams} for more
          #   details.
          #
          #   @param financial_account_token [String] Globally unique identifier for financial account.
          #
          #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
          #   ...
          #
          #   @param page_size [Integer] Page size (for pagination).
          #
          #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
          #   ...
          #
          #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
