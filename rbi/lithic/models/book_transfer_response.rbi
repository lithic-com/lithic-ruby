# typed: strong

module Lithic
  module Models
    class BookTransferResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::BookTransferResponse, Lithic::Internal::AnyHash)
        end

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

      # External ID defined by the customer
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # External resource associated with the management operation
      sig { returns(T.nilable(Lithic::ExternalResource)) }
      attr_reader :external_resource

      sig do
        params(
          external_resource: T.nilable(Lithic::ExternalResource::OrHash)
        ).void
      end
      attr_writer :external_resource

      # Globally unique identifier for the financial account or card that will send the
      # funds. Accepted type dependent on the program's use case.
      sig { returns(String) }
      attr_accessor :from_financial_account_token

      # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
      # including any acquirer fees.
      #
      # The value of this field will go to zero over time once the financial transaction
      # is settled.
      sig { returns(Integer) }
      attr_accessor :pending_amount

      sig { returns(Lithic::BookTransferResponse::Result::TaggedSymbol) }
      attr_accessor :result

      # Amount of the transaction that has been settled in the currency's smallest unit
      # (e.g., cents).
      sig { returns(Integer) }
      attr_accessor :settled_amount

      # Status types:
      #
      # - `DECLINED` - The transfer was declined.
      # - `REVERSED` - The transfer was reversed
      # - `SETTLED` - The transfer is completed.
      sig { returns(Lithic::BookTransferResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # Globally unique identifier for the financial account or card that will receive
      # the funds. Accepted type dependent on the program's use case.
      sig { returns(String) }
      attr_accessor :to_financial_account_token

      # A series of transactions that are grouped together.
      sig do
        returns(T.nilable(Lithic::BookTransferResponse::TransactionSeries))
      end
      attr_reader :transaction_series

      sig do
        params(
          transaction_series:
            T.nilable(Lithic::BookTransferResponse::TransactionSeries::OrHash)
        ).void
      end
      attr_writer :transaction_series

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
          external_id: T.nilable(String),
          external_resource: T.nilable(Lithic::ExternalResource::OrHash),
          from_financial_account_token: String,
          pending_amount: Integer,
          result: Lithic::BookTransferResponse::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::BookTransferResponse::Status::OrSymbol,
          to_financial_account_token: String,
          transaction_series:
            T.nilable(Lithic::BookTransferResponse::TransactionSeries::OrHash),
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
        # External ID defined by the customer
        external_id:,
        # External resource associated with the management operation
        external_resource:,
        # Globally unique identifier for the financial account or card that will send the
        # funds. Accepted type dependent on the program's use case.
        from_financial_account_token:,
        # Pending amount of the transaction in the currency's smallest unit (e.g., cents),
        # including any acquirer fees.
        #
        # The value of this field will go to zero over time once the financial transaction
        # is settled.
        pending_amount:,
        result:,
        # Amount of the transaction that has been settled in the currency's smallest unit
        # (e.g., cents).
        settled_amount:,
        # Status types:
        #
        # - `DECLINED` - The transfer was declined.
        # - `REVERSED` - The transfer was reversed
        # - `SETTLED` - The transfer is completed.
        status:,
        # Globally unique identifier for the financial account or card that will receive
        # the funds. Accepted type dependent on the program's use case.
        to_financial_account_token:,
        # A series of transactions that are grouped together.
        transaction_series:,
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
            external_id: T.nilable(String),
            external_resource: T.nilable(Lithic::ExternalResource),
            from_financial_account_token: String,
            pending_amount: Integer,
            result: Lithic::BookTransferResponse::Result::TaggedSymbol,
            settled_amount: Integer,
            status: Lithic::BookTransferResponse::Status::TaggedSymbol,
            to_financial_account_token: String,
            transaction_series:
              T.nilable(Lithic::BookTransferResponse::TransactionSeries),
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
        OrHash =
          T.type_alias do
            T.any(
              Lithic::BookTransferResponse::Event,
              Lithic::Internal::AnyHash
            )
          end

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

        sig do
          returns(
            Lithic::BookTransferResponse::Event::DetailedResults::TaggedSymbol
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
        sig { returns(Lithic::BookTransferResponse::Event::Type::TaggedSymbol) }
        attr_accessor :type

        # Book transfer Event
        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            detailed_results:
              Lithic::BookTransferResponse::Event::DetailedResults::OrSymbol,
            memo: String,
            result: Lithic::BookTransferResponse::Event::Result::OrSymbol,
            subtype: String,
            type: Lithic::BookTransferResponse::Event::Type::OrSymbol
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
                Lithic::BookTransferResponse::Event::DetailedResults::TaggedSymbol,
              memo: String,
              result: Lithic::BookTransferResponse::Event::Result::TaggedSymbol,
              subtype: String,
              type: Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module DetailedResults
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::BookTransferResponse::Event::DetailedResults
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::BookTransferResponse::Event::DetailedResults::TaggedSymbol
            )
          FUNDS_INSUFFICIENT =
            T.let(
              :FUNDS_INSUFFICIENT,
              Lithic::BookTransferResponse::Event::DetailedResults::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::BookTransferResponse::Event::DetailedResults::TaggedSymbol
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

        # Type of the book transfer
        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::BookTransferResponse::Event::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ATM_WITHDRAWAL =
            T.let(
              :ATM_WITHDRAWAL,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          ATM_DECLINE =
            T.let(
              :ATM_DECLINE,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          INTERNATIONAL_ATM_WITHDRAWAL =
            T.let(
              :INTERNATIONAL_ATM_WITHDRAWAL,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          INACTIVITY =
            T.let(
              :INACTIVITY,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          STATEMENT =
            T.let(
              :STATEMENT,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :MONTHLY,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          CUSTOMER_SERVICE =
            T.let(
              :CUSTOMER_SERVICE,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          ACCOUNT_MAINTENANCE =
            T.let(
              :ACCOUNT_MAINTENANCE,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          ACCOUNT_ACTIVATION =
            T.let(
              :ACCOUNT_ACTIVATION,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          ACCOUNT_CLOSURE =
            T.let(
              :ACCOUNT_CLOSURE,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          CARD_REPLACEMENT =
            T.let(
              :CARD_REPLACEMENT,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          CARD_DELIVERY =
            T.let(
              :CARD_DELIVERY,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          CARD_CREATE =
            T.let(
              :CARD_CREATE,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          CURRENCY_CONVERSION =
            T.let(
              :CURRENCY_CONVERSION,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          INTEREST =
            T.let(
              :INTEREST,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          LATE_PAYMENT =
            T.let(
              :LATE_PAYMENT,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          BILL_PAYMENT =
            T.let(
              :BILL_PAYMENT,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          CASH_BACK =
            T.let(
              :CASH_BACK,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          ACCOUNT_TO_ACCOUNT =
            T.let(
              :ACCOUNT_TO_ACCOUNT,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          CARD_TO_CARD =
            T.let(
              :CARD_TO_CARD,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          DISBURSE =
            T.let(
              :DISBURSE,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          BILLING_ERROR =
            T.let(
              :BILLING_ERROR,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          LOSS_WRITE_OFF =
            T.let(
              :LOSS_WRITE_OFF,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          EXPIRED_CARD =
            T.let(
              :EXPIRED_CARD,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          EARLY_DERECOGNITION =
            T.let(
              :EARLY_DERECOGNITION,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          ESCHEATMENT =
            T.let(
              :ESCHEATMENT,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          INACTIVITY_FEE_DOWN =
            T.let(
              :INACTIVITY_FEE_DOWN,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          PROVISIONAL_CREDIT =
            T.let(
              :PROVISIONAL_CREDIT,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          DISPUTE_WON =
            T.let(
              :DISPUTE_WON,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          SERVICE =
            T.let(
              :SERVICE,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )
          TRANSFER =
            T.let(
              :TRANSFER,
              Lithic::BookTransferResponse::Event::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Lithic::BookTransferResponse::Event::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

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

      # Status types:
      #
      # - `DECLINED` - The transfer was declined.
      # - `REVERSED` - The transfer was reversed
      # - `SETTLED` - The transfer is completed.
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

      class TransactionSeries < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::BookTransferResponse::TransactionSeries,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :related_transaction_event_token

        sig { returns(T.nilable(String)) }
        attr_accessor :related_transaction_token

        sig { returns(String) }
        attr_accessor :type

        # A series of transactions that are grouped together.
        sig do
          params(
            related_transaction_event_token: T.nilable(String),
            related_transaction_token: T.nilable(String),
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          related_transaction_event_token:,
          related_transaction_token:,
          type:
        )
        end

        sig do
          override.returns(
            {
              related_transaction_event_token: T.nilable(String),
              related_transaction_token: T.nilable(String),
              type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
