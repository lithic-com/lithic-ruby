# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#list
      class V2ListParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute [r] account_token
        #   Only return Authorization Rules that are bound to the provided account token.
        #
        #   @return [String, nil]
        optional :account_token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :account_token

        # @!attribute [r] card_token
        #   Only return Authorization Rules that are bound to the provided card token.
        #
        #   @return [String, nil]
        optional :card_token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :card_token

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

        # @!parse
        #   # @param account_token [String]
        #   # @param card_token [String]
        #   # @param ending_before [String]
        #   # @param page_size [Integer]
        #   # @param starting_after [String]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     account_token: nil,
        #     card_token: nil,
        #     ending_before: nil,
        #     page_size: nil,
        #     starting_after: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
