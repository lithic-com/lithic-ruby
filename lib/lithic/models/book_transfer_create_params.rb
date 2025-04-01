# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BookTransfers#create
    class BookTransferCreateParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute amount
      #   Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
      #     This should always be a positive value.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute category
      #   Category of the book transfer
      #
      #   @return [Symbol, Lithic::Models::BookTransferCreateParams::Category]
      required :category, enum: -> { Lithic::Models::BookTransferCreateParams::Category }

      # @!attribute from_financial_account_token
      #   Globally unique identifier for the financial account or card that will send the
      #     funds. Accepted type dependent on the program's use case.
      #
      #   @return [String]
      required :from_financial_account_token, String

      # @!attribute subtype
      #   The program specific subtype code for the specified category/type.
      #
      #   @return [String]
      required :subtype, String

      # @!attribute to_financial_account_token
      #   Globally unique identifier for the financial account or card that will receive
      #     the funds. Accepted type dependent on the program's use case.
      #
      #   @return [String]
      required :to_financial_account_token, String

      # @!attribute type
      #   Type of book_transfer
      #
      #   @return [Symbol, Lithic::Models::BookTransferCreateParams::Type]
      required :type, enum: -> { Lithic::Models::BookTransferCreateParams::Type }

      # @!attribute [r] token
      #   Customer-provided token that will serve as an idempotency token. This token will
      #     become the transaction token.
      #
      #   @return [String, nil]
      optional :token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :token

      # @!attribute [r] memo
      #   Optional descriptor for the transfer.
      #
      #   @return [String, nil]
      optional :memo, String

      # @!parse
      #   # @return [String]
      #   attr_writer :memo

      # @!parse
      #   # @param amount [Integer]
      #   # @param category [Symbol, Lithic::Models::BookTransferCreateParams::Category]
      #   # @param from_financial_account_token [String]
      #   # @param subtype [String]
      #   # @param to_financial_account_token [String]
      #   # @param type [Symbol, Lithic::Models::BookTransferCreateParams::Type]
      #   # @param token [String]
      #   # @param memo [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount:,
      #     category:,
      #     from_financial_account_token:,
      #     subtype:,
      #     to_financial_account_token:,
      #     type:,
      #     token: nil,
      #     memo: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Lithic::BaseModel) -> void

      # Category of the book transfer
      module Category
        extend Lithic::Enum

        ADJUSTMENT = :ADJUSTMENT
        BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
        DERECOGNITION = :DERECOGNITION
        DISPUTE = :DISPUTE
        FEE = :FEE
        REWARD = :REWARD
        TRANSFER = :TRANSFER

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # Type of book_transfer
      module Type
        extend Lithic::Enum

        ATM_WITHDRAWAL = :ATM_WITHDRAWAL
        ATM_DECLINE = :ATM_DECLINE
        INTERNATIONAL_ATM_WITHDRAWAL = :INTERNATIONAL_ATM_WITHDRAWAL
        INACTIVITY = :INACTIVITY
        STATEMENT = :STATEMENT
        MONTHLY = :MONTHLY
        QUARTERLY = :QUARTERLY
        ANNUAL = :ANNUAL
        CUSTOMER_SERVICE = :CUSTOMER_SERVICE
        ACCOUNT_MAINTENANCE = :ACCOUNT_MAINTENANCE
        ACCOUNT_ACTIVATION = :ACCOUNT_ACTIVATION
        ACCOUNT_CLOSURE = :ACCOUNT_CLOSURE
        CARD_REPLACEMENT = :CARD_REPLACEMENT
        CARD_DELIVERY = :CARD_DELIVERY
        CARD_CREATE = :CARD_CREATE
        CURRENCY_CONVERSION = :CURRENCY_CONVERSION
        INTEREST = :INTEREST
        LATE_PAYMENT = :LATE_PAYMENT
        BILL_PAYMENT = :BILL_PAYMENT
        CASH_BACK = :CASH_BACK
        ACCOUNT_TO_ACCOUNT = :ACCOUNT_TO_ACCOUNT
        CARD_TO_CARD = :CARD_TO_CARD
        DISBURSE = :DISBURSE
        BILLING_ERROR = :BILLING_ERROR
        LOSS_WRITE_OFF = :LOSS_WRITE_OFF
        EXPIRED_CARD = :EXPIRED_CARD
        EARLY_DERECOGNITION = :EARLY_DERECOGNITION
        ESCHEATMENT = :ESCHEATMENT
        INACTIVITY_FEE_DOWN = :INACTIVITY_FEE_DOWN
        PROVISIONAL_CREDIT = :PROVISIONAL_CREDIT
        DISPUTE_WON = :DISPUTE_WON
        TRANSFER = :TRANSFER

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
