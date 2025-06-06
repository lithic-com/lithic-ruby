# typed: strong

module Lithic
  module Models
    class ManagementOperationTransaction < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::ManagementOperationTransaction,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :token

      sig do
        returns(Lithic::ManagementOperationTransaction::Category::TaggedSymbol)
      end
      attr_accessor :category

      sig { returns(Time) }
      attr_accessor :created

      sig { returns(String) }
      attr_accessor :currency

      sig do
        returns(Lithic::ManagementOperationTransaction::Direction::TaggedSymbol)
      end
      attr_accessor :direction

      sig { returns(T::Array[Lithic::ManagementOperationTransaction::Event]) }
      attr_accessor :events

      sig { returns(String) }
      attr_accessor :financial_account_token

      sig { returns(Integer) }
      attr_accessor :pending_amount

      sig do
        returns(Lithic::ManagementOperationTransaction::Result::TaggedSymbol)
      end
      attr_accessor :result

      sig { returns(Integer) }
      attr_accessor :settled_amount

      sig do
        returns(Lithic::ManagementOperationTransaction::Status::TaggedSymbol)
      end
      attr_accessor :status

      sig do
        returns(
          T.nilable(Lithic::ManagementOperationTransaction::TransactionSeries)
        )
      end
      attr_reader :transaction_series

      sig do
        params(
          transaction_series:
            T.nilable(
              Lithic::ManagementOperationTransaction::TransactionSeries::OrHash
            )
        ).void
      end
      attr_writer :transaction_series

      sig { returns(Time) }
      attr_accessor :updated

      sig { returns(T.nilable(String)) }
      attr_reader :user_defined_id

      sig { params(user_defined_id: String).void }
      attr_writer :user_defined_id

      sig do
        params(
          token: String,
          category: Lithic::ManagementOperationTransaction::Category::OrSymbol,
          created: Time,
          currency: String,
          direction:
            Lithic::ManagementOperationTransaction::Direction::OrSymbol,
          events:
            T::Array[Lithic::ManagementOperationTransaction::Event::OrHash],
          financial_account_token: String,
          pending_amount: Integer,
          result: Lithic::ManagementOperationTransaction::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::ManagementOperationTransaction::Status::OrSymbol,
          transaction_series:
            T.nilable(
              Lithic::ManagementOperationTransaction::TransactionSeries::OrHash
            ),
          updated: Time,
          user_defined_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        token:,
        category:,
        created:,
        currency:,
        direction:,
        events:,
        financial_account_token:,
        pending_amount:,
        result:,
        settled_amount:,
        status:,
        transaction_series:,
        updated:,
        user_defined_id: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            category:
              Lithic::ManagementOperationTransaction::Category::TaggedSymbol,
            created: Time,
            currency: String,
            direction:
              Lithic::ManagementOperationTransaction::Direction::TaggedSymbol,
            events: T::Array[Lithic::ManagementOperationTransaction::Event],
            financial_account_token: String,
            pending_amount: Integer,
            result:
              Lithic::ManagementOperationTransaction::Result::TaggedSymbol,
            settled_amount: Integer,
            status:
              Lithic::ManagementOperationTransaction::Status::TaggedSymbol,
            transaction_series:
              T.nilable(
                Lithic::ManagementOperationTransaction::TransactionSeries
              ),
            updated: Time,
            user_defined_id: String
          }
        )
      end
      def to_hash
      end

      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ManagementOperationTransaction::Category)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANAGEMENT_FEE =
          T.let(
            :MANAGEMENT_FEE,
            Lithic::ManagementOperationTransaction::Category::TaggedSymbol
          )
        MANAGEMENT_DISPUTE =
          T.let(
            :MANAGEMENT_DISPUTE,
            Lithic::ManagementOperationTransaction::Category::TaggedSymbol
          )
        MANAGEMENT_REWARD =
          T.let(
            :MANAGEMENT_REWARD,
            Lithic::ManagementOperationTransaction::Category::TaggedSymbol
          )
        MANAGEMENT_ADJUSTMENT =
          T.let(
            :MANAGEMENT_ADJUSTMENT,
            Lithic::ManagementOperationTransaction::Category::TaggedSymbol
          )
        MANAGEMENT_DISBURSEMENT =
          T.let(
            :MANAGEMENT_DISBURSEMENT,
            Lithic::ManagementOperationTransaction::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ManagementOperationTransaction::Category::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Direction
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ManagementOperationTransaction::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :CREDIT,
            Lithic::ManagementOperationTransaction::Direction::TaggedSymbol
          )
        DEBIT =
          T.let(
            :DEBIT,
            Lithic::ManagementOperationTransaction::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ManagementOperationTransaction::Direction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Event < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::ManagementOperationTransaction::Event,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :token

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :created

        sig do
          returns(
            T::Array[
              Lithic::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol
            ]
          )
        end
        attr_accessor :detailed_results

        sig { returns(Date) }
        attr_accessor :effective_date

        sig { returns(String) }
        attr_accessor :memo

        sig do
          returns(
            Lithic::ManagementOperationTransaction::Event::Result::TaggedSymbol
          )
        end
        attr_accessor :result

        sig do
          returns(
            Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :subtype

        sig { params(subtype: String).void }
        attr_writer :subtype

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            detailed_results:
              T::Array[
                Lithic::ManagementOperationTransaction::Event::DetailedResult::OrSymbol
              ],
            effective_date: Date,
            memo: String,
            result:
              Lithic::ManagementOperationTransaction::Event::Result::OrSymbol,
            type: Lithic::ManagementOperationTransaction::Event::Type::OrSymbol,
            subtype: String
          ).returns(T.attached_class)
        end
        def self.new(
          token:,
          amount:,
          created:,
          detailed_results:,
          effective_date:,
          memo:,
          result:,
          type:,
          subtype: nil
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
                  Lithic::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol
                ],
              effective_date: Date,
              memo: String,
              result:
                Lithic::ManagementOperationTransaction::Event::Result::TaggedSymbol,
              type:
                Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol,
              subtype: String
            }
          )
        end
        def to_hash
        end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::ManagementOperationTransaction::Event::DetailedResult
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Lithic::ManagementOperationTransaction::Event::Result
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :APPROVED,
              Lithic::ManagementOperationTransaction::Event::Result::TaggedSymbol
            )
          DECLINED =
            T.let(
              :DECLINED,
              Lithic::ManagementOperationTransaction::Event::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::ManagementOperationTransaction::Event::Result::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Lithic::ManagementOperationTransaction::Event::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOSS_WRITE_OFF =
            T.let(
              :LOSS_WRITE_OFF,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          CASH_BACK =
            T.let(
              :CASH_BACK,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          CASH_BACK_REVERSAL =
            T.let(
              :CASH_BACK_REVERSAL,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          CURRENCY_CONVERSION =
            T.let(
              :CURRENCY_CONVERSION,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          CURRENCY_CONVERSION_REVERSAL =
            T.let(
              :CURRENCY_CONVERSION_REVERSAL,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          INTEREST =
            T.let(
              :INTEREST,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          INTEREST_REVERSAL =
            T.let(
              :INTEREST_REVERSAL,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          LATE_PAYMENT =
            T.let(
              :LATE_PAYMENT,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          LATE_PAYMENT_REVERSAL =
            T.let(
              :LATE_PAYMENT_REVERSAL,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          BILLING_ERROR =
            T.let(
              :BILLING_ERROR,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          BILLING_ERROR_REVERSAL =
            T.let(
              :BILLING_ERROR_REVERSAL,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          PROVISIONAL_CREDIT =
            T.let(
              :PROVISIONAL_CREDIT,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          PROVISIONAL_CREDIT_REVERSAL =
            T.let(
              :PROVISIONAL_CREDIT_REVERSAL,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          RETURNED_PAYMENT =
            T.let(
              :RETURNED_PAYMENT,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          RETURNED_PAYMENT_REVERSAL =
            T.let(
              :RETURNED_PAYMENT_REVERSAL,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          DISPUTE_WON =
            T.let(
              :DISPUTE_WON,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          DISPUTE_WON_REVERSAL =
            T.let(
              :DISPUTE_WON_REVERSAL,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          DISBURSE =
            T.let(
              :DISBURSE,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          DISBURSE_REVERSAL =
            T.let(
              :DISBURSE_REVERSAL,
              Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Lithic::ManagementOperationTransaction::Event::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ManagementOperationTransaction::Result)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(
            :APPROVED,
            Lithic::ManagementOperationTransaction::Result::TaggedSymbol
          )
        DECLINED =
          T.let(
            :DECLINED,
            Lithic::ManagementOperationTransaction::Result::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ManagementOperationTransaction::Result::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ManagementOperationTransaction::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :PENDING,
            Lithic::ManagementOperationTransaction::Status::TaggedSymbol
          )
        SETTLED =
          T.let(
            :SETTLED,
            Lithic::ManagementOperationTransaction::Status::TaggedSymbol
          )
        DECLINED =
          T.let(
            :DECLINED,
            Lithic::ManagementOperationTransaction::Status::TaggedSymbol
          )
        REVERSED =
          T.let(
            :REVERSED,
            Lithic::ManagementOperationTransaction::Status::TaggedSymbol
          )
        CANCELED =
          T.let(
            :CANCELED,
            Lithic::ManagementOperationTransaction::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ManagementOperationTransaction::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class TransactionSeries < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::ManagementOperationTransaction::TransactionSeries,
              Lithic::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :related_transaction_event_token

        sig { returns(T.nilable(String)) }
        attr_accessor :related_transaction_token

        sig { returns(String) }
        attr_accessor :type

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
