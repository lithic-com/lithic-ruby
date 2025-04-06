# frozen_string_literal: true

module Lithic
  module Models
    module FinancialAccounts
      # @see Lithic::Resources::FinancialAccounts::Statements#list
      class StatementListParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute [r] begin_
        #   Date string in RFC 3339 format. Only entries created after the specified date
        #   will be included.
        #
        #   @return [Date, nil]
        optional :begin_, Date

        # @!parse
        #   # @return [Date]
        #   attr_writer :begin_

        # @!attribute [r] end_
        #   Date string in RFC 3339 format. Only entries created before the specified date
        #   will be included.
        #
        #   @return [Date, nil]
        optional :end_, Date

        # @!parse
        #   # @return [Date]
        #   attr_writer :end_

        # @!attribute [r] ending_before
        #   A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        #
        #   @return [String, nil]
        optional :ending_before, String

        # @!parse
        #   # @return [String]
        #   attr_writer :ending_before

        # @!attribute [r] include_initial_statements
        #   Whether to include the initial statement. It is not included by default.
        #
        #   @return [Boolean, nil]
        optional :include_initial_statements, Lithic::Internal::Type::Boolean

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_initial_statements

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
        #   begin. Used to retrieve the next page of results after this item.
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
        #   # @param include_initial_statements [Boolean]
        #   # @param page_size [Integer]
        #   # @param starting_after [String]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     begin_: nil,
        #     end_: nil,
        #     ending_before: nil,
        #     include_initial_statements: nil,
        #     page_size: nil,
        #     starting_after: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
      end
    end
  end
end
