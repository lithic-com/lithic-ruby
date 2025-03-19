# typed: strong

module Lithic
  module Models
    class BookTransferResponse < Lithic::BaseModel
      # Customer-provided token that will serve as an idempotency token. This token will
      #   become the transaction token.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Category of the book transfer
      sig { returns(Symbol) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def category=(_)
      end

      # Date and time when the transfer occurred. UTC time zone.
      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      # 3-character alphabetic ISO 4217 code for the settling currency of the
      #   transaction.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # A list of all financial events that have modified this transfer.
      sig { returns(T::Array[Lithic::Models::BookTransferResponse::Event]) }
      def events
      end

      sig do
        params(_: T::Array[Lithic::Models::BookTransferResponse::Event])
          .returns(T::Array[Lithic::Models::BookTransferResponse::Event])
      end
      def events=(_)
      end

      # Globally unique identifier for the financial account or card that will send the
      #   funds. Accepted type dependent on the program's use case.
      sig { returns(String) }
      def from_financial_account_token
      end

      sig { params(_: String).returns(String) }
      def from_financial_account_token=(_)
      end

      # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      #   including any acquirer fees. The value of this field will go to zero over time
      #   once the financial transaction is settled.
      sig { returns(Integer) }
      def pending_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def pending_amount=(_)
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      #   by user, Lithic, or the network.
      sig { returns(Symbol) }
      def result
      end

      sig { params(_: Symbol).returns(Symbol) }
      def result=(_)
      end

      # Amount of the transaction that has been settled in the currency's smallest unit
      #   (e.g., cents).
      sig { returns(Integer) }
      def settled_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def settled_amount=(_)
      end

      # Status types: _ `DECLINED` - The transfer was declined. _ `REVERSED` - The
      #   transfer was reversed \* `SETTLED` - The transfer is completed.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # Globally unique identifier for the financial account or card that will receive
      #   the funds. Accepted type dependent on the program's use case.
      sig { returns(T.anything) }
      def to_financial_account_token
      end

      sig { params(_: T.anything).returns(T.anything) }
      def to_financial_account_token=(_)
      end

      # Date and time when the financial transaction was last updated. UTC time zone.
      sig { returns(Time) }
      def updated
      end

      sig { params(_: Time).returns(Time) }
      def updated=(_)
      end

      sig do
        params(
          token: String,
          category: Symbol,
          created: Time,
          currency: String,
          events: T::Array[Lithic::Models::BookTransferResponse::Event],
          from_financial_account_token: String,
          pending_amount: Integer,
          result: Symbol,
          settled_amount: Integer,
          status: Symbol,
          to_financial_account_token: T.anything,
          updated: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        token:,
        category:,
        created:,
        currency:,
        events:,
        from_financial_account_token:,
        pending_amount:,
        result:,
        settled_amount:,
        status:,
        to_financial_account_token:,
        updated:
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              category: Symbol,
              created: Time,
              currency: String,
              events: T::Array[Lithic::Models::BookTransferResponse::Event],
              from_financial_account_token: String,
              pending_amount: Integer,
              result: Symbol,
              settled_amount: Integer,
              status: Symbol,
              to_financial_account_token: T.anything,
              updated: Time
            }
          )
      end
      def to_hash
      end

      # Category of the book transfer
      class Category < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ADJUSTMENT = :ADJUSTMENT
        BALANCE_OR_FUNDING = :BALANCE_OR_FUNDING
        DERECOGNITION = :DERECOGNITION
        DISPUTE = :DISPUTE
        FEE = :FEE
        REWARD = :REWARD
        TRANSFER = :TRANSFER
      end

      class Event < Lithic::BaseModel
        # Globally unique identifier.
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        # Amount of the financial event that has been settled in the currency's smallest
        #   unit (e.g., cents).
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # Date and time when the financial event occurred. UTC time zone.
        sig { returns(Time) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        # Detailed Results
        sig { returns(T::Array[Symbol]) }
        def detailed_results
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def detailed_results=(_)
        end

        # Memo for the transfer.
        sig { returns(String) }
        def memo
        end

        sig { params(_: String).returns(String) }
        def memo=(_)
        end

        # APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        sig { returns(Symbol) }
        def result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def result=(_)
        end

        # The program specific subtype code for the specified category/type.
        sig { returns(String) }
        def subtype
        end

        sig { params(_: String).returns(String) }
        def subtype=(_)
        end

        # Type of the book transfer
        sig { returns(String) }
        def type
        end

        sig { params(_: String).returns(String) }
        def type=(_)
        end

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            detailed_results: T::Array[Symbol],
            memo: String,
            result: Symbol,
            subtype: String,
            type: String
          )
            .returns(T.attached_class)
        end
        def self.new(token:, amount:, created:, detailed_results:, memo:, result:, subtype:, type:)
        end

        sig do
          override
            .returns(
              {
                token: String,
                amount: Integer,
                created: Time,
                detailed_results: T::Array[Symbol],
                memo: String,
                result: Symbol,
                subtype: String,
                type: String
              }
            )
        end
        def to_hash
        end

        class DetailedResult < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          APPROVED = :APPROVED
          FUNDS_INSUFFICIENT = :FUNDS_INSUFFICIENT
        end

        # APPROVED financial events were successful while DECLINED financial events were
        #   declined by user, Lithic, or the network.
        class Result < Lithic::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          APPROVED = :APPROVED
          DECLINED = :DECLINED
        end
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      #   by user, Lithic, or the network.
      class Result < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        APPROVED = :APPROVED
        DECLINED = :DECLINED
      end

      # Status types: _ `DECLINED` - The transfer was declined. _ `REVERSED` - The
      #   transfer was reversed \* `SETTLED` - The transfer is completed.
      class Status < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DECLINED = :DECLINED
        REVERSED = :REVERSED
        SETTLED = :SETTLED
      end
    end
  end
end
