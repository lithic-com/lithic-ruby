# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BookTransfers#create
    class BookTransferResponse < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Unique identifier for the transaction
      #
      #   @return [String]
      required :token, String

      # @!attribute category
      #
      #   @return [Symbol, Lithic::Models::BookTransferResponse::Category]
      required :category, enum: -> { Lithic::BookTransferResponse::Category }

      # @!attribute created
      #   ISO 8601 timestamp of when the transaction was created
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #   3-character alphabetic ISO 4217 code for the settling currency of the
      #   transaction
      #
      #   @return [String]
      required :currency, String

      # @!attribute events
      #   A list of all financial events that have modified this transfer
      #
      #   @return [Array<Lithic::Models::BookTransferResponse::Event>]
      required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::BookTransferResponse::Event] }

      # @!attribute family
      #   TRANSFER - Book Transfer Transaction
      #
      #   @return [Symbol, :TRANSFER]
      required :family, const: :TRANSFER

      # @!attribute from_financial_account_token
      #   Globally unique identifier for the financial account or card that will send the
      #   funds. Accepted type dependent on the program's use case
      #
      #   @return [String]
      required :from_financial_account_token, String

      # @!attribute pending_amount
      #   Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #   including any acquirer fees.
      #
      #   The value of this field will go to zero over time once the financial transaction
      #   is settled.
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute result
      #
      #   @return [Symbol, Lithic::Models::BookTransferResponse::Result]
      required :result, enum: -> { Lithic::BookTransferResponse::Result }

      # @!attribute settled_amount
      #   Amount of the transaction that has been settled in the currency's smallest unit
      #   (e.g., cents)
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #   The status of the transaction
      #
      #   @return [Symbol, Lithic::Models::BookTransferResponse::Status]
      required :status, enum: -> { Lithic::BookTransferResponse::Status }

      # @!attribute to_financial_account_token
      #   Globally unique identifier for the financial account or card that will receive
      #   the funds. Accepted type dependent on the program's use case
      #
      #   @return [String]
      required :to_financial_account_token, String

      # @!attribute updated
      #   ISO 8601 timestamp of when the transaction was last updated
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute external_id
      #   External ID defined by the customer
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute external_resource
      #   External resource associated with the management operation
      #
      #   @return [Lithic::Models::ExternalResource, nil]
      optional :external_resource, -> { Lithic::ExternalResource }, nil?: true

      # @!attribute transaction_series
      #   A series of transactions that are grouped together
      #
      #   @return [Lithic::Models::BookTransferResponse::TransactionSeries, nil]
      optional :transaction_series, -> { Lithic::BookTransferResponse::TransactionSeries }, nil?: true

      # @!method initialize(token:, category:, created:, currency:, events:, from_financial_account_token:, pending_amount:, result:, settled_amount:, status:, to_financial_account_token:, updated:, external_id: nil, external_resource: nil, transaction_series: nil, family: :TRANSFER)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::BookTransferResponse} for more details.
      #
      #   Book transfer transaction
      #
      #   @param token [String] Unique identifier for the transaction
      #
      #   @param category [Symbol, Lithic::Models::BookTransferResponse::Category]
      #
      #   @param created [Time] ISO 8601 timestamp of when the transaction was created
      #
      #   @param currency [String] 3-character alphabetic ISO 4217 code for the settling currency of the transactio
      #
      #   @param events [Array<Lithic::Models::BookTransferResponse::Event>] A list of all financial events that have modified this transfer
      #
      #   @param from_financial_account_token [String] Globally unique identifier for the financial account or card that will send the
      #
      #   @param pending_amount [Integer] Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #
      #   @param result [Symbol, Lithic::Models::BookTransferResponse::Result]
      #
      #   @param settled_amount [Integer] Amount of the transaction that has been settled in the currency's smallest unit
      #
      #   @param status [Symbol, Lithic::Models::BookTransferResponse::Status] The status of the transaction
      #
      #   @param to_financial_account_token [String] Globally unique identifier for the financial account or card that will receive t
      #
      #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated
      #
      #   @param external_id [String, nil] External ID defined by the customer
      #
      #   @param external_resource [Lithic::Models::ExternalResource, nil] External resource associated with the management operation
      #
      #   @param transaction_series [Lithic::Models::BookTransferResponse::TransactionSeries, nil] A series of transactions that are grouped together
      #
      #   @param family [Symbol, :TRANSFER] TRANSFER - Book Transfer Transaction

      # @see Lithic::Models::BookTransferResponse#category
      module Category
        extend Lithic::Internal::Type::Enum

        ADJUSTMENT = :ADJUSTMENT
        BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
        DERECOGNITION = :DERECOGNITION
        DISPUTE = :DISPUTE
        FEE = :FEE
        INTERNAL = :INTERNAL
        REWARD = :REWARD
        PROGRAM_FUNDING = :PROGRAM_FUNDING
        TRANSFER = :TRANSFER

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
        #   @return [Array<Symbol, Lithic::Models::BookTransferResponse::Event::DetailedResult>]
        required :detailed_results,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::BookTransferResponse::Event::DetailedResult] }

        # @!attribute memo
        #   Memo for the transfer.
        #
        #   @return [String]
        required :memo, String

        # @!attribute result
        #   APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        #
        #   @return [Symbol, Lithic::Models::BookTransferResponse::Event::Result]
        required :result, enum: -> { Lithic::BookTransferResponse::Event::Result }

        # @!attribute subtype
        #   The program specific subtype code for the specified category/type.
        #
        #   @return [String]
        required :subtype, String

        # @!attribute type
        #   Type of the book transfer
        #
        #   @return [Symbol, Lithic::Models::BookTransferResponse::Event::Type]
        required :type, enum: -> { Lithic::BookTransferResponse::Event::Type }

        # @!method initialize(token:, amount:, created:, detailed_results:, memo:, result:, subtype:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Lithic::Models::BookTransferResponse::Event} for more details.
        #
        #   Book transfer Event
        #
        #   @param token [String] Globally unique identifier.
        #
        #   @param amount [Integer] Amount of the financial event that has been settled in the currency's smallest u
        #
        #   @param created [Time] Date and time when the financial event occurred. UTC time zone.
        #
        #   @param detailed_results [Array<Symbol, Lithic::Models::BookTransferResponse::Event::DetailedResult>]
        #
        #   @param memo [String] Memo for the transfer.
        #
        #   @param result [Symbol, Lithic::Models::BookTransferResponse::Event::Result] APPROVED financial events were successful while DECLINED financial events were d
        #
        #   @param subtype [String] The program specific subtype code for the specified category/type.
        #
        #   @param type [Symbol, Lithic::Models::BookTransferResponse::Event::Type] Type of the book transfer

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          FUNDS_INSUFFICIENT = :FUNDS_INSUFFICIENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        #
        # @see Lithic::Models::BookTransferResponse::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Type of the book transfer
        #
        # @see Lithic::Models::BookTransferResponse::Event#type
        module Type
          extend Lithic::Internal::Type::Enum

          ATM_BALANCE_INQUIRY = :ATM_BALANCE_INQUIRY
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

      # @see Lithic::Models::BookTransferResponse#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The status of the transaction
      #
      # @see Lithic::Models::BookTransferResponse#status
      module Status
        extend Lithic::Internal::Type::Enum

        PENDING = :PENDING
        SETTLED = :SETTLED
        DECLINED = :DECLINED
        REVERSED = :REVERSED
        CANCELED = :CANCELED
        RETURNED = :RETURNED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::BookTransferResponse#transaction_series
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
        #   A series of transactions that are grouped together
        #
        #   @param related_transaction_event_token [String, nil]
        #   @param related_transaction_token [String, nil]
        #   @param type [String]
      end
    end
  end
end
