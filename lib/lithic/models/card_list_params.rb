# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#list
    class CardListParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] account_token
      #   Returns cards associated with the specified account.
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_token

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

      # @!attribute [r] state
      #   Returns cards with the specified state.
      #
      #   @return [Symbol, Lithic::Models::CardListParams::State, nil]
      optional :state, enum: -> { Lithic::Models::CardListParams::State }

      # @!parse
      #   # @return [Symbol, Lithic::Models::CardListParams::State]
      #   attr_writer :state

      # @!method initialize(account_token: nil, begin_: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, state: nil, request_options: {})
      #   @param account_token [String]
      #   @param begin_ [Time]
      #   @param end_ [Time]
      #   @param ending_before [String]
      #   @param page_size [Integer]
      #   @param starting_after [String]
      #   @param state [Symbol, Lithic::Models::CardListParams::State]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Returns cards with the specified state.
      module State
        extend Lithic::Internal::Type::Enum

        CLOSED = :CLOSED
        OPEN = :OPEN
        PAUSED = :PAUSED
        PENDING_ACTIVATION = :PENDING_ACTIVATION
        PENDING_FULFILLMENT = :PENDING_FULFILLMENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
