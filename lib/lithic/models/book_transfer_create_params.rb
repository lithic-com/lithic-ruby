# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BookTransfers#create
    class BookTransferCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute amount
      #   Amount to be transferred in the currency's smallest unit (e.g., cents for USD).
      #   This should always be a positive value.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute category
      #   Category of the book transfer
      #
      #   @return [Symbol, Lithic::Models::BookTransferCreateParams::Category]
      required :category, enum: -> { Lithic::BookTransferCreateParams::Category }

      # @!attribute from_financial_account_token
      #   Globally unique identifier for the financial account or card that will send the
      #   funds. Accepted type dependent on the program's use case.
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
      #   the funds. Accepted type dependent on the program's use case.
      #
      #   @return [String]
      required :to_financial_account_token, String

      # @!attribute type
      #   Type of the book transfer
      #
      #   @return [Symbol, Lithic::Models::BookTransferCreateParams::Type]
      required :type, enum: -> { Lithic::BookTransferCreateParams::Type }

      # @!attribute token
      #   Customer-provided token that will serve as an idempotency token. This token will
      #   become the transaction token.
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute external_id
      #   External ID defined by the customer
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute memo
      #   Optional descriptor for the transfer.
      #
      #   @return [String, nil]
      optional :memo, String

      # @!attribute on_closed_account
      #   What to do if the financial account is closed when posting an operation
      #
      #   @return [Symbol, Lithic::Models::BookTransferCreateParams::OnClosedAccount, nil]
      optional :on_closed_account, enum: -> { Lithic::BookTransferCreateParams::OnClosedAccount }

      # @!method initialize(amount:, category:, from_financial_account_token:, subtype:, to_financial_account_token:, type:, token: nil, external_id: nil, memo: nil, on_closed_account: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::BookTransferCreateParams} for more details.
      #
      #   @param amount [Integer] Amount to be transferred in the currency's smallest unit (e.g., cents for USD).
      #
      #   @param category [Symbol, Lithic::Models::BookTransferCreateParams::Category] Category of the book transfer
      #
      #   @param from_financial_account_token [String] Globally unique identifier for the financial account or card that will send the
      #
      #   @param subtype [String] The program specific subtype code for the specified category/type.
      #
      #   @param to_financial_account_token [String] Globally unique identifier for the financial account or card that will receive t
      #
      #   @param type [Symbol, Lithic::Models::BookTransferCreateParams::Type] Type of the book transfer
      #
      #   @param token [String] Customer-provided token that will serve as an idempotency token. This token will
      #
      #   @param external_id [String] External ID defined by the customer
      #
      #   @param memo [String] Optional descriptor for the transfer.
      #
      #   @param on_closed_account [Symbol, Lithic::Models::BookTransferCreateParams::OnClosedAccount] What to do if the financial account is closed when posting an operation
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Category of the book transfer
      module Category
        extend Lithic::Internal::Type::Enum

        ADJUSTMENT = :ADJUSTMENT
        BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
        DERECOGNITION = :DERECOGNITION
        DISPUTE = :DISPUTE
        FEE = :FEE
        REWARD = :REWARD
        TRANSFER = :TRANSFER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Type of the book transfer
      module Type
        extend Lithic::Internal::Type::Enum

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
        SERVICE = :SERVICE
        TRANSFER = :TRANSFER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # What to do if the financial account is closed when posting an operation
      module OnClosedAccount
        extend Lithic::Internal::Type::Enum

        FAIL = :FAIL
        USE_SUSPENSE = :USE_SUSPENSE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
