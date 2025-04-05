# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transactions#list
    class TransactionListParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] account_token
      #   Filters for transactions associated with a specific account.
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
      optional :begin_, Time, api_name: :begin

      # @!parse
      #   # @return [Time]
      #   attr_writer :begin_

      # @!attribute [r] card_token
      #   Filters for transactions associated with a specific card.
      #
      #   @return [String, nil]
      optional :card_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :card_token

      # @!attribute [r] end_
      #   Date string in RFC 3339 format. Only entries created before the specified time
      #   will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :end_, Time, api_name: :end

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

      # @!attribute [r] result
      #   Filters for transactions using transaction result field. Can filter by
      #   `APPROVED`, and `DECLINED`.
      #
      #   @return [Symbol, Lithic::Models::TransactionListParams::Result, nil]
      optional :result, enum: -> { Lithic::Models::TransactionListParams::Result }

      # @!parse
      #   # @return [Symbol, Lithic::Models::TransactionListParams::Result]
      #   attr_writer :result

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
      #   Filters for transactions using transaction status field.
      #
      #   @return [Symbol, Lithic::Models::TransactionListParams::Status, nil]
      optional :status, enum: -> { Lithic::Models::TransactionListParams::Status }

      # @!parse
      #   # @return [Symbol, Lithic::Models::TransactionListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param account_token [String]
      #   # @param begin_ [Time]
      #   # @param card_token [String]
      #   # @param end_ [Time]
      #   # @param ending_before [String]
      #   # @param page_size [Integer]
      #   # @param result [Symbol, Lithic::Models::TransactionListParams::Result]
      #   # @param starting_after [String]
      #   # @param status [Symbol, Lithic::Models::TransactionListParams::Status]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_token: nil,
      #     begin_: nil,
      #     card_token: nil,
      #     end_: nil,
      #     ending_before: nil,
      #     page_size: nil,
      #     result: nil,
      #     starting_after: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

      # Filters for transactions using transaction result field. Can filter by
      # `APPROVED`, and `DECLINED`.
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # Filters for transactions using transaction status field.
      module Status
        extend Lithic::Internal::Type::Enum

        PENDING = :PENDING
        VOIDED = :VOIDED
        SETTLED = :SETTLED
        DECLINED = :DECLINED
        EXPIRED = :EXPIRED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
