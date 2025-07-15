# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::NetworkPrograms#list
    class NetworkProgramListParams < Lithic::Internal::Type::BaseModel
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

      # @!attribute page_size
      #   Page size (for pagination).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(begin_: nil, end_: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::NetworkProgramListParams} for more details.
      #
      #   @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      #   @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      #   @param page_size [Integer] Page size (for pagination).
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
