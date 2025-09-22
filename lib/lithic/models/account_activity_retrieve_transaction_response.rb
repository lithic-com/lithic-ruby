# frozen_string_literal: true

module Lithic
  module Models
    # Response containing multiple transaction types
    #
    # @see Lithic::Resources::AccountActivity#retrieve_transaction
    module AccountActivityRetrieveTransactionResponse
      extend Lithic::Internal::Type::Union

      discriminator :family

      # Financial transaction with inheritance from unified base transaction
      variant -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction }

      # Book transfer transaction
      variant -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction }

      # Base class for all transaction types in the ledger service
      variant -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction }

      # Payment transaction
      variant -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction }

      variant -> { Lithic::ExternalPayment }

      variant -> { Lithic::ManagementOperationTransaction }

      class FinancialTransaction < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Unique identifier for the transaction
        #
        #   @return [String]
        required :token, String

        # @!attribute category
        #   Transaction category
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category]
        required :category,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category }

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
        #   @return [Array<Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Event>]
        required :events,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Event] }

        # @!attribute family
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family]
        required :family,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family }

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
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result]
        required :result,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result }

        # @!attribute settled_amount
        #   Settled amount in cents
        #
        #   @return [Integer]
        required :settled_amount, Integer

        # @!attribute status
        #   The status of the transaction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status]
        required :status,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status }

        # @!attribute updated
        #   ISO 8601 timestamp of when the transaction was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(token:, category:, created:, currency:, descriptor:, events:, family:, financial_account_token:, pending_amount:, result:, settled_amount:, status:, updated:)
        #   Financial transaction with inheritance from unified base transaction
        #
        #   @param token [String] Unique identifier for the transaction
        #
        #   @param category [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Category] Transaction category
        #
        #   @param created [Time] ISO 8601 timestamp of when the transaction was created
        #
        #   @param currency [String] Currency of the transaction, represented in ISO 4217 format
        #
        #   @param descriptor [String] Transaction descriptor
        #
        #   @param events [Array<Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Event>] List of transaction events
        #
        #   @param family [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Family]
        #
        #   @param financial_account_token [String] Financial account token associated with the transaction
        #
        #   @param pending_amount [Integer] Pending amount in cents
        #
        #   @param result [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Result] Transaction result
        #
        #   @param settled_amount [Integer] Settled amount in cents
        #
        #   @param status [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Status] The status of the transaction
        #
        #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated

        # Transaction category
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction#category
        module Category
          extend Lithic::Internal::Type::Enum

          ACH = :ACH
          BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
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
          #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Event::Result, nil]
          optional :result,
                   enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Event::Result }

          # @!attribute type
          #
          #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Event::Type, nil]
          optional :type,
                   enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Event::Type }

          # @!method initialize(token: nil, amount: nil, created: nil, result: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Event}
          #   for more details.
          #
          #   Financial Event
          #
          #   @param token [String] Globally unique identifier.
          #
          #   @param amount [Integer] Amount of the financial event that has been settled in the currency's smallest u
          #
          #   @param created [Time] Date and time when the financial event occurred. UTC time zone.
          #
          #   @param result [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Event::Result] APPROVED financial events were successful while DECLINED financial events were d
          #
          #   @param type [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Event::Type]

          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          #
          # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Event#result
          module Result
            extend Lithic::Internal::Type::Enum

            APPROVED = :APPROVED
            DECLINED = :DECLINED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction::Event#type
          module Type
            extend Lithic::Internal::Type::Enum

            ACH_ORIGINATION_CANCELLED = :ACH_ORIGINATION_CANCELLED
            ACH_ORIGINATION_INITIATED = :ACH_ORIGINATION_INITIATED
            ACH_ORIGINATION_PROCESSED = :ACH_ORIGINATION_PROCESSED
            ACH_ORIGINATION_RELEASED = :ACH_ORIGINATION_RELEASED
            ACH_ORIGINATION_REVIEWED = :ACH_ORIGINATION_REVIEWED
            ACH_ORIGINATION_SETTLED = :ACH_ORIGINATION_SETTLED
            ACH_RECEIPT_PROCESSED = :ACH_RECEIPT_PROCESSED
            ACH_RECEIPT_SETTLED = :ACH_RECEIPT_SETTLED
            ACH_RETURN_INITIATED = :ACH_RETURN_INITIATED
            ACH_RETURN_PROCESSED = :ACH_RETURN_PROCESSED
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

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction#family
        module Family
          extend Lithic::Internal::Type::Enum

          CARD = :CARD
          PAYMENT = :PAYMENT
          TRANSFER = :TRANSFER
          INTERNAL = :INTERNAL
          EXTERNAL_PAYMENT = :EXTERNAL_PAYMENT
          MANAGEMENT_OPERATION = :MANAGEMENT_OPERATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Transaction result
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the transaction
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction#status
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

      class BookTransferTransaction < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Unique identifier for the transaction
        #
        #   @return [String]
        required :token, String

        # @!attribute category
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category]
        required :category,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category }

        # @!attribute created
        #   ISO 8601 timestamp of when the transaction was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute currency
        #   Currency of the transaction in ISO 4217 format
        #
        #   @return [String]
        required :currency, String

        # @!attribute events
        #   List of events associated with this book transfer
        #
        #   @return [Array<Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event>]
        required :events,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event] }

        # @!attribute family
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family]
        required :family,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family }

        # @!attribute from_financial_account_token
        #   Source account token
        #
        #   @return [String]
        required :from_financial_account_token, String

        # @!attribute pending_amount
        #   The pending amount of the transaction in cents
        #
        #   @return [Integer]
        required :pending_amount, Integer

        # @!attribute result
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result]
        required :result,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result }

        # @!attribute settled_amount
        #   The settled amount of the transaction in cents
        #
        #   @return [Integer]
        required :settled_amount, Integer

        # @!attribute status
        #   The status of the transaction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status]
        required :status,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status }

        # @!attribute to_financial_account_token
        #   Destination account token
        #
        #   @return [String]
        required :to_financial_account_token, String

        # @!attribute updated
        #   ISO 8601 timestamp of when the transaction was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!attribute external_id
        #   External identifier for the transaction
        #
        #   @return [String, nil]
        optional :external_id, String

        # @!attribute external_resource
        #   External resource associated with the management operation
        #
        #   @return [Lithic::Models::ExternalResource, nil]
        optional :external_resource, -> { Lithic::ExternalResource }, nil?: true

        # @!attribute transaction_series
        #
        #   @return [Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::TransactionSeries, nil]
        optional :transaction_series,
                 -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::TransactionSeries },
                 nil?: true

        # @!method initialize(token:, category:, created:, currency:, events:, family:, from_financial_account_token:, pending_amount:, result:, settled_amount:, status:, to_financial_account_token:, updated:, external_id: nil, external_resource: nil, transaction_series: nil)
        #   Book transfer transaction
        #
        #   @param token [String] Unique identifier for the transaction
        #
        #   @param category [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Category]
        #
        #   @param created [Time] ISO 8601 timestamp of when the transaction was created
        #
        #   @param currency [String] Currency of the transaction in ISO 4217 format
        #
        #   @param events [Array<Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event>] List of events associated with this book transfer
        #
        #   @param family [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Family]
        #
        #   @param from_financial_account_token [String] Source account token
        #
        #   @param pending_amount [Integer] The pending amount of the transaction in cents
        #
        #   @param result [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Result]
        #
        #   @param settled_amount [Integer] The settled amount of the transaction in cents
        #
        #   @param status [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Status] The status of the transaction
        #
        #   @param to_financial_account_token [String] Destination account token
        #
        #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated
        #
        #   @param external_id [String] External identifier for the transaction
        #
        #   @param external_resource [Lithic::Models::ExternalResource, nil] External resource associated with the management operation
        #
        #   @param transaction_series [Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::TransactionSeries, nil]

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction#category
        module Category
          extend Lithic::Internal::Type::Enum

          ACH = :ACH
          BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
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
          #   @return [String]
          required :token, String

          # @!attribute amount
          #   Amount of the financial event that has been settled in the currency's smallest
          #   unit (e.g., cents).
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute created
          #   Date and time when the financial event occurred. UTC time zone.
          #
          #   @return [Time]
          required :created, Time

          # @!attribute detailed_results
          #
          #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event::DetailedResults]
          required :detailed_results,
                   enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event::DetailedResults }

          # @!attribute memo
          #   Memo for the transfer.
          #
          #   @return [String]
          required :memo, String

          # @!attribute result
          #   APPROVED financial events were successful while DECLINED financial events were
          #   declined by user, Lithic, or the network.
          #
          #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event::Result]
          required :result,
                   enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event::Result }

          # @!attribute subtype
          #   The program specific subtype code for the specified category/type.
          #
          #   @return [String]
          required :subtype, String

          # @!attribute type
          #   Type of the book transfer
          #
          #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event::Type]
          required :type,
                   enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event::Type }

          # @!method initialize(token:, amount:, created:, detailed_results:, memo:, result:, subtype:, type:)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event}
          #   for more details.
          #
          #   Book transfer Event
          #
          #   @param token [String] Globally unique identifier.
          #
          #   @param amount [Integer] Amount of the financial event that has been settled in the currency's smallest u
          #
          #   @param created [Time] Date and time when the financial event occurred. UTC time zone.
          #
          #   @param detailed_results [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event::DetailedResults]
          #
          #   @param memo [String] Memo for the transfer.
          #
          #   @param result [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event::Result] APPROVED financial events were successful while DECLINED financial events were d
          #
          #   @param subtype [String] The program specific subtype code for the specified category/type.
          #
          #   @param type [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event::Type] Type of the book transfer

          # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event#detailed_results
          module DetailedResults
            extend Lithic::Internal::Type::Enum

            APPROVED = :APPROVED
            FUNDS_INSUFFICIENT = :FUNDS_INSUFFICIENT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          #
          # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event#result
          module Result
            extend Lithic::Internal::Type::Enum

            APPROVED = :APPROVED
            DECLINED = :DECLINED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Type of the book transfer
          #
          # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction::Event#type
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
            COLLECTION = :COLLECTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction#family
        module Family
          extend Lithic::Internal::Type::Enum

          CARD = :CARD
          PAYMENT = :PAYMENT
          TRANSFER = :TRANSFER
          INTERNAL = :INTERNAL
          EXTERNAL_PAYMENT = :EXTERNAL_PAYMENT
          MANAGEMENT_OPERATION = :MANAGEMENT_OPERATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the transaction
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction#status
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

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction#transaction_series
        class TransactionSeries < Lithic::Internal::Type::BaseModel
          # @!attribute related_transaction_event_token
          #
          #   @return [String, nil]
          required :related_transaction_event_token, String, nil?: true

          # @!attribute related_transaction_token
          #
          #   @return [String, nil]
          required :related_transaction_token, String, nil?: true

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!method initialize(related_transaction_event_token:, related_transaction_token:, type:)
          #   @param related_transaction_event_token [String, nil]
          #   @param related_transaction_token [String, nil]
          #   @param type [String]
        end
      end

      class CardTransaction < Lithic::Models::Transaction
        # @!attribute token
        #   Unique identifier for the transaction
        #
        #   @return [String]
        required :token, String

        # @!attribute created
        #   ISO 8601 timestamp of when the transaction was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute family
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family]
        required :family,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family }

        # @!attribute status
        #   The status of the transaction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status]
        required :status,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status }

        # @!attribute updated
        #   ISO 8601 timestamp of when the transaction was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(token:, created:, family:, status:, updated:)
        #   Base class for all transaction types in the ledger service
        #
        #   @param token [String] Unique identifier for the transaction
        #
        #   @param created [Time] ISO 8601 timestamp of when the transaction was created
        #
        #   @param family [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Family]
        #
        #   @param status [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction::Status] The status of the transaction
        #
        #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated

        module Family
          extend Lithic::Internal::Type::Enum

          CARD = :CARD
          PAYMENT = :PAYMENT
          TRANSFER = :TRANSFER
          INTERNAL = :INTERNAL
          EXTERNAL_PAYMENT = :EXTERNAL_PAYMENT
          MANAGEMENT_OPERATION = :MANAGEMENT_OPERATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the transaction
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

      class PaymentTransaction < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #   Unique identifier for the transaction
        #
        #   @return [String]
        required :token, String

        # @!attribute category
        #   Transaction category
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category]
        required :category,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category }

        # @!attribute created
        #   ISO 8601 timestamp of when the transaction was created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute descriptor
        #   Transaction descriptor
        #
        #   @return [String]
        required :descriptor, String

        # @!attribute direction
        #   Transfer direction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction]
        required :direction,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction }

        # @!attribute events
        #   List of transaction events
        #
        #   @return [Array<Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event>]
        required :events,
                 -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event] }

        # @!attribute family
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family]
        required :family,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family }

        # @!attribute financial_account_token
        #   Financial account token
        #
        #   @return [String]
        required :financial_account_token, String

        # @!attribute method_
        #   Transfer method
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method]
        required :method_,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method },
                 api_name: :method

        # @!attribute method_attributes
        #   Method-specific attributes
        #
        #   @return [Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes]
        required :method_attributes,
                 union: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes }

        # @!attribute pending_amount
        #   Pending amount in cents
        #
        #   @return [Integer]
        required :pending_amount, Integer

        # @!attribute related_account_tokens
        #   Related account tokens for the transaction
        #
        #   @return [Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::RelatedAccountTokens]
        required :related_account_tokens,
                 -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::RelatedAccountTokens }

        # @!attribute result
        #   Transaction result
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result]
        required :result,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result }

        # @!attribute settled_amount
        #   Settled amount in cents
        #
        #   @return [Integer]
        required :settled_amount, Integer

        # @!attribute source
        #   Transaction source
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source]
        required :source,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source }

        # @!attribute status
        #   The status of the transaction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status]
        required :status,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status }

        # @!attribute updated
        #   ISO 8601 timestamp of when the transaction was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!attribute currency
        #   Currency of the transaction in ISO 4217 format
        #
        #   @return [String, nil]
        optional :currency, String

        # @!attribute expected_release_date
        #   Expected release date for the transaction
        #
        #   @return [Date, nil]
        optional :expected_release_date, Date, nil?: true

        # @!attribute external_bank_account_token
        #   External bank account token
        #
        #   @return [String, nil]
        optional :external_bank_account_token, String, nil?: true

        # @!attribute type
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Type, nil]
        optional :type,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Type }

        # @!attribute user_defined_id
        #   User-defined identifier
        #
        #   @return [String, nil]
        optional :user_defined_id, String, nil?: true

        # @!method initialize(token:, category:, created:, descriptor:, direction:, events:, family:, financial_account_token:, method_:, method_attributes:, pending_amount:, related_account_tokens:, result:, settled_amount:, source:, status:, updated:, currency: nil, expected_release_date: nil, external_bank_account_token: nil, type: nil, user_defined_id: nil)
        #   Payment transaction
        #
        #   @param token [String] Unique identifier for the transaction
        #
        #   @param category [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Category] Transaction category
        #
        #   @param created [Time] ISO 8601 timestamp of when the transaction was created
        #
        #   @param descriptor [String] Transaction descriptor
        #
        #   @param direction [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Direction] Transfer direction
        #
        #   @param events [Array<Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event>] List of transaction events
        #
        #   @param family [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Family]
        #
        #   @param financial_account_token [String] Financial account token
        #
        #   @param method_ [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Method] Transfer method
        #
        #   @param method_attributes [Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes] Method-specific attributes
        #
        #   @param pending_amount [Integer] Pending amount in cents
        #
        #   @param related_account_tokens [Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::RelatedAccountTokens] Related account tokens for the transaction
        #
        #   @param result [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Result] Transaction result
        #
        #   @param settled_amount [Integer] Settled amount in cents
        #
        #   @param source [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Source] Transaction source
        #
        #   @param status [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Status] The status of the transaction
        #
        #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated
        #
        #   @param currency [String] Currency of the transaction in ISO 4217 format
        #
        #   @param expected_release_date [Date, nil] Expected release date for the transaction
        #
        #   @param external_bank_account_token [String, nil] External bank account token
        #
        #   @param type [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Type]
        #
        #   @param user_defined_id [String, nil] User-defined identifier

        # Transaction category
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#category
        module Category
          extend Lithic::Internal::Type::Enum

          ACH = :ACH
          BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
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

        # Transfer direction
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#direction
        module Direction
          extend Lithic::Internal::Type::Enum

          CREDIT = :CREDIT
          DEBIT = :DEBIT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Event < Lithic::Internal::Type::BaseModel
          # @!attribute token
          #   Globally unique identifier.
          #
          #   @return [String]
          required :token, String

          # @!attribute amount
          #   Amount of the financial event that has been settled in the currency's smallest
          #   unit (e.g., cents).
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute created
          #   Date and time when the financial event occurred. UTC time zone.
          #
          #   @return [Time]
          required :created, Time

          # @!attribute result
          #   APPROVED financial events were successful while DECLINED financial events were
          #   declined by user, Lithic, or the network.
          #
          #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event::Result]
          required :result,
                   enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event::Result }

          # @!attribute type
          #   Event types:
          #
          #   - `ACH_ORIGINATION_INITIATED` - ACH origination received and pending
          #     approval/release from an ACH hold.
          #   - `ACH_ORIGINATION_REVIEWED` - ACH origination has completed the review process.
          #   - `ACH_ORIGINATION_CANCELLED` - ACH origination has been cancelled.
          #   - `ACH_ORIGINATION_PROCESSED` - ACH origination has been processed and sent to
          #     the Federal Reserve.
          #   - `ACH_ORIGINATION_SETTLED` - ACH origination has settled.
          #   - `ACH_ORIGINATION_RELEASED` - ACH origination released from pending to
          #     available balance.
          #   - `ACH_RETURN_PROCESSED` - ACH origination returned by the Receiving Depository
          #     Financial Institution.
          #   - `ACH_RECEIPT_PROCESSED` - ACH receipt pending release from an ACH holder.
          #   - `ACH_RETURN_INITIATED` - ACH initiated return for a ACH receipt.
          #   - `ACH_RECEIPT_SETTLED` - ACH receipt funds have settled.
          #   - `ACH_RECEIPT_RELEASED` - ACH receipt released from pending to available
          #     balance.
          #   - `ACH_RETURN_SETTLED` - ACH receipt return settled by the Receiving Depository
          #     Financial Institution.
          #
          #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event::Type]
          required :type,
                   enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event::Type }

          # @!attribute detailed_results
          #   More detailed reasons for the event
          #
          #   @return [Array<Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event::DetailedResult>, nil]
          optional :detailed_results,
                   -> do
                     Lithic::Internal::Type::ArrayOf[
                       enum: Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event::DetailedResult
                     ]
                   end

          # @!method initialize(token:, amount:, created:, result:, type:, detailed_results: nil)
          #   Some parameter documentations has been truncated, see
          #   {Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event}
          #   for more details.
          #
          #   Payment Event
          #
          #   @param token [String] Globally unique identifier.
          #
          #   @param amount [Integer] Amount of the financial event that has been settled in the currency's smallest u
          #
          #   @param created [Time] Date and time when the financial event occurred. UTC time zone.
          #
          #   @param result [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event::Result] APPROVED financial events were successful while DECLINED financial events were d
          #
          #   @param type [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event::Type] Event types:
          #
          #   @param detailed_results [Array<Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event::DetailedResult>] More detailed reasons for the event

          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          #
          # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event#result
          module Result
            extend Lithic::Internal::Type::Enum

            APPROVED = :APPROVED
            DECLINED = :DECLINED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Event types:
          #
          # - `ACH_ORIGINATION_INITIATED` - ACH origination received and pending
          #   approval/release from an ACH hold.
          # - `ACH_ORIGINATION_REVIEWED` - ACH origination has completed the review process.
          # - `ACH_ORIGINATION_CANCELLED` - ACH origination has been cancelled.
          # - `ACH_ORIGINATION_PROCESSED` - ACH origination has been processed and sent to
          #   the Federal Reserve.
          # - `ACH_ORIGINATION_SETTLED` - ACH origination has settled.
          # - `ACH_ORIGINATION_RELEASED` - ACH origination released from pending to
          #   available balance.
          # - `ACH_RETURN_PROCESSED` - ACH origination returned by the Receiving Depository
          #   Financial Institution.
          # - `ACH_RECEIPT_PROCESSED` - ACH receipt pending release from an ACH holder.
          # - `ACH_RETURN_INITIATED` - ACH initiated return for a ACH receipt.
          # - `ACH_RECEIPT_SETTLED` - ACH receipt funds have settled.
          # - `ACH_RECEIPT_RELEASED` - ACH receipt released from pending to available
          #   balance.
          # - `ACH_RETURN_SETTLED` - ACH receipt return settled by the Receiving Depository
          #   Financial Institution.
          #
          # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::Event#type
          module Type
            extend Lithic::Internal::Type::Enum

            ACH_ORIGINATION_CANCELLED = :ACH_ORIGINATION_CANCELLED
            ACH_ORIGINATION_INITIATED = :ACH_ORIGINATION_INITIATED
            ACH_ORIGINATION_PROCESSED = :ACH_ORIGINATION_PROCESSED
            ACH_ORIGINATION_SETTLED = :ACH_ORIGINATION_SETTLED
            ACH_ORIGINATION_RELEASED = :ACH_ORIGINATION_RELEASED
            ACH_ORIGINATION_REVIEWED = :ACH_ORIGINATION_REVIEWED
            ACH_RECEIPT_PROCESSED = :ACH_RECEIPT_PROCESSED
            ACH_RECEIPT_SETTLED = :ACH_RECEIPT_SETTLED
            ACH_RETURN_INITIATED = :ACH_RETURN_INITIATED
            ACH_RETURN_PROCESSED = :ACH_RETURN_PROCESSED
            ACH_RETURN_SETTLED = :ACH_RETURN_SETTLED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          module DetailedResult
            extend Lithic::Internal::Type::Enum

            APPROVED = :APPROVED
            FUNDS_INSUFFICIENT = :FUNDS_INSUFFICIENT
            ACCOUNT_INVALID = :ACCOUNT_INVALID
            PROGRAM_TRANSACTION_LIMIT_EXCEEDED = :PROGRAM_TRANSACTION_LIMIT_EXCEEDED
            PROGRAM_DAILY_LIMIT_EXCEEDED = :PROGRAM_DAILY_LIMIT_EXCEEDED
            PROGRAM_MONTHLY_LIMIT_EXCEEDED = :PROGRAM_MONTHLY_LIMIT_EXCEEDED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#family
        module Family
          extend Lithic::Internal::Type::Enum

          CARD = :CARD
          PAYMENT = :PAYMENT
          TRANSFER = :TRANSFER
          INTERNAL = :INTERNAL
          EXTERNAL_PAYMENT = :EXTERNAL_PAYMENT
          MANAGEMENT_OPERATION = :MANAGEMENT_OPERATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Transfer method
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#method_
        module Method
          extend Lithic::Internal::Type::Enum

          ACH_NEXT_DAY = :ACH_NEXT_DAY
          ACH_SAME_DAY = :ACH_SAME_DAY
          WIRE = :WIRE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Method-specific attributes
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#method_attributes
        module MethodAttributes
          extend Lithic::Internal::Type::Union

          variant -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes }

          variant -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes }

          class ACHMethodAttributes < Lithic::Internal::Type::BaseModel
            # @!attribute sec_code
            #   SEC code for ACH transaction
            #
            #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode]
            required :sec_code,
                     enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode }

            # @!attribute addenda
            #   Addenda information
            #
            #   @return [String, nil]
            optional :addenda, String, nil?: true

            # @!attribute company_id
            #   Company ID for the ACH transaction
            #
            #   @return [String, nil]
            optional :company_id, String, nil?: true

            # @!attribute receipt_routing_number
            #   Receipt routing number
            #
            #   @return [String, nil]
            optional :receipt_routing_number, String, nil?: true

            # @!attribute retries
            #   Number of retries attempted
            #
            #   @return [Integer, nil]
            optional :retries, Integer, nil?: true

            # @!attribute return_reason_code
            #   Return reason code if the transaction was returned
            #
            #   @return [String, nil]
            optional :return_reason_code, String, nil?: true

            # @!attribute trace_numbers
            #   Trace numbers for the ACH transaction
            #
            #   @return [Array<String>, nil]
            optional :trace_numbers, Lithic::Internal::Type::ArrayOf[String]

            # @!method initialize(sec_code:, addenda: nil, company_id: nil, receipt_routing_number: nil, retries: nil, return_reason_code: nil, trace_numbers: nil)
            #   @param sec_code [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes::SecCode] SEC code for ACH transaction
            #
            #   @param addenda [String, nil] Addenda information
            #
            #   @param company_id [String, nil] Company ID for the ACH transaction
            #
            #   @param receipt_routing_number [String, nil] Receipt routing number
            #
            #   @param retries [Integer, nil] Number of retries attempted
            #
            #   @param return_reason_code [String, nil] Return reason code if the transaction was returned
            #
            #   @param trace_numbers [Array<String>] Trace numbers for the ACH transaction

            # SEC code for ACH transaction
            #
            # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes#sec_code
            module SecCode
              extend Lithic::Internal::Type::Enum

              CCD = :CCD
              PPD = :PPD
              WEB = :WEB
              TEL = :TEL
              CIE = :CIE
              CTX = :CTX

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class WireMethodAttributes < Lithic::Internal::Type::BaseModel
            # @!attribute wire_network
            #   Type of wire transfer
            #
            #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireNetwork]
            required :wire_network,
                     enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireNetwork }

            # @!attribute creditor
            #
            #   @return [Lithic::Models::WirePartyDetails, nil]
            optional :creditor, -> { Lithic::WirePartyDetails }

            # @!attribute debtor
            #
            #   @return [Lithic::Models::WirePartyDetails, nil]
            optional :debtor, -> { Lithic::WirePartyDetails }

            # @!attribute message_id
            #   Point to point reference identifier, as assigned by the instructing party, used
            #   for tracking the message through the Fedwire system
            #
            #   @return [String, nil]
            optional :message_id, String, nil?: true

            # @!attribute remittance_information
            #   Payment details or invoice reference
            #
            #   @return [String, nil]
            optional :remittance_information, String, nil?: true

            # @!attribute wire_message_type
            #   Type of wire message
            #
            #   @return [String, nil]
            optional :wire_message_type, String

            # @!method initialize(wire_network:, creditor: nil, debtor: nil, message_id: nil, remittance_information: nil, wire_message_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes}
            #   for more details.
            #
            #   @param wire_network [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes::WireNetwork] Type of wire transfer
            #
            #   @param creditor [Lithic::Models::WirePartyDetails]
            #
            #   @param debtor [Lithic::Models::WirePartyDetails]
            #
            #   @param message_id [String, nil] Point to point reference identifier, as assigned by the instructing party, used
            #
            #   @param remittance_information [String, nil] Payment details or invoice reference
            #
            #   @param wire_message_type [String] Type of wire message

            # Type of wire transfer
            #
            # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes#wire_network
            module WireNetwork
              extend Lithic::Internal::Type::Enum

              FEDWIRE = :FEDWIRE
              SWIFT = :SWIFT

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::ACHMethodAttributes, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction::MethodAttributes::WireMethodAttributes)]
        end

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#related_account_tokens
        class RelatedAccountTokens < Lithic::Internal::Type::BaseModel
          # @!attribute account_token
          #   Globally unique identifier for the account
          #
          #   @return [String, nil]
          required :account_token, String, nil?: true

          # @!attribute business_account_token
          #   Globally unique identifier for the business account
          #
          #   @return [String, nil]
          required :business_account_token, String, nil?: true

          # @!method initialize(account_token:, business_account_token:)
          #   Related account tokens for the transaction
          #
          #   @param account_token [String, nil] Globally unique identifier for the account
          #
          #   @param business_account_token [String, nil] Globally unique identifier for the business account
        end

        # Transaction result
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Transaction source
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#source
        module Source
          extend Lithic::Internal::Type::Enum

          LITHIC = :LITHIC
          EXTERNAL = :EXTERNAL
          CUSTOMER = :CUSTOMER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the transaction
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#status
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

        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction#type
        module Type
          extend Lithic::Internal::Type::Enum

          ORIGINATION_CREDIT = :ORIGINATION_CREDIT
          ORIGINATION_DEBIT = :ORIGINATION_DEBIT
          RECEIPT_CREDIT = :RECEIPT_CREDIT
          RECEIPT_DEBIT = :RECEIPT_DEBIT
          WIRE_INBOUND_PAYMENT = :WIRE_INBOUND_PAYMENT
          WIRE_INBOUND_ADMIN = :WIRE_INBOUND_ADMIN
          WIRE_OUTBOUND_PAYMENT = :WIRE_OUTBOUND_PAYMENT
          WIRE_OUTBOUND_ADMIN = :WIRE_OUTBOUND_ADMIN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Lithic::Models::AccountActivityRetrieveTransactionResponse::FinancialTransaction, Lithic::Models::AccountActivityRetrieveTransactionResponse::BookTransferTransaction, Lithic::Models::AccountActivityRetrieveTransactionResponse::CardTransaction, Lithic::Models::AccountActivityRetrieveTransactionResponse::PaymentTransaction, Lithic::Models::ExternalPayment, Lithic::Models::ManagementOperationTransaction)]
    end
  end
end
