# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#list
    class TokenizationListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_token
      #   Filters for tokenizations associated with a specific account.
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!attribute begin_
      #   Filter for tokenizations created after this date.
      #
      #   @return [Date, nil]
      optional :begin_, Date

      # @!attribute card_token
      #   Filters for tokenizations associated with a specific card.
      #
      #   @return [String, nil]
      optional :card_token, String

      # @!attribute end_
      #   Filter for tokenizations created before this date.
      #
      #   @return [Date, nil]
      optional :end_, Date

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

      # @!attribute tokenization_channel
      #   Filter for tokenizations by tokenization channel. If this is not specified, only
      #   DIGITAL_WALLET tokenizations will be returned.
      #
      #   @return [Symbol, Lithic::Models::TokenizationListParams::TokenizationChannel, nil]
      optional :tokenization_channel, enum: -> { Lithic::Models::TokenizationListParams::TokenizationChannel }

      # @!method initialize(account_token: nil, begin_: nil, card_token: nil, end_: nil, ending_before: nil, page_size: nil, starting_after: nil, tokenization_channel: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TokenizationListParams} for more details.
      #
      #   @param account_token [String] Filters for tokenizations associated with a specific account.
      #
      #   @param begin_ [Date] Filter for tokenizations created after this date.
      #
      #   @param card_token [String] Filters for tokenizations associated with a specific card.
      #
      #   @param end_ [Date] Filter for tokenizations created before this date.
      #
      #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #   ...
      #
      #   @param page_size [Integer] Page size (for pagination).
      #
      #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #   ...
      #
      #   @param tokenization_channel [Symbol, Lithic::Models::TokenizationListParams::TokenizationChannel] Filter for tokenizations by tokenization channel. If this is not specified, only
      #   ...
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Filter for tokenizations by tokenization channel. If this is not specified, only
      # DIGITAL_WALLET tokenizations will be returned.
      module TokenizationChannel
        extend Lithic::Internal::Type::Enum

        DIGITAL_WALLET = :DIGITAL_WALLET
        MERCHANT = :MERCHANT
        ALL = :ALL

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
