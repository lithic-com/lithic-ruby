# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Cards#list
    class CardListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_token
      #   Returns cards associated with the specified account.
      #
      #   @return [String, nil]
      optional :account_token, String

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

      # @!attribute memo
      #   Returns cards containing the specified partial or full memo text.
      #
      #   @return [String, nil]
      optional :memo, String

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

      # @!attribute state
      #   Returns cards with the specified state.
      #
      #   @return [Symbol, Lithic::Models::CardListParams::State, nil]
      optional :state, enum: -> { Lithic::CardListParams::State }

      # @!method initialize(account_token: nil, begin_: nil, end_: nil, ending_before: nil, memo: nil, page_size: nil, starting_after: nil, state: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::CardListParams} for more details.
      #
      #   @param account_token [String] Returns cards associated with the specified account.
      #
      #   @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      #   @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      #   @param memo [String] Returns cards containing the specified partial or full memo text.
      #
      #   @param page_size [Integer] Page size (for pagination).
      #
      #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      #   @param state [Symbol, Lithic::Models::CardListParams::State] Returns cards with the specified state.
      #
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
