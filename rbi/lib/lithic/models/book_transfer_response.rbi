# typed: strong

module Lithic
  module Models
    class BookTransferResponse < Lithic::Internal::Type::BaseModel
      # Customer-provided token that will serve as an idempotency token. This token will
      # become the transaction token.
      sig { returns(String) }
      attr_accessor :token

      # Category of the book transfer
      sig { returns(Lithic::Models::BookTransferResponse::Category::TaggedSymbol) }
      attr_accessor :category

      # Date and time when the transfer occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created

      # 3-character alphabetic ISO 4217 code for the settling currency of the
      # transaction.
      sig { returns(String) }
      attr_accessor :currency

      # A list of all financial events that have modified this transfer.
      sig { returns(T::Array[Lithic::Models::BookTransferResponse::Event]) }
      attr_accessor :events

      # Globally unique identifier for the financial account or card that will send the
      # funds. Accepted type dependent on the program's use case.
      sig { returns(String) }
      attr_accessor :from_financial_account_token

      # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      # including any acquirer fees. The value of this field will go to zero over time
      # once the financial transaction is settled.
      sig { returns(Integer) }
      attr_accessor :pending_amount

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      sig { returns(Lithic::Models::BookTransferResponse::Result::TaggedSymbol) }
      attr_accessor :result

      # Amount of the transaction that has been settled in the currency's smallest unit
      # (e.g., cents).
      sig { returns(Integer) }
      attr_accessor :settled_amount

      # Status types: _ `DECLINED` - The transfer was declined. _ `REVERSED` - The
      # transfer was reversed \* `SETTLED` - The transfer is completed.
      sig { returns(Lithic::Models::BookTransferResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # Globally unique identifier for the financial account or card that will receive
      # the funds. Accepted type dependent on the program's use case.
      sig { returns(T.anything) }
      attr_accessor :to_financial_account_token

      # Date and time when the financial transaction was last updated. UTC time zone.
      sig { returns(Time) }
      attr_accessor :updated

      sig do
        params(
          token: String,
          category: Lithic::Models::BookTransferResponse::Category::OrSymbol,
          created: Time,
          currency: String,
          events: T::Array[T.any(Lithic::Models::BookTransferResponse::Event, Lithic::Internal::AnyHash)],
          from_financial_account_token: String,
          pending_amount: Integer,
          result: Lithic::Models::BookTransferResponse::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::Models::BookTransferResponse::Status::OrSymbol,
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
      ); end
      sig do
        override
          .returns(
            {
              token: String,
              category: Lithic::Models::BookTransferResponse::Category::TaggedSymbol,
              created: Time,
              currency: String,
              events: T::Array[Lithic::Models::BookTransferResponse::Event],
              from_financial_account_token: String,
              pending_amount: Integer,
              result: Lithic::Models::BookTransferResponse::Result::TaggedSymbol,
              settled_amount: Integer,
              status: Lithic::Models::BookTransferResponse::Status::TaggedSymbol,
              to_financial_account_token: T.anything,
              updated: Time
            }
          )
      end
      def to_hash; end

      # Category of the book transfer
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::BookTransferResponse::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADJUSTMENT = T.let(:ADJUSTMENT, Lithic::Models::BookTransferResponse::Category::TaggedSymbol)
        BALANCE_OR_FUNDING =
          T.let(:BALANCE_OR_FUNDING, Lithic::Models::BookTransferResponse::Category::TaggedSymbol)
        DERECOGNITION = T.let(:DERECOGNITION, Lithic::Models::BookTransferResponse::Category::TaggedSymbol)
        DISPUTE = T.let(:DISPUTE, Lithic::Models::BookTransferResponse::Category::TaggedSymbol)
        FEE = T.let(:FEE, Lithic::Models::BookTransferResponse::Category::TaggedSymbol)
        REWARD = T.let(:REWARD, Lithic::Models::BookTransferResponse::Category::TaggedSymbol)
        TRANSFER = T.let(:TRANSFER, Lithic::Models::BookTransferResponse::Category::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::BookTransferResponse::Category::TaggedSymbol]) }
        def self.values; end
      end

      class Event < Lithic::Internal::Type::BaseModel
        # Globally unique identifier.
        sig { returns(String) }
        attr_accessor :token

        # Amount of the financial event that has been settled in the currency's smallest
        # unit (e.g., cents).
        sig { returns(Integer) }
        attr_accessor :amount

        # Date and time when the financial event occurred. UTC time zone.
        sig { returns(Time) }
        attr_accessor :created

        # Detailed Results
        sig { returns(T::Array[Lithic::Models::BookTransferResponse::Event::DetailedResult::TaggedSymbol]) }
        attr_accessor :detailed_results

        # Memo for the transfer.
        sig { returns(String) }
        attr_accessor :memo

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        sig { returns(Lithic::Models::BookTransferResponse::Event::Result::TaggedSymbol) }
        attr_accessor :result

        # The program specific subtype code for the specified category/type.
        sig { returns(String) }
        attr_accessor :subtype

        # Type of the book transfer
        sig { returns(String) }
        attr_accessor :type

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            detailed_results: T::Array[Lithic::Models::BookTransferResponse::Event::DetailedResult::OrSymbol],
            memo: String,
            result: Lithic::Models::BookTransferResponse::Event::Result::OrSymbol,
            subtype: String,
            type: String
          )
            .returns(T.attached_class)
        end
        def self.new(token:, amount:, created:, detailed_results:, memo:, result:, subtype:, type:); end

        sig do
          override
            .returns(
              {
                token: String,
                amount: Integer,
                created: Time,
                detailed_results: T::Array[Lithic::Models::BookTransferResponse::Event::DetailedResult::TaggedSymbol],
                memo: String,
                result: Lithic::Models::BookTransferResponse::Event::Result::TaggedSymbol,
                subtype: String,
                type: String
              }
            )
        end
        def to_hash; end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::BookTransferResponse::Event::DetailedResult) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED = T.let(:APPROVED, Lithic::Models::BookTransferResponse::Event::DetailedResult::TaggedSymbol)
          FUNDS_INSUFFICIENT =
            T.let(:FUNDS_INSUFFICIENT, Lithic::Models::BookTransferResponse::Event::DetailedResult::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::BookTransferResponse::Event::DetailedResult::TaggedSymbol]) }
          def self.values; end
        end

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::BookTransferResponse::Event::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED = T.let(:APPROVED, Lithic::Models::BookTransferResponse::Event::Result::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::BookTransferResponse::Event::Result::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::BookTransferResponse::Event::Result::TaggedSymbol]) }
          def self.values; end
        end
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::BookTransferResponse::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED = T.let(:APPROVED, Lithic::Models::BookTransferResponse::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::BookTransferResponse::Result::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::BookTransferResponse::Result::TaggedSymbol]) }
        def self.values; end
      end

      # Status types: _ `DECLINED` - The transfer was declined. _ `REVERSED` - The
      # transfer was reversed \* `SETTLED` - The transfer is completed.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::BookTransferResponse::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED = T.let(:DECLINED, Lithic::Models::BookTransferResponse::Status::TaggedSymbol)
        REVERSED = T.let(:REVERSED, Lithic::Models::BookTransferResponse::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::BookTransferResponse::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::BookTransferResponse::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
