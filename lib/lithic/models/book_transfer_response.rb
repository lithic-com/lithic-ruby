# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::BookTransfers#create
    class BookTransferResponse < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Customer-provided token that will serve as an idempotency token. This token will
      #   become the transaction token.
      #
      #   @return [String]
      required :token, String

      # @!attribute category
      #   Category of the book transfer
      #
      #   @return [Symbol, Lithic::Models::BookTransferResponse::Category]
      required :category, enum: -> { Lithic::Models::BookTransferResponse::Category }

      # @!attribute created
      #   Date and time when the transfer occurred. UTC time zone.
      #
      #   @return [Time]
      required :created, Time

      # @!attribute currency
      #   3-character alphabetic ISO 4217 code for the settling currency of the
      #   transaction.
      #
      #   @return [String]
      required :currency, String

      # @!attribute events
      #   A list of all financial events that have modified this transfer.
      #
      #   @return [Array<Lithic::Models::BookTransferResponse::Event>]
      required :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::Models::BookTransferResponse::Event] }

      # @!attribute from_financial_account_token
      #   Globally unique identifier for the financial account or card that will send the
      #   funds. Accepted type dependent on the program's use case.
      #
      #   @return [String]
      required :from_financial_account_token, String

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
      #   @return [Symbol, Lithic::Models::BookTransferResponse::Result]
      required :result, enum: -> { Lithic::Models::BookTransferResponse::Result }

      # @!attribute settled_amount
      #   Amount of the transaction that has been settled in the currency's smallest unit
      #   (e.g., cents).
      #
      #   @return [Integer]
      required :settled_amount, Integer

      # @!attribute status
      #   Status types: _ `DECLINED` - The transfer was declined. _ `REVERSED` - The
      #   transfer was reversed \* `SETTLED` - The transfer is completed.
      #
      #   @return [Symbol, Lithic::Models::BookTransferResponse::Status]
      required :status, enum: -> { Lithic::Models::BookTransferResponse::Status }

      # @!attribute to_financial_account_token
      #   Globally unique identifier for the financial account or card that will receive
      #   the funds. Accepted type dependent on the program's use case.
      #
      #   @return [Object]
      required :to_financial_account_token, Lithic::Internal::Type::Unknown

      # @!attribute updated
      #   Date and time when the financial transaction was last updated. UTC time zone.
      #
      #   @return [Time]
      required :updated, Time

      # @!method initialize(token:, category:, created:, currency:, events:, from_financial_account_token:, pending_amount:, result:, settled_amount:, status:, to_financial_account_token:, updated:)
      #   @param token [String]
      #   @param category [Symbol, Lithic::Models::BookTransferResponse::Category]
      #   @param created [Time]
      #   @param currency [String]
      #   @param events [Array<Lithic::Models::BookTransferResponse::Event>]
      #   @param from_financial_account_token [String]
      #   @param pending_amount [Integer]
      #   @param result [Symbol, Lithic::Models::BookTransferResponse::Result]
      #   @param settled_amount [Integer]
      #   @param status [Symbol, Lithic::Models::BookTransferResponse::Status]
      #   @param to_financial_account_token [Object]
      #   @param updated [Time]

      # Category of the book transfer
      #
      # @see Lithic::Models::BookTransferResponse#category
      module Category
        extend Lithic::Internal::Type::Enum

        ADJUSTMENT = :ADJUSTMENT
        BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
        DERECOGNITION = :DERECOGNITION
        DISPUTE = :DISPUTE
        FEE = :FEE
        REWARD = :REWARD
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
        #   Detailed Results
        #
        #   @return [Array<Symbol, Lithic::Models::BookTransferResponse::Event::DetailedResult>]
        required :detailed_results,
                 -> { Lithic::Internal::Type::ArrayOf[enum: Lithic::Models::BookTransferResponse::Event::DetailedResult] }

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
        required :result, enum: -> { Lithic::Models::BookTransferResponse::Event::Result }

        # @!attribute subtype
        #   The program specific subtype code for the specified category/type.
        #
        #   @return [String]
        required :subtype, String

        # @!attribute type
        #   Type of the book transfer
        #
        #   @return [String]
        required :type, String

        # @!method initialize(token:, amount:, created:, detailed_results:, memo:, result:, subtype:, type:)
        #   @param token [String]
        #   @param amount [Integer]
        #   @param created [Time]
        #   @param detailed_results [Array<Symbol, Lithic::Models::BookTransferResponse::Event::DetailedResult>]
        #   @param memo [String]
        #   @param result [Symbol, Lithic::Models::BookTransferResponse::Event::Result]
        #   @param subtype [String]
        #   @param type [String]

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
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      #
      # @see Lithic::Models::BookTransferResponse#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status types: _ `DECLINED` - The transfer was declined. _ `REVERSED` - The
      # transfer was reversed \* `SETTLED` - The transfer is completed.
      #
      # @see Lithic::Models::BookTransferResponse#status
      module Status
        extend Lithic::Internal::Type::Enum

        DECLINED = :DECLINED
        REVERSED = :REVERSED
        SETTLED = :SETTLED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
