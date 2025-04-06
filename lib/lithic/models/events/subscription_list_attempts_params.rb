# frozen_string_literal: true

module Lithic
  module Models
    module Events
      # @see Lithic::Resources::Events::Subscriptions#list_attempts
      class SubscriptionListAttemptsParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute [r] begin_
        #   Date string in RFC 3339 format. Only entries created after the specified time
        #   will be included. UTC time zone.
        #
        #   @return [Time, nil]
        optional :begin_, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :begin_

        # @!attribute [r] end_
        #   Date string in RFC 3339 format. Only entries created before the specified time
        #   will be included. UTC time zone.
        #
        #   @return [Time, nil]
        optional :end_, Time

        # @!parse
        #   # @return [Time]
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

        # @!attribute [r] status
        #
        #   @return [Symbol, Lithic::Models::Events::SubscriptionListAttemptsParams::Status, nil]
        optional :status, enum: -> { Lithic::Models::Events::SubscriptionListAttemptsParams::Status }

        # @!parse
        #   # @return [Symbol, Lithic::Models::Events::SubscriptionListAttemptsParams::Status]
        #   attr_writer :status

        # @!parse
        #   # @param begin_ [Time]
        #   # @param end_ [Time]
        #   # @param ending_before [String]
        #   # @param page_size [Integer]
        #   # @param starting_after [String]
        #   # @param status [Symbol, Lithic::Models::Events::SubscriptionListAttemptsParams::Status]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     begin_: nil,
        #     end_: nil,
        #     ending_before: nil,
        #     page_size: nil,
        #     starting_after: nil,
        #     status: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

        module Status
          extend Lithic::Internal::Type::Enum

          FAILED = :FAILED
          PENDING = :PENDING
          SENDING = :SENDING
          SUCCESS = :SUCCESS

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
