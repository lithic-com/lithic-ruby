# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#list
    class TransactionListParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute account_token
      #   Filters for transactions associated with a specific account.
      #
      #   @return [String, nil]
      optional :account_token, String

      # @!attribute begin_
      #   Date string in RFC 3339 format. Only entries created after the specified time
      #   will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :begin_, Time

      # @!attribute card_token
      #   Filters for transactions associated with a specific card.
      #
      #   @return [String, nil]
      optional :card_token, String

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

      # @!attribute page_size
      #   Page size (for pagination).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute result
      #   Filters for transactions using transaction result field. Can filter by
      #   `APPROVED`, and `DECLINED`.
      #
      #   @return [Symbol, Lithic::Models::TransactionListParams::Result, nil]
      optional :result, enum: -> { Lithic::TransactionListParams::Result }

      # @!attribute starting_after
      #   A cursor representing an item's token after which a page of results should
      #   begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!attribute status
      #   Filters for transactions using transaction status field.
      #
      #   @return [Symbol, Lithic::Models::TransactionListParams::Status, nil]
      optional :status, enum: -> { Lithic::TransactionListParams::Status }

      # @!method initialize(account_token: nil, begin_: nil, card_token: nil, end_: nil, ending_before: nil, page_size: nil, result: nil, starting_after: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TransactionListParams} for more details.
      #
      #   @param account_token [String] Filters for transactions associated with a specific account.
      #
      #   @param begin_ [Time] Date string in RFC 3339 format. Only entries created after the specified time wi
      #
      #   @param card_token [String] Filters for transactions associated with a specific card.
      #
      #   @param end_ [Time] Date string in RFC 3339 format. Only entries created before the specified time w
      #
      #   @param ending_before [String] A cursor representing an item's token before which a page of results should end.
      #
      #   @param page_size [Integer] Page size (for pagination).
      #
      #   @param result [Symbol, Lithic::Models::TransactionListParams::Result] Filters for transactions using transaction result field. Can filter by `APPROVED
      #
      #   @param starting_after [String] A cursor representing an item's token after which a page of results should begin
      #
      #   @param status [Symbol, Lithic::Models::TransactionListParams::Status] Filters for transactions using transaction status field.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Filters for transactions using transaction result field. Can filter by
      # `APPROVED`, and `DECLINED`.
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filters for transactions using transaction status field.
      module Status
        extend Lithic::Internal::Type::Enum

        PENDING = :PENDING
        VOIDED = :VOIDED
        SETTLED = :SETTLED
        DECLINED = :DECLINED
        EXPIRED = :EXPIRED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
