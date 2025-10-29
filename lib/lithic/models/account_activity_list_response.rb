# frozen_string_literal: true

module Lithic
  module Models
    # Response containing multiple transaction types. The `family` field determines
    # which transaction type is returned: INTERNAL returns FinancialTransaction,
    # TRANSFER returns BookTransferTransaction, CARD returns CardTransaction, PAYMENT
    # returns PaymentTransaction, EXTERNAL_PAYMENT returns ExternalPaymentResponse,
    # and MANAGEMENT_OPERATION returns ManagementOperationTransaction
    #
    # @see Lithic::Resources::AccountActivity#list
    module AccountActivityListResponse
      extend Lithic::Internal::Type::Union

      discriminator :family

      # Financial transaction with inheritance from unified base transaction
      variant :INTERNAL, -> { Lithic::Models::AccountActivityListResponse::Internal }

      # Book transfer transaction
      variant :TRANSFER, -> { Lithic::BookTransferResponse }

      # Card transaction with ledger base properties
      variant :CARD, -> { Lithic::Models::AccountActivityListResponse::Card }

      # Payment transaction
      variant :PAYMENT, -> { Lithic::Payment }

      variant :EXTERNAL_PAYMENT, -> { Lithic::ExternalPayment }

      variant :MANAGEMENT_OPERATION, -> { Lithic::ManagementOperationTransaction }

      class Internal < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Unique identifier for the transaction
        #
        #   @return [String]
        required :token, String

        # @!attribute category
        #   Transaction category
        #
        #   @return [Symbol, Lithic::Models::AccountActivityListResponse::Internal::Category]
        required :category, enum: -> { Lithic::Models::AccountActivityListResponse::Internal::Category }

        # @!attribute created
        #   ISO 8601 timestamp of when the transaction was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute currency
        #   Currency of the transaction, represented in ISO 4217 format
        #
        #   @return [String]
        required :currency, String

        # @!attribute descriptor
        #   Transaction descriptor
        #
        #   @return [String]
        required :descriptor, String

        # @!attribute events
        #   List of transaction events
        #
        #   @return [Array<Lithic::Models::AccountActivityListResponse::Internal::Event>]
        required :events,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountActivityListResponse::Internal::Event] }

        # @!attribute family
        #   INTERNAL - Financial Transaction
        #
        #   @return [Symbol, :INTERNAL]
        required :family, const: :INTERNAL

        # @!attribute financial_account_token
        #   Financial account token associated with the transaction
        #
        #   @return [String]
        required :financial_account_token, String

        # @!attribute pending_amount
        #   Pending amount in cents
        #
        #   @return [Integer]
        required :pending_amount, Integer

        # @!attribute result
        #   Transaction result
        #
        #   @return [Symbol, Lithic::Models::AccountActivityListResponse::Internal::Result]
        required :result, enum: -> { Lithic::Models::AccountActivityListResponse::Internal::Result }

        # @!attribute settled_amount
        #   Settled amount in cents
        #
        #   @return [Integer]
        required :settled_amount, Integer

        # @!attribute status
        #   The status of the transaction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityListResponse::Internal::Status]
        required :status, enum: -> { Lithic::Models::AccountActivityListResponse::Internal::Status }

        # @!attribute updated
        #   ISO 8601 timestamp of when the transaction was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(token:, category:, created:, currency:, descriptor:, events:, financial_account_token:, pending_amount:, result:, settled_amount:, status:, updated:, family: :INTERNAL)
        #   Financial transaction with inheritance from unified base transaction
        #
        #   @param token [String] Unique identifier for the transaction
        #
        #   @param category [Symbol, Lithic::Models::AccountActivityListResponse::Internal::Category] Transaction category
        #
        #   @param created [Time] ISO 8601 timestamp of when the transaction was created
        #
        #   @param currency [String] Currency of the transaction, represented in ISO 4217 format
        #
        #   @param descriptor [String] Transaction descriptor
        #
        #   @param events [Array<Lithic::Models::AccountActivityListResponse::Internal::Event>] List of transaction events
        #
        #   @param financial_account_token [String] Financial account token associated with the transaction
        #
        #   @param pending_amount [Integer] Pending amount in cents
        #
        #   @param result [Symbol, Lithic::Models::AccountActivityListResponse::Internal::Result] Transaction result
        #
        #   @param settled_amount [Integer] Settled amount in cents
        #
        #   @param status [Symbol, Lithic::Models::AccountActivityListResponse::Internal::Status] The status of the transaction
        #
        #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated
        #
        #   @param family [Symbol, :INTERNAL] INTERNAL - Financial Transaction

        # Transaction category
        #
        # @see Lithic::Models::AccountActivityListResponse::Internal#category
        module Category
          extend Lithic::Internal::Type::Enum

          ACH = :ACH
          BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
          FEE = :FEE
          REWARD = :REWARD
          ADJUSTMENT = :ADJUSTMENT
          DERECOGNITION = :DERECOGNITION
          DISPUTE = :DISPUTE
          CARD = :CARD
          EXTERNAL_ACH = :EXTERNAL_ACH
          EXTERNAL_CHECK = :EXTERNAL_CHECK
          EXTERNAL_TRANSFER = :EXTERNAL_TRANSFER
          EXTERNAL_WIRE = :EXTERNAL_WIRE
          MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT
          MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
          MANAGEMENT_FEE = :MANAGEMENT_FEE
          MANAGEMENT_REWARD = :MANAGEMENT_REWARD
          MANAGEMENT_DISBURSEMENT = :MANAGEMENT_DISBURSEMENT
          PROGRAM_FUNDING = :PROGRAM_FUNDING

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Event < Lithic::Internal::Type::BaseModel
          # @!attribute token
          #   Globally unique identifier.
          #
          #   @return [String, nil]
          optional :token, String

          # @!attribute amount
          #   Amount of the financial event that has been settled in the currency's smallest
          #   unit (e.g., cents).
          #
          #   @return [Integer, nil]
          optional :amount, Integer

          # @!attribute created
          #   Date and time when the financial event occurred. UTC time zone.
          #
          #   @return [Time, nil]
          optional :created, Time

          # @!attribute result
          #   APPROVED financial events were successful while DECLINED financial events were
          #   declined by user, Lithic, or the network.
          #
          #   @return [Symbol, Lithic::Models::AccountActivityListResponse::Internal::Event::Result, nil]
          optional :result, enum: -> { Lithic::Models::AccountActivityListResponse::Internal::Event::Result }

          # @!attribute type
          #
          #   @return [Symbol, Lithic::Models::AccountActivityListResponse::Internal::Event::Type, nil]
          optional :type, enum: -> { Lithic::Models::AccountActivityListResponse::Internal::Event::Type }

          # @!method initialize(token: nil, amount: nil, created: nil, result: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AccountActivityListResponse::Internal::Event} for more details.
          #
          #   Financial Event
          #
          #   @param token [String] Globally unique identifier.
          #
          #   @param amount [Integer] Amount of the financial event that has been settled in the currency's smallest u
          #
          #   @param created [Time] Date and time when the financial event occurred. UTC time zone.
          #
          #   @param result [Symbol, Lithic::Models::AccountActivityListResponse::Internal::Event::Result] APPROVED financial events were successful while DECLINED financial events were d
          #
          #   @param type [Symbol, Lithic::Models::AccountActivityListResponse::Internal::Event::Type]

          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          #
          # @see Lithic::Models::AccountActivityListResponse::Internal::Event#result
          module Result
            extend Lithic::Internal::Type::Enum

            APPROVED = :APPROVED
            DECLINED = :DECLINED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Lithic::Models::AccountActivityListResponse::Internal::Event#type
          module Type
            extend Lithic::Internal::Type::Enum

            ACH_ORIGINATION_CANCELLED = :ACH_ORIGINATION_CANCELLED
            ACH_ORIGINATION_INITIATED = :ACH_ORIGINATION_INITIATED
            ACH_ORIGINATION_PROCESSED = :ACH_ORIGINATION_PROCESSED
            ACH_ORIGINATION_RELEASED = :ACH_ORIGINATION_RELEASED
            ACH_ORIGINATION_REJECTED = :ACH_ORIGINATION_REJECTED
            ACH_ORIGINATION_REVIEWED = :ACH_ORIGINATION_REVIEWED
            ACH_ORIGINATION_SETTLED = :ACH_ORIGINATION_SETTLED
            ACH_RECEIPT_PROCESSED = :ACH_RECEIPT_PROCESSED
            ACH_RECEIPT_RELEASED = :ACH_RECEIPT_RELEASED
            ACH_RECEIPT_SETTLED = :ACH_RECEIPT_SETTLED
            ACH_RETURN_INITIATED = :ACH_RETURN_INITIATED
            ACH_RETURN_PROCESSED = :ACH_RETURN_PROCESSED
            ACH_RETURN_REJECTED = :ACH_RETURN_REJECTED
            ACH_RETURN_SETTLED = :ACH_RETURN_SETTLED
            AUTHORIZATION = :AUTHORIZATION
            AUTHORIZATION_ADVICE = :AUTHORIZATION_ADVICE
            AUTHORIZATION_EXPIRY = :AUTHORIZATION_EXPIRY
            AUTHORIZATION_REVERSAL = :AUTHORIZATION_REVERSAL
            BALANCE_INQUIRY = :BALANCE_INQUIRY
            BILLING_ERROR = :BILLING_ERROR
            BILLING_ERROR_REVERSAL = :BILLING_ERROR_REVERSAL
            CARD_TO_CARD = :CARD_TO_CARD
            CASH_BACK = :CASH_BACK
            CASH_BACK_REVERSAL = :CASH_BACK_REVERSAL
            CLEARING = :CLEARING
            COLLECTION = :COLLECTION
            CORRECTION_CREDIT = :CORRECTION_CREDIT
            CORRECTION_DEBIT = :CORRECTION_DEBIT
            CREDIT_AUTHORIZATION = :CREDIT_AUTHORIZATION
            CREDIT_AUTHORIZATION_ADVICE = :CREDIT_AUTHORIZATION_ADVICE
            CURRENCY_CONVERSION = :CURRENCY_CONVERSION
            CURRENCY_CONVERSION_REVERSAL = :CURRENCY_CONVERSION_REVERSAL
            DISPUTE_WON = :DISPUTE_WON
            EXTERNAL_ACH_CANCELED = :EXTERNAL_ACH_CANCELED
            EXTERNAL_ACH_INITIATED = :EXTERNAL_ACH_INITIATED
            EXTERNAL_ACH_RELEASED = :EXTERNAL_ACH_RELEASED
            EXTERNAL_ACH_REVERSED = :EXTERNAL_ACH_REVERSED
            EXTERNAL_ACH_SETTLED = :EXTERNAL_ACH_SETTLED
            EXTERNAL_CHECK_CANCELED = :EXTERNAL_CHECK_CANCELED
            EXTERNAL_CHECK_INITIATED = :EXTERNAL_CHECK_INITIATED
            EXTERNAL_CHECK_RELEASED = :EXTERNAL_CHECK_RELEASED
            EXTERNAL_CHECK_REVERSED = :EXTERNAL_CHECK_REVERSED
            EXTERNAL_CHECK_SETTLED = :EXTERNAL_CHECK_SETTLED
            EXTERNAL_TRANSFER_CANCELED = :EXTERNAL_TRANSFER_CANCELED
            EXTERNAL_TRANSFER_INITIATED = :EXTERNAL_TRANSFER_INITIATED
            EXTERNAL_TRANSFER_RELEASED = :EXTERNAL_TRANSFER_RELEASED
            EXTERNAL_TRANSFER_REVERSED = :EXTERNAL_TRANSFER_REVERSED
            EXTERNAL_TRANSFER_SETTLED = :EXTERNAL_TRANSFER_SETTLED
            EXTERNAL_WIRE_CANCELED = :EXTERNAL_WIRE_CANCELED
            EXTERNAL_WIRE_INITIATED = :EXTERNAL_WIRE_INITIATED
            EXTERNAL_WIRE_RELEASED = :EXTERNAL_WIRE_RELEASED
            EXTERNAL_WIRE_REVERSED = :EXTERNAL_WIRE_REVERSED
            EXTERNAL_WIRE_SETTLED = :EXTERNAL_WIRE_SETTLED
            FINANCIAL_AUTHORIZATION = :FINANCIAL_AUTHORIZATION
            FINANCIAL_CREDIT_AUTHORIZATION = :FINANCIAL_CREDIT_AUTHORIZATION
            INTEREST = :INTEREST
            INTEREST_REVERSAL = :INTEREST_REVERSAL
            INTERNAL_ADJUSTMENT = :INTERNAL_ADJUSTMENT
            LATE_PAYMENT = :LATE_PAYMENT
            LATE_PAYMENT_REVERSAL = :LATE_PAYMENT_REVERSAL
            LOSS_WRITE_OFF = :LOSS_WRITE_OFF
            PROVISIONAL_CREDIT = :PROVISIONAL_CREDIT
            PROVISIONAL_CREDIT_REVERSAL = :PROVISIONAL_CREDIT_REVERSAL
            SERVICE = :SERVICE
            RETURN = :RETURN
            RETURN_REVERSAL = :RETURN_REVERSAL
            TRANSFER = :TRANSFER
            TRANSFER_INSUFFICIENT_FUNDS = :TRANSFER_INSUFFICIENT_FUNDS
            RETURNED_PAYMENT = :RETURNED_PAYMENT
            RETURNED_PAYMENT_REVERSAL = :RETURNED_PAYMENT_REVERSAL
            LITHIC_NETWORK_PAYMENT = :LITHIC_NETWORK_PAYMENT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Transaction result
        #
        # @see Lithic::Models::AccountActivityListResponse::Internal#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the transaction
        #
        # @see Lithic::Models::AccountActivityListResponse::Internal#status
        module Status
          extend Lithic::Internal::Type::Enum

          PENDING = :PENDING
          SETTLED = :SETTLED
          DECLINED = :DECLINED
          REVERSED = :REVERSED
          CANCELED = :CANCELED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Card < Lithic::Models::Transaction
        # @!method initialize
        #   Card transaction with ledger base properties
      end

      # @!method self.variants
      #   @return [Array(Lithic::Models::AccountActivityListResponse::Internal, Lithic::Models::BookTransferResponse, Lithic::Models::AccountActivityListResponse::Card, Lithic::Models::Payment, Lithic::Models::ExternalPayment, Lithic::Models::ManagementOperationTransaction)]
    end
  end
end
