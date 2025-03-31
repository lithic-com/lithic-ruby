# frozen_string_literal: true

module Lithic
  module Models
    class ManagementOperationCreateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute category
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationCreateParams::Category]
      required :category, enum: -> { Lithic::Models::ManagementOperationCreateParams::Category }

      # @!attribute direction
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationCreateParams::Direction]
      required :direction, enum: -> { Lithic::Models::ManagementOperationCreateParams::Direction }

      # @!attribute effective_date
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute event_type
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationCreateParams::EventType]
      required :event_type, enum: -> { Lithic::Models::ManagementOperationCreateParams::EventType }

      # @!attribute financial_account_token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute [r] token
      #
      #   @return [String, nil]
      optional :token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :token

      # @!attribute [r] memo
      #
      #   @return [String, nil]
      optional :memo, String

      # @!parse
      #   # @return [String]
      #   attr_writer :memo

      # @!attribute [r] subtype
      #
      #   @return [String, nil]
      optional :subtype, String

      # @!parse
      #   # @return [String]
      #   attr_writer :subtype

      # @!attribute [r] user_defined_id
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :user_defined_id

      # @!parse
      #   # @param amount [Integer]
      #   # @param category [Symbol, Lithic::Models::ManagementOperationCreateParams::Category]
      #   # @param direction [Symbol, Lithic::Models::ManagementOperationCreateParams::Direction]
      #   # @param effective_date [Date]
      #   # @param event_type [Symbol, Lithic::Models::ManagementOperationCreateParams::EventType]
      #   # @param financial_account_token [String]
      #   # @param token [String]
      #   # @param memo [String]
      #   # @param subtype [String]
      #   # @param user_defined_id [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount:,
      #     category:,
      #     direction:,
      #     effective_date:,
      #     event_type:,
      #     financial_account_token:,
      #     token: nil,
      #     memo: nil,
      #     subtype: nil,
      #     user_defined_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      module Category
        extend Lithic::Enum

        MANAGEMENT_FEE = :MANAGEMENT_FEE
        MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
        MANAGEMENT_REWARD = :MANAGEMENT_REWARD
        MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module Direction
        extend Lithic::Enum

        CREDIT = :CREDIT
        DEBIT = :DEBIT

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module EventType
        extend Lithic::Enum

        CASH_BACK = :CASH_BACK
        CURRENCY_CONVERSION = :CURRENCY_CONVERSION
        INTEREST = :INTEREST
        LATE_PAYMENT = :LATE_PAYMENT
        BILLING_ERROR = :BILLING_ERROR
        PROVISIONAL_CREDIT = :PROVISIONAL_CREDIT
        LOSS_WRITE_OFF = :LOSS_WRITE_OFF
        CASH_BACK_REVERSAL = :CASH_BACK_REVERSAL
        CURRENCY_CONVERSION_REVERSAL = :CURRENCY_CONVERSION_REVERSAL
        INTEREST_REVERSAL = :INTEREST_REVERSAL
        LATE_PAYMENT_REVERSAL = :LATE_PAYMENT_REVERSAL
        BILLING_ERROR_REVERSAL = :BILLING_ERROR_REVERSAL
        PROVISIONAL_CREDIT_REVERSAL = :PROVISIONAL_CREDIT_REVERSAL
        RETURNED_PAYMENT = :RETURNED_PAYMENT
        RETURNED_PAYMENT_REVERSAL = :RETURNED_PAYMENT_REVERSAL

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
