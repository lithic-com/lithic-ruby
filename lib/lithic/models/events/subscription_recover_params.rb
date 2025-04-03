# frozen_string_literal: true

module Lithic
  module Models
    module Events
      # @see Lithic::Resources::Events::Subscriptions#recover
      class SubscriptionRecoverParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute [r] begin_
        #   Date string in RFC 3339 format. Only entries created after the specified time
        #     will be included. UTC time zone.
        #
        #   @return [Time, nil]
        optional :begin_, Time, api_name: :begin

        # @!parse
        #   # @return [Time]
        #   attr_writer :begin_

        # @!attribute [r] end_
        #   Date string in RFC 3339 format. Only entries created before the specified time
        #     will be included. UTC time zone.
        #
        #   @return [Time, nil]
        optional :end_, Time, api_name: :end

        # @!parse
        #   # @return [Time]
        #   attr_writer :end_

        # @!parse
        #   # @param begin_ [Time]
        #   # @param end_ [Time]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(begin_: nil, end_: nil, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
