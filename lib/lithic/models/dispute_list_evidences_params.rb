# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Disputes#list_evidences
    class DisputeListEvidencesParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute begin_
      #   Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :begin_, Time

      # @!attribute end_
      #   Date string in RFC 3339 format. Only entries created before the specified time
      #   will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :end_, Time

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

      # @!method initialize(begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::DisputeListEvidencesParams} for more details.
      #
      #   @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #   ...
      #
      #   @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #   ...
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
