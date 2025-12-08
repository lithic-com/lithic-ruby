# frozen_string_literal: true

module Lithic
  module Models
    # Response containing multiple transaction types. The `family` field determines
    # which transaction type is returned: INTERNAL returns FinancialTransaction,
    # TRANSFER returns BookTransferTransaction, CARD returns CardTransaction, PAYMENT
    # returns PaymentTransaction, EXTERNAL_PAYMENT returns ExternalPaymentResponse,
    # and MANAGEMENT_OPERATION returns ManagementOperationTransaction
    #
    # @see Lithic::Resources::AccountActivity#retrieve_transaction
    module AccountActivityRetrieveTransactionResponse
      extend Lithic::Internal::Type::Union

      discriminator :family

      # Financial transaction with inheritance from unified base transaction
      variant :INTERNAL, -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal }

      # Book transfer transaction
      variant :TRANSFER, -> { Lithic::BookTransferResponse }

      # Card transaction with ledger base properties
      variant :CARD, -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::Card }

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
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category]
        required :category,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category }

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
        #   @return [Array<Lithic::Models::FinancialEvent>]
        required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::FinancialEvent] }

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
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Result]
        required :result,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Result }

        # @!attribute settled_amount
        #   Settled amount in cents
        #
        #   @return [Integer]
        required :settled_amount, Integer

        # @!attribute status
        #   The status of the transaction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status]
        required :status,
                 enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status }

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
        #   @param category [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Category] Transaction category
        #
        #   @param created [Time] ISO 8601 timestamp of when the transaction was created
        #
        #   @param currency [String] Currency of the transaction, represented in ISO 4217 format
        #
        #   @param descriptor [String] Transaction descriptor
        #
        #   @param events [Array<Lithic::Models::FinancialEvent>] List of transaction events
        #
        #   @param financial_account_token [String] Financial account token associated with the transaction
        #
        #   @param pending_amount [Integer] Pending amount in cents
        #
        #   @param result [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Result] Transaction result
        #
        #   @param settled_amount [Integer] Settled amount in cents
        #
        #   @param status [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal::Status] The status of the transaction
        #
        #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated
        #
        #   @param family [Symbol, :INTERNAL] INTERNAL - Financial Transaction

        # Transaction category
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal#category
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
          EXTERNAL_FEDNOW = :EXTERNAL_FEDNOW
          EXTERNAL_RTP = :EXTERNAL_RTP
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

        # Transaction result
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal#result
        module Result
          extend Lithic::Internal::Type::Enum

          APPROVED = :APPROVED
          DECLINED = :DECLINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the transaction
        #
        # @see Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal#status
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
      end

      class Card < Lithic::Models::Transaction
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
        #   CARD - Card Transaction
        #
        #   @return [Symbol, :CARD]
        required :family, const: :CARD

        # @!attribute status
        #   The status of the transaction
        #
        #   @return [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status]
        required :status, enum: -> { Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status }

        # @!attribute updated
        #   ISO 8601 timestamp of when the transaction was last updated
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(token:, created:, status:, updated:, family: :CARD)
        #   Card transaction with ledger base properties
        #
        #   @param token [String] Unique identifier for the transaction
        #
        #   @param created [Time] ISO 8601 timestamp of when the transaction was created
        #
        #   @param status [Symbol, Lithic::Models::AccountActivityRetrieveTransactionResponse::Card::Status] The status of the transaction
        #
        #   @param updated [Time] ISO 8601 timestamp of when the transaction was last updated
        #
        #   @param family [Symbol, :CARD] CARD - Card Transaction

        # The status of the transaction
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
      end

      # @!method self.variants
      #   @return [Array(Lithic::Models::AccountActivityRetrieveTransactionResponse::Internal, Lithic::Models::BookTransferResponse, Lithic::Models::AccountActivityRetrieveTransactionResponse::Card, Lithic::Models::Payment, Lithic::Models::ExternalPayment, Lithic::Models::ManagementOperationTransaction)]
    end
  end
end
