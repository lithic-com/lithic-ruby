# frozen_string_literal: true

module Lithic
  module Models
    class ExternalPaymentListParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] begin_
      #   Date string in RFC 3339 format. Only entries created after the specified time
      #     will be included. UTC time zone.
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
      #   External Payment category to be returned.
      #
      #   @return [Symbol, Lithic::Models::ExternalPaymentListParams::Category, nil]
      optional :category, enum: -> { Lithic::Models::ExternalPaymentListParams::Category }

      # @!parse
      #   # @return [Symbol, Lithic::Models::ExternalPaymentListParams::Category]
      #   attr_writer :category

      # @!attribute [r] end_
      #   Date string in RFC 3339 format. Only entries created before the specified time
      #     will be included. UTC time zone.
      #
      #   @return [Time, nil]
      optional :end_, Time, api_name: :end

      # @!parse
      #   # @return [Time]
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

      # @!attribute [r] financial_account_token
      #   Globally unique identifier for the financial account or card that will send the
      #     funds. Accepted type dependent on the program's use case.
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
      #   External Payment result to be returned.
      #
      #   @return [Symbol, Lithic::Models::ExternalPaymentListParams::Result, nil]
      optional :result, enum: -> { Lithic::Models::ExternalPaymentListParams::Result }

      # @!parse
      #   # @return [Symbol, Lithic::Models::ExternalPaymentListParams::Result]
      #   attr_writer :result

      # @!attribute [r] starting_after
      #   A cursor representing an item's token after which a page of results should
      #     begin. Used to retrieve the next page of results after this item.
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :starting_after

      # @!attribute [r] status
      #   Book transfer status to be returned.
      #
      #   @return [Symbol, Lithic::Models::ExternalPaymentListParams::Status, nil]
      optional :status, enum: -> { Lithic::Models::ExternalPaymentListParams::Status }

      # @!parse
      #   # @return [Symbol, Lithic::Models::ExternalPaymentListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param begin_ [Time]
      #   # @param business_account_token [String]
      #   # @param category [Symbol, Lithic::Models::ExternalPaymentListParams::Category]
      #   # @param end_ [Time]
      #   # @param ending_before [String]
      #   # @param financial_account_token [String]
      #   # @param page_size [Integer]
      #   # @param result [Symbol, Lithic::Models::ExternalPaymentListParams::Result]
      #   # @param starting_after [String]
      #   # @param status [Symbol, Lithic::Models::ExternalPaymentListParams::Status]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
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

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # External Payment category to be returned.
      module Category
        extend Lithic::Enum

        EXTERNAL_WIRE = :EXTERNAL_WIRE
        EXTERNAL_ACH = :EXTERNAL_ACH
        EXTERNAL_CHECK = :EXTERNAL_CHECK
        EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      # External Payment result to be returned.
      module Result
        extend Lithic::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

      # Book transfer status to be returned.
      module Status
        extend Lithic::Enum

        PENDING = :PENDING
        SETTLED = :SETTLED
        DECLINED = :DECLINED
        REVERSED = :REVERSED
        CANCELED = :CANCELED

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
