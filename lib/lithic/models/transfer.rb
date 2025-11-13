# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Transfers#create
    class Transfer < Lithic::Internal::Type::BaseModel
      # @!attribute token
      #   Globally unique identifier for the transfer event.
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute category
      #   Status types:
      #
      #   - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #     program.
      #
      #   @return [Symbol, Lithic::Models::Transfer::Category, nil]
      optional :category, enum: -> { Lithic::Transfer::Category }

      # @!attribute created
      #   Date and time when the transfer occurred. UTC time zone.
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!attribute currency
      #   3-character alphabetic ISO 4217 code for the settling currency of the
      #   transaction.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute descriptor
      #   A string that provides a description of the transfer; may be useful to display
      #   to users.
      #
      #   @return [String, nil]
      optional :descriptor, String

      # @!attribute events
      #   A list of all financial events that have modified this trasnfer.
      #
      #   @return [Array<Lithic::Models::FinancialEvent>, nil]
      optional :events, -> { Lithic::Internal::Type::ArrayOf[Lithic::FinancialEvent] }

      # @!attribute from_balance
      #   The updated balance of the sending financial account.
      #
      #   @return [Array<Lithic::Models::Balance>, nil]
      optional :from_balance, -> { Lithic::Internal::Type::ArrayOf[Lithic::Balance] }

      # @!attribute pending_amount
      #   Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #   including any acquirer fees. The value of this field will go to zero over time
      #   once the financial transaction is settled.
      #
      #   @return [Integer, nil]
      optional :pending_amount, Integer

      # @!attribute result
      #   APPROVED transactions were successful while DECLINED transactions were declined
      #   by user, Lithic, or the network.
      #
      #   @return [Symbol, Lithic::Models::Transfer::Result, nil]
      optional :result, enum: -> { Lithic::Transfer::Result }

      # @!attribute settled_amount
      #   Amount of the transaction that has been settled in the currency's smallest unit
      #   (e.g., cents).
      #
      #   @return [Integer, nil]
      optional :settled_amount, Integer

      # @!attribute status
      #   Status types:
      #
      #   - `DECLINED` - The transfer was declined.
      #   - `EXPIRED` - The transfer was held in pending for too long and expired.
      #   - `PENDING` - The transfer is pending release from a hold.
      #   - `SETTLED` - The transfer is completed.
      #   - `VOIDED` - The transfer was reversed before it settled.
      #
      #   @return [Symbol, Lithic::Models::Transfer::Status, nil]
      optional :status, enum: -> { Lithic::Transfer::Status }

      # @!attribute to_balance
      #   The updated balance of the receiving financial account.
      #
      #   @return [Array<Lithic::Models::Balance>, nil]
      optional :to_balance, -> { Lithic::Internal::Type::ArrayOf[Lithic::Balance] }

      # @!attribute updated
      #   Date and time when the financial transaction was last updated. UTC time zone.
      #
      #   @return [Time, nil]
      optional :updated, Time

      # @!method initialize(token: nil, category: nil, created: nil, currency: nil, descriptor: nil, events: nil, from_balance: nil, pending_amount: nil, result: nil, settled_amount: nil, status: nil, to_balance: nil, updated: nil)
      #   Some parameter documentations has been truncated, see {Lithic::Models::Transfer}
      #   for more details.
      #
      #   @param token [String] Globally unique identifier for the transfer event.
      #
      #   @param category [Symbol, Lithic::Models::Transfer::Category] Status types:
      #
      #   @param created [Time] Date and time when the transfer occurred. UTC time zone.
      #
      #   @param currency [String] 3-character alphabetic ISO 4217 code for the settling currency of the transactio
      #
      #   @param descriptor [String] A string that provides a description of the transfer; may be useful to display t
      #
      #   @param events [Array<Lithic::Models::FinancialEvent>] A list of all financial events that have modified this trasnfer.
      #
      #   @param from_balance [Array<Lithic::Models::Balance>] The updated balance of the sending financial account.
      #
      #   @param pending_amount [Integer] Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #
      #   @param result [Symbol, Lithic::Models::Transfer::Result] APPROVED transactions were successful while DECLINED transactions were declined
      #
      #   @param settled_amount [Integer] Amount of the transaction that has been settled in the currency's smallest unit
      #
      #   @param status [Symbol, Lithic::Models::Transfer::Status] Status types:
      #
      #   @param to_balance [Array<Lithic::Models::Balance>] The updated balance of the receiving financial account.
      #
      #   @param updated [Time] Date and time when the financial transaction was last updated. UTC time zone.

      # Status types:
      #
      # - `TRANSFER` - Internal transfer of funds between financial accounts in your
      #   program.
      #
      # @see Lithic::Models::Transfer#category
      module Category
        extend Lithic::Internal::Type::Enum

        TRANSFER = :TRANSFER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      #
      # @see Lithic::Models::Transfer#result
      module Result
        extend Lithic::Internal::Type::Enum

        APPROVED = :APPROVED
        DECLINED = :DECLINED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status types:
      #
      # - `DECLINED` - The transfer was declined.
      # - `EXPIRED` - The transfer was held in pending for too long and expired.
      # - `PENDING` - The transfer is pending release from a hold.
      # - `SETTLED` - The transfer is completed.
      # - `VOIDED` - The transfer was reversed before it settled.
      #
      # @see Lithic::Models::Transfer#status
      module Status
        extend Lithic::Internal::Type::Enum

        DECLINED = :DECLINED
        EXPIRED = :EXPIRED
        PENDING = :PENDING
        SETTLED = :SETTLED
        VOIDED = :VOIDED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
