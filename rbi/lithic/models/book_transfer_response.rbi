# typed: strong

module Lithic
  module Models
    class BookTransferResponse < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # Customer-provided token that will serve as an idempotency token. This token will
      # become the transaction token.
      sig { returns(String) }
      attr_accessor :token

      # Category of the book transfer
      sig { returns(Lithic::BookTransferResponse::Category::TaggedSymbol) }
      attr_accessor :category

      # Date and time when the transfer occurred. UTC time zone.
      sig { returns(Time) }
      attr_accessor :created

      # 3-character alphabetic ISO 4217 code for the settling currency of the
      # transaction.
      sig { returns(String) }
      attr_accessor :currency

      # A list of all financial events that have modified this transfer.
      sig { returns(T::Array[Lithic::BookTransferResponse::Event]) }
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
      sig { returns(Lithic::BookTransferResponse::Result::TaggedSymbol) }
      attr_accessor :result

      # Amount of the transaction that has been settled in the currency's smallest unit
      # (e.g., cents).
      sig { returns(Integer) }
      attr_accessor :settled_amount

      # Status types: _ `DECLINED` - The transfer was declined. _ `REVERSED` - The
      # transfer was reversed \* `SETTLED` - The transfer is completed.
      sig { returns(Lithic::BookTransferResponse::Status::TaggedSymbol) }
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
          category: Lithic::BookTransferResponse::Category::OrSymbol,
          created: Time,
          currency: String,
          events: T::Array[Lithic::BookTransferResponse::Event::OrHash],
          from_financial_account_token: String,
          pending_amount: Integer,
          result: Lithic::BookTransferResponse::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::BookTransferResponse::Status::OrSymbol,
          to_financial_account_token: T.anything,
          updated: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Customer-provided token that will serve as an idempotency token. This token will
        # become the transaction token.
        token:,
        # Category of the book transfer
        category:,
        # Date and time when the transfer occurred. UTC time zone.
        created:,
        # 3-character alphabetic ISO 4217 code for the settling currency of the
        # transaction.
        currency:,
        # A list of all financial events that have modified this transfer.
        events:,
        # Globally unique identifier for the financial account or card that will send the
        # funds. Accepted type dependent on the program's use case.
        from_financial_account_token:,
        # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
        # including any acquirer fees. The value of this field will go to zero over time
        # once the financial transaction is settled.
        pending_amount:,
        # APPROVED transactions were successful while DECLINED transactions were declined
        # by user, Lithic, or the network.
        result:,
        # Amount of the transaction that has been settled in the currency's smallest unit
        # (e.g., cents).
        settled_amount:,
        # Status types: _ `DECLINED` - The transfer was declined. _ `REVERSED` - The
        # transfer was reversed \* `SETTLED` - The transfer is completed.
        status:,
        # Globally unique identifier for the financial account or card that will receive
        # the funds. Accepted type dependent on the program's use case.
        to_financial_account_token:,
        # Date and time when the financial transaction was last updated. UTC time zone.
        updated:
      )
      end

      sig do
        override.returns(
          {
            token: String,
            category: Lithic::BookTransferResponse::Category::TaggedSymbol,
            created: Time,
            currency: String,
            events: T::Array[Lithic::BookTransferResponse::Event],
            from_financial_account_token: String,
            pending_amount: Integer,
            result: Lithic::BookTransferResponse::Result::TaggedSymbol,
            settled_amount: Integer,
            status: Lithic::BookTransferResponse::Status::TaggedSymbol,
            to_financial_account_token: T.anything,
            updated: Time
          }
        )
      end
      def to_hash
      end

      # Category of the book transfer
      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::BookTransferResponse::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADJUSTMENT =
          T.let(
            :ADJUSTMENT,
            Lithic::BookTransferResponse::Category::TaggedSymbol
          )
        BALANCE_OR_FUNDING =
          T.let(
            :BALANCE_OR_FUNDING,
            Lithic::BookTransferResponse::Category::TaggedSymbol
          )
        DERECOGNITION =
          T.let(
            :DERECOGNITION,
            Lithic::BookTransferResponse::Category::TaggedSymbol
          )
        DISPUTE =
          T.let(:DISPUTE, Lithic::BookTransferResponse::Category::TaggedSymbol)
        FEE = T.let(:FEE, Lithic::BookTransferResponse::Category::TaggedSymbol)
        REWARD =
          T.let(:REWARD, Lithic::BookTransferResponse::Category::TaggedSymbol)
        TRANSFER =
          T.let(:TRANSFER, Lithic::BookTransferResponse::Category::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::BookTransferResponse::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Event < Lithic::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

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
        sig do
          returns(
            T::Array[
              Lithic::BookTransferResponse::Event::DetailedResult::TaggedSymbol
            ]
          )
        end
        attr_accessor :detailed_results

        # Memo for the transfer.
        sig { returns(String) }
        attr_accessor :memo

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        sig do
          returns(Lithic::BookTransferResponse::Event::Result::TaggedSymbol)
        end
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
            detailed_results:
              T::Array[
                Lithic::BookTransferResponse::Event::DetailedResult::OrSymbol
              ],
            memo: String,
            result: Lithic::BookTransferResponse::Event::Result::OrSymbol,
            subtype: String,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Globally unique identifier.
          token:,
          # Amount of the financial event that has been settled in the currency's smallest
          # unit (e.g., cents).
          amount:,
          # Date and time when the financial event occurred. UTC time zone.
          created:,
          # Detailed Results
          detailed_results:,
          # Memo for the transfer.
          memo:,
          # APPROVED financial events were successful while DECLINED financial events were
          # declined by user, Lithic, or the network.
          result:,
          # The program specific subtype code for the specified category/type.
          subtype:,
          # Type of the book transfer
          type:
        )
        end

        sig do
          override.returns(
            {
              token: String,
              amount: Integer,
              created: Time,
              detailed_results:
                T::Array[
                  Lithic::BookTransferResponse::Event::DetailedResult::TaggedSymbol
                ],
              memo: String,
              result: Lithic::BookTransferResponse::Event::Result::TaggedSymbol,
              subtype: String,
              type: String
            }
          )
        end
        def to_hash
        end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::BookTransferResponse::Event::DetailedResult)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::BookTransferResponse::Event::DetailedResult::TaggedSymbol
            )
          FUNDS_INSUFFICIENT =
            T.let(
              :FUNDS_INSUFFICIENT,
              Lithic::BookTransferResponse::Event::DetailedResult::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::BookTransferResponse::Event::DetailedResult::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # APPROVED financial events were successful while DECLINED financial events were
        # declined by user, Lithic, or the network.
        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::BookTransferResponse::Event::Result)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::BookTransferResponse::Event::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::BookTransferResponse::Event::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::BookTransferResponse::Event::Result::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # APPROVED transactions were successful while DECLINED transactions were declined
      # by user, Lithic, or the network.
      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::BookTransferResponse::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:APPROVED, Lithic::BookTransferResponse::Result::TaggedSymbol)
        DECLINED =
          T.let(:DECLINED, Lithic::BookTransferResponse::Result::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::BookTransferResponse::Result::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Status types: _ `DECLINED` - The transfer was declined. _ `REVERSED` - The
      # transfer was reversed \* `SETTLED` - The transfer is completed.
      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::BookTransferResponse::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DECLINED =
          T.let(:DECLINED, Lithic::BookTransferResponse::Status::TaggedSymbol)
        REVERSED =
          T.let(:REVERSED, Lithic::BookTransferResponse::Status::TaggedSymbol)
        SETTLED =
          T.let(:SETTLED, Lithic::BookTransferResponse::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::BookTransferResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
