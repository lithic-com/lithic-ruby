# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::DisputesV2#list
    class DisputesV2ListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_token
      #   Filter by account token.
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!attribute begin_
      #   RFC 3339 timestamp for filtering by created date, inclusive.
      #
      #   @return [Time, nil]
      optional :begin_, Time

      # @!attribute card_token
      #   Filter by card token.
      #
      #   @return [String, nil]
      optional :card_token, String

      # @!attribute disputed_transaction_token
      #   Filter by the token of the transaction being disputed. Corresponds with
      #   transaction_series.related_transaction_token in the Dispute.
      #
      #   @return [String, nil]
      optional :disputed_transaction_token, String

      # @!attribute end_
      #   RFC 3339 timestamp for filtering by created date, inclusive.
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
      #   Number of items to return.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute starting_after
      #   A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!method initialize(account_token: nil, begin_: nil, card_token: nil, disputed_transaction_token: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::DisputesV2ListParams} for more details.
      #
      #   @param account_token [String] Filter by account token.
      #
      #   @param begin_ [Time] RFC 3339 timestamp for filtering by created date, inclusive.
      #
      #   @param card_token [String] Filter by card token.
      #
      #   @param disputed_transaction_token [String] Filter by the token of the transaction being disputed. Corresponds with transact
      #
      #   @param end_ [Time] RFC 3339 timestamp for filtering by created date, inclusive.
      #
      #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      #   @param page_size [Integer] Number of items to return.
      #
      #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
