# frozen_string_literal: true

module Lithic
  module Models
    class FinancialTransaction < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier.
      #
      #   @return [String]
      required :token, String

      # @!attribute category
      #   Status types:
      #
      #   - `CARD` - Issuing card transaction.
      #   - `ACH` - Transaction over ACH.
      #   - `INTERNAL` - Transaction for internal adjustment.
      #   - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #     program.
      #
      #   @return [Symbol, Lithic::Models::FinancialTransaction::Category]
      required :category, enum: -> { Lithic::FinancialTransaction::Category }

      # @!attribute created
      #   Date and time when the financial transaction first occurred. UTC time zone.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #   3-character alphabetic ISO 4217 code for the settling currency of the
      #   transaction.
      #
      #   @return [String]
      required :currency, String

      # @!attribute descriptor
      #   A string that provides a description of the financial transaction; may be useful
      #   to display to users.
      #
      #   @return [String]
      required :descriptor, String

      # @!attribute events
      #   A list of all financial events that have modified this financial transaction.
      #
      #   @return [Array<Lithic::Models::FinancialEvent>]
      required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::FinancialEvent] }

      # @!attribute pending_amount
      #   Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #   including any acquirer fees. The value of this field will go to zero over time
      #   once the financial transaction is settled.
      #
      #   @return [Integer]
      required :pending_amount, Integer

      # @!attribute result
      #   APPROVED transactions were successful while DECLINED transactions were declined
      #   by user, Lithic, or the network.
      #
      #   @return [Symbol, Lithic::Models::FinancialTransaction::Result]
      required :result, enum: -> { Lithic::FinancialTransaction::Result }

      # @!attribute settled_amount
      #   Amount of the transaction that has been settled in the currency's smallest unit
      #   (e.g., cents), including any acquirer fees. This may change over time.
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #   Status types:
      #
      #   - `DECLINED` - The transaction was declined.
      #   - `EXPIRED` - The authorization as it has passed its expiration time. Card
      #     transaction only.
      #   - `PENDING` - The transaction is expected to settle.
      #   - `RETURNED` - The transaction has been returned.
      #   - `SETTLED` - The transaction is completed.
      #   - `VOIDED` - The transaction was voided. Card transaction only.
      #
      #   @return [Symbol, Lithic::Models::FinancialTransaction::Status]
      required :status, enum: -> { Lithic::FinancialTransaction::Status }

      # @!attribute updated
      #   Date and time when the financial transaction was last updated. UTC time zone.
      #
      #   @return [Time]
      required :updated, Time

      # @!method initialize(token:, category:, created:, currency:, descriptor:, events:, pending_amount:, result:, settled_amount:, status:, updated:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::FinancialTransaction} for more details.
      #
      #   @param token [String] Globally unique identifier.
      #
      #   @param category [Symbol, Lithic::Models::FinancialTransaction::Category] Status types:
      #
      #   @param created [Time] Date and time when the financial transaction first occurred. UTC time zone.
      #
      #   @param currency [String] 3-character alphabetic ISO 4217 code for the settling currency of the transactio
      #
      #   @param descriptor [String] A string that provides a description of the financial transaction; may be useful
      #
      #   @param events [Array<Lithic::Models::FinancialEvent>] A list of all financial events that have modified this financial transaction.
      #
      #   @param pending_amount [Integer] Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #
      #   @param result [Symbol, Lithic::Models::FinancialTransaction::Result] APPROVED transactions were successful while DECLINED transactions were declined
      #
      #   @param settled_amount [Integer] Amount of the transaction that has been settled in the currency's smallest unit
      #
      #   @param status [Symbol, Lithic::Models::FinancialTransaction::Status] Status types:
      #
      #   @param updated [Time] Date and time when the financial transaction was last updated. UTC time zone.

      # Status types:
      #
      # - `CARD` - Issuing card transaction.
      # - `ACH` - Transaction over ACH.
      # - `INTERNAL` - Transaction for internal adjustment.
      # - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #   program.
      #
      # @see Lithic::Models::FinancialTransaction#category
      module Category
        extend Lithic::Internal::Type::Enum

        ACH = :ACH
        CARD = :CARD
        INTERNAL = :INTERNAL
        TRANSFER = :TRANSFER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      #
      # @see Lithic::Models::FinancialTransaction#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status types:
      #
      # - `DECLINED` - The transaction was declined.
      # - `EXPIRED` - The authorization as it has passed its expiration time. Card
      #   transaction only.
      # - `PENDING` - The transaction is expected to settle.
      # - `RETURNED` - The transaction has been returned.
      # - `SETTLED` - The transaction is completed.
      # - `VOIDED` - The transaction was voided. Card transaction only.
      #
      # @see Lithic::Models::FinancialTransaction#status
      module Status
        extend Lithic::Internal::Type::Enum

        DECLINED = :DECLINED
        EXPIRED = :EXPIRED
        PENDING = :PENDING
        RETURNED = :RETURNED
        SETTLED = :SETTLED
        VOIDED = :VOIDED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
