# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ManagementOperations#create
    class ManagementOperationTransaction < Lithic::Internal::Type::BaseModel
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

      # @!attribute status
      #   The status of the transaction
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Status]
      required :status, enum: -> { Lithic::ManagementOperationTransaction::Status }

      # @!attribute updated
      #   ISO 8601 timestamp of when the transaction was last updated
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute category
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Category, nil]
      optional :category, enum: -> { Lithic::ManagementOperationTransaction::Category }

      # @!attribute currency
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute direction
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Direction, nil]
      optional :direction, enum: -> { Lithic::ManagementOperationTransaction::Direction }

      # @!attribute events
      #
      #   @return [Array<Lithic::Models::ManagementOperationTransaction::Event>, nil]
      optional :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::ManagementOperationTransaction::Event] }

      # @!attribute external_resource
      #   External resource associated with the management operation
      #
      #   @return [Lithic::Models::ExternalResource, nil]
      optional :external_resource, -> { Lithic::ExternalResource }, nil?: true

      # @!attribute family
      #   MANAGEMENT_OPERATION - Management Operation Transaction
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Family, nil]
      optional :family, enum: -> { Lithic::ManagementOperationTransaction::Family }

      # @!attribute financial_account_token
      #
      #   @return [String, nil]
      optional :financial_account_token, String

      # @!attribute pending_amount
      #
      #   @return [Integer, nil]
      optional :pending_amount, Integer

      # @!attribute result
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Result, nil]
      optional :result, enum: -> { Lithic::ManagementOperationTransaction::Result }

      # @!attribute settled_amount
      #
      #   @return [Integer, nil]
      optional :settled_amount, Integer

      # @!attribute transaction_series
      #
      #   @return [Lithic::Models::ManagementOperationTransaction::TransactionSeries, nil]
      optional :transaction_series,
               -> {
                 Lithic::ManagementOperationTransaction::TransactionSeries
               },
               nil?: true

      # @!attribute user_defined_id
      #
      #   @return [String, nil]
      optional :user_defined_id, String, nil?: true

      # @!method initialize(token:, created:, status:, updated:, category: nil, currency: nil, direction: nil, events: nil, external_resource: nil, family: nil, financial_account_token: nil, pending_amount: nil, result: nil, settled_amount: nil, transaction_series: nil, user_defined_id: nil)
      #   @param token [String] Unique identifier for the transaction
      #
      #   @param created [Time] ISO 8601 timestamp of when the transaction was created
      #
      #   @param status [Symbol, Lithic::Models::ManagementOperationTransaction::Status] The status of the transaction
      #
      #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated
      #
      #   @param category [Symbol, Lithic::Models::ManagementOperationTransaction::Category]
      #
      #   @param currency [String]
      #
      #   @param direction [Symbol, Lithic::Models::ManagementOperationTransaction::Direction]
      #
      #   @param events [Array<Lithic::Models::ManagementOperationTransaction::Event>]
      #
      #   @param external_resource [Lithic::Models::ExternalResource, nil] External resource associated with the management operation
      #
      #   @param family [Symbol, Lithic::Models::ManagementOperationTransaction::Family] MANAGEMENT_OPERATION - Management Operation Transaction
      #
      #   @param financial_account_token [String]
      #
      #   @param pending_amount [Integer]
      #
      #   @param result [Symbol, Lithic::Models::ManagementOperationTransaction::Result]
      #
      #   @param settled_amount [Integer]
      #
      #   @param transaction_series [Lithic::Models::ManagementOperationTransaction::TransactionSeries, nil]
      #
      #   @param user_defined_id [String, nil]

      # The status of the transaction
      #
      # @see Lithic::Models::ManagementOperationTransaction#status
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

      # @see Lithic::Models::ManagementOperationTransaction#category
      module Category
        extend Lithic::Internal::Type::Enum

        MANAGEMENT_FEE = :MANAGEMENT_FEE
        MANAGEMENT_DISPUTE = :MANAGEMENT_DISPUTE
        MANAGEMENT_REWARD = :MANAGEMENT_REWARD
        MANAGEMENT_ADJUSTMENT = :MANAGEMENT_ADJUSTMENT
        MANAGEMENT_DISBURSEMENT = :MANAGEMENT_DISBURSEMENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::ManagementOperationTransaction#direction
      module Direction
        extend Lithic::Internal::Type::Enum

        CREDIT = :CREDIT
        DEBIT = :DEBIT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Event < Lithic::Internal::Type::BaseModel
        # @!attribute token
        #
        #   @return [String]
        required :token, String

        # @!attribute amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute created
        #
        #   @return [Time]
        required :created, Time

        # @!attribute detailed_results
        #
        #   @return [Array<Symbol, Lithic::Models::ManagementOperationTransaction::Event::DetailedResult>]
        required :detailed_results,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::ManagementOperationTransaction::Event::DetailedResult] }

        # @!attribute effective_date
        #
        #   @return [Date]
        required :effective_date, Date

        # @!attribute memo
        #
        #   @return [String]
        required :memo, String

        # @!attribute result
        #
        #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Event::Result]
        required :result, enum: -> { Lithic::ManagementOperationTransaction::Event::Result }

        # @!attribute type
        #
        #   @return [Symbol, Lithic::Models::ManagementOperationTransaction::Event::Type]
        required :type, enum: -> { Lithic::ManagementOperationTransaction::Event::Type }

        # @!attribute subtype
        #
        #   @return [String, nil]
        optional :subtype, String, nil?: true

        # @!method initialize(token:, amount:, created:, detailed_results:, effective_date:, memo:, result:, type:, subtype: nil)
        #   @param token [String]
        #   @param amount [Integer]
        #   @param created [Time]
        #   @param detailed_results [Array<Symbol, Lithic::Models::ManagementOperationTransaction::Event::DetailedResult>]
        #   @param effective_date [Date]
        #   @param memo [String]
        #   @param result [Symbol, Lithic::Models::ManagementOperationTransaction::Event::Result]
        #   @param type [Symbol, Lithic::Models::ManagementOperationTransaction::Event::Type]
        #   @param subtype [String, nil]

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          INSUFFICIENT_FUNDS = :INSUFFICIENT_FUNDS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::ManagementOperationTransaction::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::Models::ManagementOperationTransaction::Event#type
        module Type
          extend Lithic::Internal::Type::Enum

          LOSS_WRITE_OFF = :LOSS_WRITE_OFF
          CASH_BACK = :CASH_BACK
          CASH_BACK_REVERSAL = :CASH_BACK_REVERSAL
          CURRENCY_CONVERSION = :CURRENCY_CONVERSION
          CURRENCY_CONVERSION_REVERSAL = :CURRENCY_CONVERSION_REVERSAL
          INTEREST = :INTEREST
          INTEREST_REVERSAL = :INTEREST_REVERSAL
          LATE_PAYMENT = :LATE_PAYMENT
          LATE_PAYMENT_REVERSAL = :LATE_PAYMENT_REVERSAL
          BILLING_ERROR = :BILLING_ERROR
          BILLING_ERROR_REVERSAL = :BILLING_ERROR_REVERSAL
          PROVISIONAL_CREDIT = :PROVISIONAL_CREDIT
          PROVISIONAL_CREDIT_REVERSAL = :PROVISIONAL_CREDIT_REVERSAL
          RETURNED_PAYMENT = :RETURNED_PAYMENT
          RETURNED_PAYMENT_REVERSAL = :RETURNED_PAYMENT_REVERSAL
          DISPUTE_WON = :DISPUTE_WON
          DISPUTE_WON_REVERSAL = :DISPUTE_WON_REVERSAL
          DISBURSE = :DISBURSE
          DISBURSE_REVERSAL = :DISBURSE_REVERSAL
          ANNUAL = :ANNUAL
          ANNUAL_REVERSAL = :ANNUAL_REVERSAL
          QUARTERLY = :QUARTERLY
          QUARTERLY_REVERSAL = :QUARTERLY_REVERSAL
          MONTHLY = :MONTHLY
          MONTHLY_REVERSAL = :MONTHLY_REVERSAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # MANAGEMENT_OPERATION - Management Operation Transaction
      #
      # @see Lithic::Models::ManagementOperationTransaction#family
      module Family
        extend Lithic::Internal::Type::Enum

        MANAGEMENT_OPERATION = :MANAGEMENT_OPERATION

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::ManagementOperationTransaction#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::Models::ManagementOperationTransaction#transaction_series
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
  end
end
