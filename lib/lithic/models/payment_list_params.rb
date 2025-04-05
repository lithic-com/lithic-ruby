# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Payments#list
    class PaymentListParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] account_token
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

      # @!attribute [r] business_account_token
      #
      #   @return [String, nil]
      optional :business_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :business_account_token

      # @!attribute [r] category
      #
      #   @return [Symbol, Lithic::Models::PaymentListParams::Category, nil]
      optional :category, enum: -> { Lithic::Models::PaymentListParams::Category }

      # @!parse
      #   # @return [Symbol, Lithic::Models::PaymentListParams::Category]
      #   attr_writer :category

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

      # @!attribute [r] financial_account_token
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :financial_account_token

      # @!attribute [r] page_size
      #   Page size (for pagination).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!attribute [r] result
      #
      #   @return [Symbol, Lithic::Models::PaymentListParams::Result, nil]
      optional :result, enum: -> { Lithic::Models::PaymentListParams::Result }

      # @!parse
      #   # @return [Symbol, Lithic::Models::PaymentListParams::Result]
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
      #
      #   @return [Symbol, Lithic::Models::PaymentListParams::Status, nil]
      optional :status, enum: -> { Lithic::Models::PaymentListParams::Status }

      # @!parse
      #   # @return [Symbol, Lithic::Models::PaymentListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param account_token [String]
      #   # @param begin_ [Time]
      #   # @param business_account_token [String]
      #   # @param category [Symbol, Lithic::Models::PaymentListParams::Category]
      #   # @param end_ [Time]
      #   # @param ending_before [String]
      #   # @param financial_account_token [String]
      #   # @param page_size [Integer]
      #   # @param result [Symbol, Lithic::Models::PaymentListParams::Result]
      #   # @param starting_after [String]
      #   # @param status [Symbol, Lithic::Models::PaymentListParams::Status]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_token: nil,
      #     begin_: nil,
      #     business_account_token: nil,
      #     category: nil,
      #     end_: nil,
      #     ending_before: nil,
      #     financial_account_token: nil,
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

      module Category
        extend Lithic::Internal::Type::Enum

        ACH = :ACH

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module Status
        extend Lithic::Internal::Type::Enum

        DECLINED = :DECLINED
        PENDING = :PENDING
        RETURNED = :RETURNED
        SETTLED = :SETTLED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
