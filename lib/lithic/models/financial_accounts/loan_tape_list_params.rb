# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::LoanTapes#list
      class LoanTapeListParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::Type::RequestParameters::Converter
        include Lithic::RequestParameters

        # @!attribute [r] begin_
        #   Date string in RFC 3339 format. Only entries created after the specified date
        #     will be included.
        #
        #   @return [Date, nil]
        optional :begin_, Date, api_name: :begin

        # @!parse
        #   # @return [Date]
        #   attr_writer :begin_

        # @!attribute [r] end_
        #   Date string in RFC 3339 format. Only entries created before the specified date
        #     will be included.
        #
        #   @return [Date, nil]
        optional :end_, Date, api_name: :end

        # @!parse
        #   # @return [Date]
        #   attr_writer :end_

        # @!attribute [r] ending_before
        #   A cursor representing an item's token before which a page of results should end.
        #     Used to retrieve the previous page of results before this item.
        #
        #   @return [String, nil]
        optional :ending_before, String

        # @!parse
        #   # @return [String]
        #   attr_writer :ending_before

        # @!attribute [r] page_size
        #   Page size (for pagination).
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :page_size

        # @!attribute [r] starting_after
        #   A cursor representing an item's token after which a page of results should
        #     begin. Used to retrieve the next page of results after this item.
        #
        #   @return [String, nil]
        optional :starting_after, String

        # @!parse
        #   # @return [String]
        #   attr_writer :starting_after

        # @!parse
        #   # @param begin_ [Date]
        #   # @param end_ [Date]
        #   # @param ending_before [String]
        #   # @param page_size [Integer]
        #   # @param starting_after [String]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
