# typed: strong

module Lithic
  module Models
    class BookTransferCreateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
      #   This should always be a positive value.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # Category of the book transfer
      sig { returns(Symbol) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def category=(_)
      end

      # Globally unique identifier for the financial account or card that will send the
      #   funds. Accepted type dependent on the program's use case.
      sig { returns(String) }
      def from_financial_account_token
      end

      sig { params(_: String).returns(String) }
      def from_financial_account_token=(_)
      end

      # The program specific subtype code for the specified category/type.
      sig { returns(String) }
      def subtype
      end

      sig { params(_: String).returns(String) }
      def subtype=(_)
      end

      # Globally unique identifier for the financial account or card that will receive
      #   the funds. Accepted type dependent on the program's use case.
      sig { returns(String) }
      def to_financial_account_token
      end

      sig { params(_: String).returns(String) }
      def to_financial_account_token=(_)
      end

      # Type of book_transfer
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Customer-provided token that will serve as an idempotency token. This token will
      #   become the transaction token.
      sig { returns(T.nilable(String)) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Optional descriptor for the transfer.
      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: String).returns(String) }
      def memo=(_)
      end

      sig do
        params(
          amount: Integer,
          category: Symbol,
          from_financial_account_token: String,
          subtype: String,
          to_financial_account_token: String,
          type: Symbol,
          token: String,
          memo: String,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        category:,
        from_financial_account_token:,
        subtype:,
        to_financial_account_token:,
        type:,
        token: nil,
        memo: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              category: Symbol,
              from_financial_account_token: String,
              subtype: String,
              to_financial_account_token: String,
              type: Symbol,
              token: String,
              memo: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Category of the book transfer
      class Category < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ADJUSTMENT = :ADJUSTMENT
        BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
        DERECOGNITION = :DERECOGNITION
        DISPUTE = :DISPUTE
        FEE = :FEE
        REWARD = :REWARD
        TRANSFER = :TRANSFER
      end

      # Type of book_transfer
      class Type < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end
    end
  end
end
