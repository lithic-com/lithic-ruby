# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::ManagementOperations#create
    class ManagementOperationCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute category
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationCreateParams::Category]
      required :category, enum: -> { Lithic::ManagementOperationCreateParams::Category }

      # @!attribute direction
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationCreateParams::Direction]
      required :direction, enum: -> { Lithic::ManagementOperationCreateParams::Direction }

      # @!attribute effective_date
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute event_type
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationCreateParams::EventType]
      required :event_type, enum: -> { Lithic::ManagementOperationCreateParams::EventType }

      # @!attribute financial_account_token
      #
      #   @return [String]
      required :financial_account_token, String

      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute memo
      #
      #   @return [String, nil]
      optional :memo, String

      # @!attribute on_closed_account
      #   What to do if the financial account is closed when posting an operation
      #
      #   @return [Symbol, Lithic::Models::ManagementOperationCreateParams::OnClosedAccount, nil]
      optional :on_closed_account, enum: -> { Lithic::ManagementOperationCreateParams::OnClosedAccount }

      # @!attribute subtype
      #
      #   @return [String, nil]
      optional :subtype, String

      # @!attribute user_defined_id
      #
      #   @return [String, nil]
      optional :user_defined_id, String

      # @!method initialize(amount:, category:, direction:, effective_date:, event_type:, financial_account_token:, token: nil, memo: nil, on_closed_account: nil, subtype: nil, user_defined_id: nil, request_options: {})
      #   @param amount [Integer]
      #
      #   @param category [Symbol, Lithic::Models::ManagementOperationCreateParams::Category]
      #
      #   @param direction [Symbol, Lithic::Models::ManagementOperationCreateParams::Direction]
      #
      #   @param effective_date [Date]
      #
      #   @param event_type [Symbol, Lithic::Models::ManagementOperationCreateParams::EventType]
      #
      #   @param financial_account_token [String]
      #
      #   @param token [String]
      #
      #   @param memo [String]
      #
      #   @param on_closed_account [Symbol, Lithic::Models::ManagementOperationCreateParams::OnClosedAccount] What to do if the financial account is closed when posting an operation
      #
      #   @param subtype [String]
      #
      #   @param user_defined_id [String]
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

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

      module Direction
        extend Lithic::Internal::Type::Enum

        CREDIT = :CREDIT
        DEBIT = :DEBIT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module EventType
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
