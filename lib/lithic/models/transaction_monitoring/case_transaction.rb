# frozen_string_literal: true

module Lithic
  module Models
    module TransactionMonitoring
      # A single transaction associated with a case. The `category` field identifies
      # whether this is a card transaction or a payment transaction.
      #
      # @see Lithic::Resources::TransactionMonitoring::Cases#list_transactions
      module CaseTransaction
        extend Lithic::Internal::Type::Union

        discriminator :category

        # A card transaction associated with a case
        variant -> { Lithic::TransactionMonitoring::CaseTransaction::CardCaseTransaction }

        # A payment (ACH) transaction associated with a case
        variant -> { Lithic::TransactionMonitoring::CaseTransaction::PaymentCaseTransaction }

        class CardCaseTransaction < Lithic::Internal::Type::BaseModel
          # @!attribute token
          #   Globally unique identifier for the card transaction
          #
          #   @return [String]
          required :token, String

          # @!attribute account_token
          #   Token of the account the transaction belongs to
          #
          #   @return [String]
          required :account_token, String

          # @!attribute added_at
          #   Date and time at which the transaction was added to the case
          #
          #   @return [Time]
          required :added_at, Time

          # @!attribute card_token
          #   Token of the card the transaction was made on
          #
          #   @return [String]
          required :card_token, String

          # @!attribute category
          #
          #   @return [Symbol, :CARD]
          required :category, const: :CARD

          # @!attribute transaction_created_at
          #   Date and time at which the transaction was created
          #
          #   @return [Time]
          required :transaction_created_at, Time

          # @!method initialize(token:, account_token:, added_at:, card_token:, transaction_created_at:, category: :CARD)
          #   A card transaction associated with a case
          #
          #   @param token [String] Globally unique identifier for the card transaction
          #
          #   @param account_token [String] Token of the account the transaction belongs to
          #
          #   @param added_at [Time] Date and time at which the transaction was added to the case
          #
          #   @param card_token [String] Token of the card the transaction was made on
          #
          #   @param transaction_created_at [Time] Date and time at which the transaction was created
          #
          #   @param category [Symbol, :CARD]
        end

        class PaymentCaseTransaction < Lithic::Internal::Type::BaseModel
          # @!attribute token
          #   Globally unique identifier for the payment transaction
          #
          #   @return [String]
          required :token, String

          # @!attribute added_at
          #   Date and time at which the transaction was added to the case
          #
          #   @return [Time]
          required :added_at, Time

          # @!attribute category
          #
          #   @return [Symbol, :PAYMENT]
          required :category, const: :PAYMENT

          # @!attribute financial_account_token
          #   Token of the financial account the payment belongs to
          #
          #   @return [String]
          required :financial_account_token, String

          # @!attribute transaction_created_at
          #   Date and time at which the transaction was created
          #
          #   @return [Time]
          required :transaction_created_at, Time

          # @!attribute account_token
          #   Token of the account the payment belongs to, if applicable
          #
          #   @return [String, nil]
          optional :account_token, String

          # @!method initialize(token:, added_at:, financial_account_token:, transaction_created_at:, account_token: nil, category: :PAYMENT)
          #   A payment (ACH) transaction associated with a case
          #
          #   @param token [String] Globally unique identifier for the payment transaction
          #
          #   @param added_at [Time] Date and time at which the transaction was added to the case
          #
          #   @param financial_account_token [String] Token of the financial account the payment belongs to
          #
          #   @param transaction_created_at [Time] Date and time at which the transaction was created
          #
          #   @param account_token [String] Token of the account the payment belongs to, if applicable
          #
          #   @param category [Symbol, :PAYMENT]
        end

        # @!method self.variants
        #   @return [Array(Lithic::Models::TransactionMonitoring::CaseTransaction::CardCaseTransaction, Lithic::Models::TransactionMonitoring::CaseTransaction::PaymentCaseTransaction)]
      end
    end
  end
end
