# frozen_string_literal: true

module Lithic
  module Models
    module Events
      # @see Lithic::Resources::Events::Subscriptions#recover
      class SubscriptionRecoverParams < Lithic::Internal::Type::BaseModel
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

        # @!method initialize(begin_: nil, end_: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::Events::SubscriptionRecoverParams} for more details.
        #
        #   @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
        #
        #   @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
