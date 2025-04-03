# typed: strong

module Lithic
  module Models
    class ManagementOperationTransaction < Lithic::BaseModel
      sig { returns(String) }
      attr_accessor :token

      sig { returns(Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol) }
      attr_accessor :category

      sig { returns(Time) }
      attr_accessor :created

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol) }
      attr_accessor :direction

      sig { returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event]) }
      attr_accessor :events

      sig { returns(String) }
      attr_accessor :financial_account_token

      sig { returns(Integer) }
      attr_accessor :pending_amount

      sig { returns(Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol) }
      attr_accessor :result

      sig { returns(Integer) }
      attr_accessor :settled_amount

      sig { returns(Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated

      sig { returns(T.nilable(String)) }
      attr_reader :user_defined_id

      sig { params(user_defined_id: String).void }
      attr_writer :user_defined_id

      sig do
        params(
          token: String,
          category: Lithic::Models::ManagementOperationTransaction::Category::OrSymbol,
          created: Time,
          currency: String,
          direction: Lithic::Models::ManagementOperationTransaction::Direction::OrSymbol,
          events: T::Array[T.any(Lithic::Models::ManagementOperationTransaction::Event, Lithic::Internal::Util::AnyHash)],
          financial_account_token: String,
          pending_amount: Integer,
          result: Lithic::Models::ManagementOperationTransaction::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::Models::ManagementOperationTransaction::Status::OrSymbol,
          updated: Time,
          user_defined_id: String
        )
          .returns(T.attached_class)
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
        updated:,
        user_defined_id: nil
      )
      end

      sig do
        override
          .returns(
            {
              token: String,
              category: Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol,
              created: Time,
              currency: String,
              direction: Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol,
              events: T::Array[Lithic::Models::ManagementOperationTransaction::Event],
              financial_account_token: String,
              pending_amount: Integer,
              result: Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol,
              settled_amount: Integer,
              status: Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol,
              updated: Time,
              user_defined_id: String
            }
          )
      end
      def to_hash
      end

      module Category
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationTransaction::Category) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol) }

        MANAGEMENT_FEE =
          T.let(:MANAGEMENT_FEE, Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol)
        MANAGEMENT_DISPUTE =
          T.let(:MANAGEMENT_DISPUTE, Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol)
        MANAGEMENT_REWARD =
          T.let(:MANAGEMENT_REWARD, Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol)
        MANAGEMENT_ADJUSTMENT =
          T.let(:MANAGEMENT_ADJUSTMENT, Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol]) }
        def self.values
        end
      end

      module Direction
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationTransaction::Direction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol) }

        CREDIT = T.let(:CREDIT, Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol)
        DEBIT = T.let(:DEBIT, Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol]) }
        def self.values
        end
      end

      class Event < Lithic::BaseModel
        sig { returns(String) }
        attr_accessor :token

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :created

        sig { returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol]) }
        attr_accessor :detailed_results

        sig { returns(Date) }
        attr_accessor :effective_date

        sig { returns(String) }
        attr_accessor :memo

        sig { returns(Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol) }
        attr_accessor :result

        sig { returns(Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol) }
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
            detailed_results: T::Array[Lithic::Models::ManagementOperationTransaction::Event::DetailedResult::OrSymbol],
            effective_date: Date,
            memo: String,
            result: Lithic::Models::ManagementOperationTransaction::Event::Result::OrSymbol,
            type: Lithic::Models::ManagementOperationTransaction::Event::Type::OrSymbol,
            subtype: String
          )
            .returns(T.attached_class)
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
          override
            .returns(
              {
                token: String,
                amount: Integer,
                created: Time,
                detailed_results: T::Array[Lithic::Models::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol],
                effective_date: Date,
                memo: String,
                result: Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol,
                type: Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol,
                subtype: String
              }
            )
        end
        def to_hash
        end

        module DetailedResult
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationTransaction::Event::DetailedResult) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol) }

          APPROVED =
            T.let(:APPROVED, Lithic::Models::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol])
          end
          def self.values
          end
        end

        module Result
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationTransaction::Event::Result) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol) }

          APPROVED = T.let(:APPROVED, Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol]) }
          def self.values
          end
        end

        module Type
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationTransaction::Event::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol) }

          CASH_BACK = T.let(:CASH_BACK, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
          CURRENCY_CONVERSION =
            T.let(:CURRENCY_CONVERSION, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
          INTEREST = T.let(:INTEREST, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
          LATE_PAYMENT =
            T.let(:LATE_PAYMENT, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
          BILLING_ERROR =
            T.let(:BILLING_ERROR, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
          PROVISIONAL_CREDIT =
            T.let(:PROVISIONAL_CREDIT, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
          LOSS_WRITE_OFF =
            T.let(:LOSS_WRITE_OFF, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
          CASH_BACK_REVERSAL =
            T.let(:CASH_BACK_REVERSAL, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
          CURRENCY_CONVERSION_REVERSAL =
            T.let(
              :CURRENCY_CONVERSION_REVERSAL,
              Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          INTEREST_REVERSAL =
            T.let(:INTEREST_REVERSAL, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
          LATE_PAYMENT_REVERSAL =
            T.let(:LATE_PAYMENT_REVERSAL, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
          BILLING_ERROR_REVERSAL =
            T.let(:BILLING_ERROR_REVERSAL, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
          PROVISIONAL_CREDIT_REVERSAL =
            T.let(
              :PROVISIONAL_CREDIT_REVERSAL,
              Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )
          RETURNED_PAYMENT =
            T.let(:RETURNED_PAYMENT, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
          RETURNED_PAYMENT_REVERSAL =
            T.let(
              :RETURNED_PAYMENT_REVERSAL,
              Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol
            )

          sig { override.returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol]) }
          def self.values
          end
        end
      end

      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationTransaction::Result) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol]) }
        def self.values
        end
      end

      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationTransaction::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol) }

        PENDING = T.let(:PENDING, Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol)
        REVERSED = T.let(:REVERSED, Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol)
        CANCELED = T.let(:CANCELED, Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
