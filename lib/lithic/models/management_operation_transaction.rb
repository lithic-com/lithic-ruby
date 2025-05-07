# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ManagementOperations#create
    class ManagementOperationTransaction < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String]
      required :token, String

      # @!attribute category
      #
      #   @return [Symbol, Lithic::ManagementOperationTransaction::Category]
      required :category, enum: -> { Lithic::ManagementOperationTransaction::Category }

      # @!attribute created
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!attribute direction
      #
      #   @return [Symbol, Lithic::ManagementOperationTransaction::Direction]
      required :direction, enum: -> { Lithic::ManagementOperationTransaction::Direction }

      # @!attribute events
      #
      #   @return [Array<Lithic::ManagementOperationTransaction::Event>]
      required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::ManagementOperationTransaction::Event] }

      # @!attribute financial_account_token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute pending_amount
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute result
      #
      #   @return [Symbol, Lithic::ManagementOperationTransaction::Result]
      required :result, enum: -> { Lithic::ManagementOperationTransaction::Result }

      # @!attribute settled_amount
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #
      #   @return [Symbol, Lithic::ManagementOperationTransaction::Status]
      required :status, enum: -> { Lithic::ManagementOperationTransaction::Status }

      # @!attribute transaction_series
      #
      #   @return [Lithic::ManagementOperationTransaction::TransactionSeries, nil]
      required :transaction_series,
               -> {
                 Lithic::ManagementOperationTransaction::TransactionSeries
               },
               nil?: true

      # @!attribute updated
      #
      #   @return [Time]
      required :updated, Time

      # @!attribute user_defined_id
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!method initialize(token:, category:, created:, currency:, direction:, events:, financial_account_token:, pending_amount:, result:, settled_amount:, status:, transaction_series:, updated:, user_defined_id: nil)
      #   @param token [String]
      #   @param category [Symbol, Lithic::ManagementOperationTransaction::Category]
      #   @param created [Time]
      #   @param currency [String]
      #   @param direction [Symbol, Lithic::ManagementOperationTransaction::Direction]
      #   @param events [Array<Lithic::ManagementOperationTransaction::Event>]
      #   @param financial_account_token [String]
      #   @param pending_amount [Integer]
      #   @param result [Symbol, Lithic::ManagementOperationTransaction::Result]
      #   @param settled_amount [Integer]
      #   @param status [Symbol, Lithic::ManagementOperationTransaction::Status]
      #   @param transaction_series [Lithic::ManagementOperationTransaction::TransactionSeries, nil]
      #   @param updated [Time]
      #   @param user_defined_id [String]

      # @see Lithic::ManagementOperationTransaction#category
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

      # @see Lithic::ManagementOperationTransaction#direction
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
        #   @return [Array<Symbol, Lithic::ManagementOperationTransaction::Event::DetailedResult>]
        required :detailed_results,
                 -> {
                   Lithic::Internal::Type::ArrayOf[enum: Lithic::ManagementOperationTransaction::Event::DetailedResult]
                 }

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
        #   @return [Symbol, Lithic::ManagementOperationTransaction::Event::Result]
        required :result, enum: -> { Lithic::ManagementOperationTransaction::Event::Result }

        # @!attribute type
        #
        #   @return [Symbol, Lithic::ManagementOperationTransaction::Event::Type]
        required :type, enum: -> { Lithic::ManagementOperationTransaction::Event::Type }

        # @!attribute subtype
        #
        #   @return [String, nil]
        optional :subtype, String

        # @!method initialize(token:, amount:, created:, detailed_results:, effective_date:, memo:, result:, type:, subtype: nil)
        #   @param token [String]
        #   @param amount [Integer]
        #   @param created [Time]
        #   @param detailed_results [Array<Symbol, Lithic::ManagementOperationTransaction::Event::DetailedResult>]
        #   @param effective_date [Date]
        #   @param memo [String]
        #   @param result [Symbol, Lithic::ManagementOperationTransaction::Event::Result]
        #   @param type [Symbol, Lithic::ManagementOperationTransaction::Event::Type]
        #   @param subtype [String]

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::ManagementOperationTransaction::Event#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Lithic::ManagementOperationTransaction::Event#type
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

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Lithic::ManagementOperationTransaction#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Lithic::ManagementOperationTransaction#status
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

      # @see Lithic::ManagementOperationTransaction#transaction_series
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
