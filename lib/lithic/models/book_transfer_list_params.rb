# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BookTransfers#list
    class BookTransferListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_token
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!attribute begin_
      #   Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :begin_, Time

      # @!attribute business_account_token
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!attribute category
      #   Book Transfer category to be returned.
      #
      #   @return [Symbol, Lithic::Models::BookTransferListParams::Category, nil]
      optional :category, enum: -> { Lithic::BookTransferListParams::Category }

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

      # @!attribute financial_account_token
      #   Globally unique identifier for the financial account or card that will send the
      #   funds. Accepted type dependent on the program's use case.
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!attribute page_size
      #   Page size (for pagination).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute result
      #   Book transfer result to be returned.
      #
      #   @return [Symbol, Lithic::Models::BookTransferListParams::Result, nil]
      optional :result, enum: -> { Lithic::BookTransferListParams::Result }

      # @!attribute starting_after
      #   A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!attribute status
      #   Book transfer status to be returned.
      #
      #   @return [Symbol, Lithic::Models::BookTransferListParams::Status, nil]
      optional :status, enum: -> { Lithic::BookTransferListParams::Status }

      # @!method initialize(account_token: nil, begin_: nil, business_account_token: nil, category: nil, end_: nil, ending_before: nil, financial_account_token: nil, page_size: nil, result: nil, starting_after: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::BookTransferListParams} for more details.
      #
      #   @param account_token [String]
      #
      #   @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      #   @param business_account_token [String]
      #
      #   @param category [Symbol, Lithic::Models::BookTransferListParams::Category] Book Transfer category to be returned.
      #
      #   @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      #   @param financial_account_token [String] Globally unique identifier for the financial account or card that will send the
      #
      #   @param page_size [Integer] Page size (for pagination).
      #
      #   @param result [Symbol, Lithic::Models::BookTransferListParams::Result] Book transfer result to be returned.
      #
      #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      #   @param status [Symbol, Lithic::Models::BookTransferListParams::Status] Book transfer status to be returned.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Book Transfer category to be returned.
      module Category
        extend Lithic::Internal::Type::Enum

        BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
        FEE = :FEE
        REWARD = :REWARD
        ADJUSTMENT = :ADJUSTMENT
        DERECOGNITION = :DERECOGNITION
        DISPUTE = :DISPUTE
        INTERNAL = :INTERNAL

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Book transfer result to be returned.
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Book transfer status to be returned.
      module Status
        extend Lithic::Internal::Type::Enum

        DECLINED = :DECLINED
        SETTLED = :SETTLED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
