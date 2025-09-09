# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#list
      class V2ListParams < Lithic::Internal::Type::BaseModel
        extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute account_token
        #   Only return Auth Rules that are bound to the provided account token.
        #
        #   @return [String, nil]
        optional :account_token, String

        # @!attribute business_account_token
        #   Only return Auth Rules that are bound to the provided business account token.
        #
        #   @return [String, nil]
        optional :business_account_token, String

        # @!attribute card_token
        #   Only return Auth Rules that are bound to the provided card token.
        #
        #   @return [String, nil]
        optional :card_token, String

        # @!attribute ending_before
        #   A cursor representing an item's token before which a page of results should end.
        #   Used to retrieve the previous page of results before this item.
        #
        #   @return [String, nil]
        optional :ending_before, String

        # @!attribute event_stream
        #   Only return Auth rules that are executed during the provided event stream.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2ListParams::EventStream, nil]
        optional :event_stream, enum: -> { Lithic::AuthRules::V2ListParams::EventStream }

        # @!attribute page_size
        #   Page size (for pagination).
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute scope
        #   Only return Auth Rules that are bound to the provided scope.
        #
        #   @return [Symbol, Lithic::Models::AuthRules::V2ListParams::Scope, nil]
        optional :scope, enum: -> { Lithic::AuthRules::V2ListParams::Scope }

        # @!attribute starting_after
        #   A cursor representing an item's token after which a page of results should
        #   begin. Used to retrieve the next page of results after this item.
        #
        #   @return [String, nil]
        optional :starting_after, String

        # @!method initialize(account_token: nil, business_account_token: nil, card_token: nil, ending_before: nil, event_stream: nil, page_size: nil, scope: nil, starting_after: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::AuthRules::V2ListParams} for more details.
        #
        #   @param account_token [String] Only return Auth Rules that are bound to the provided account token.
        #
        #   @param business_account_token [String] Only return Auth Rules that are bound to the provided business account token.
        #
        #   @param card_token [String] Only return Auth Rules that are bound to the provided card token.
        #
        #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
        #
        #   @param event_stream [Symbol, Lithic::Models::AuthRules::V2ListParams::EventStream] Only return Auth rules that are executed during the provided event stream.
        #
        #   @param page_size [Integer] Page size (for pagination).
        #
        #   @param scope [Symbol, Lithic::Models::AuthRules::V2ListParams::Scope] Only return Auth Rules that are bound to the provided scope.
        #
        #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
        #
        #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

        # Only return Auth rules that are executed during the provided event stream.
        module EventStream
          extend Lithic::Internal::Type::Enum

          AUTHORIZATION = :AUTHORIZATION
          THREE_DS_AUTHENTICATION = :THREE_DS_AUTHENTICATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Only return Auth Rules that are bound to the provided scope.
        module Scope
          extend Lithic::Internal::Type::Enum

          PROGRAM = :PROGRAM
          ACCOUNT = :ACCOUNT
          BUSINESS_ACCOUNT = :BUSINESS_ACCOUNT
          CARD = :CARD
          ANY = :ANY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
