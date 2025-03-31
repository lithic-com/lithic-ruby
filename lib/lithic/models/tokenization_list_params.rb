# frozen_string_literal: true

module Lithic
  module Models
    class TokenizationListParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] account_token
      #   Filters for tokenizations associated with a specific account.
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_token

      # @!attribute [r] begin_
      #   Filter for tokenizations created after this date.
      #
      #   @return [Date, nil]
      optional :begin_, Date, api_name: :begin

      # @!parse
      #   # @return [Date]
      #   attr_writer :begin_

      # @!attribute [r] card_token
      #   Filters for tokenizations associated with a specific card.
      #
      #   @return [String, nil]
      optional :card_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :card_token

      # @!attribute [r] end_
      #   Filter for tokenizations created before this date.
      #
      #   @return [Date, nil]
      optional :end_, Date, api_name: :end

      # @!parse
      #   # @return [Date]
      #   attr_writer :end_

      # @!attribute [r] ending_before
      #   A cursor representing an item's token before which a page of results should end.
      #     Used to retrieve the previous page of results before this item.
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
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :starting_after

      # @!attribute [r] tokenization_channel
      #   Filter for tokenizations by tokenization channel. If this is not specified, only
      #     DIGITAL_WALLET tokenizations will be returned.
      #
      #   @return [Symbol, Lithic::Models::TokenizationListParams::TokenizationChannel, nil]
      optional :tokenization_channel, enum: -> { Lithic::Models::TokenizationListParams::TokenizationChannel }

      # @!parse
      #   # @return [Symbol, Lithic::Models::TokenizationListParams::TokenizationChannel]
      #   attr_writer :tokenization_channel

      # @!parse
      #   # @param account_token [String]
      #   # @param begin_ [Date]
      #   # @param card_token [String]
      #   # @param end_ [Date]
      #   # @param ending_before [String]
      #   # @param page_size [Integer]
      #   # @param starting_after [String]
      #   # @param tokenization_channel [Symbol, Lithic::Models::TokenizationListParams::TokenizationChannel]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_token: nil,
      #     begin_: nil,
      #     card_token: nil,
      #     end_: nil,
      #     ending_before: nil,
      #     page_size: nil,
      #     starting_after: nil,
      #     tokenization_channel: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Filter for tokenizations by tokenization channel. If this is not specified, only
      #   DIGITAL_WALLET tokenizations will be returned.
      module TokenizationChannel
        extend Lithic::Enum

        DIGITAL_WALLET = :DIGITAL_WALLET
        MERCHANT = :MERCHANT
        ALL = :ALL

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
