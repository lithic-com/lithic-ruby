# typed: strong

module Lithic
  module Models
    class ManagementOperationTransaction < Lithic::BaseModel
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      sig { returns(Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol) }
      def category
      end

      sig do
        params(_: Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol)
          .returns(Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol)
      end
      def category=(_)
      end

      sig { returns(Time) }
      def created
      end

      sig { params(_: Time).returns(Time) }
      def created=(_)
      end

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol) }
      def direction
      end

      sig do
        params(_: Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol)
          .returns(Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol)
      end
      def direction=(_)
      end

      sig { returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event]) }
      def events
      end

      sig do
        params(_: T::Array[Lithic::Models::ManagementOperationTransaction::Event])
          .returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event])
      end
      def events=(_)
      end

      sig { returns(String) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      sig { returns(Integer) }
      def pending_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def pending_amount=(_)
      end

      sig { returns(Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol) }
      def result
      end

      sig do
        params(_: Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol)
          .returns(Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol)
      end
      def result=(_)
      end

      sig { returns(Integer) }
      def settled_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def settled_amount=(_)
      end

      sig { returns(Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol)
          .returns(Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol)
      end
      def status=(_)
      end

      sig { returns(Time) }
      def updated
      end

      sig { params(_: Time).returns(Time) }
      def updated=(_)
      end

      sig { returns(T.nilable(String)) }
      def user_defined_id
      end

      sig { params(_: String).returns(String) }
      def user_defined_id=(_)
      end

      sig do
        params(
          token: String,
          category: Lithic::Models::ManagementOperationTransaction::Category::OrSymbol,
          created: Time,
          currency: String,
          direction: Lithic::Models::ManagementOperationTransaction::Direction::OrSymbol,
          events: T::Array[T.any(Lithic::Models::ManagementOperationTransaction::Event, Lithic::Util::AnyHash)],
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
          T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol) }

        MANAGEMENT_FEE =
          T.let(:MANAGEMENT_FEE, Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol)
        MANAGEMENT_DISPUTE =
          T.let(:MANAGEMENT_DISPUTE, Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol)
        MANAGEMENT_REWARD =
          T.let(:MANAGEMENT_REWARD, Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol)
        MANAGEMENT_ADJUSTMENT =
          T.let(:MANAGEMENT_ADJUSTMENT, Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ManagementOperationTransaction::Category::TaggedSymbol]) }
          def values
          end
        end
      end

      module Direction
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationTransaction::Direction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol) }

        CREDIT = T.let(:CREDIT, Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol)
        DEBIT = T.let(:DEBIT, Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ManagementOperationTransaction::Direction::TaggedSymbol]) }
          def values
          end
        end
      end

      class Event < Lithic::BaseModel
        sig { returns(String) }
        def token
        end

        sig { params(_: String).returns(String) }
        def token=(_)
        end

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(Time) }
        def created
        end

        sig { params(_: Time).returns(Time) }
        def created=(_)
        end

        sig { returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol]) }
        def detailed_results
        end

        sig do
          params(_: T::Array[Lithic::Models::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol])
            .returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol])
        end
        def detailed_results=(_)
        end

        sig { returns(Date) }
        def effective_date
        end

        sig { params(_: Date).returns(Date) }
        def effective_date=(_)
        end

        sig { returns(String) }
        def memo
        end

        sig { params(_: String).returns(String) }
        def memo=(_)
        end

        sig { returns(Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol) }
        def result
        end

        sig do
          params(_: Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol)
            .returns(Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol)
        end
        def result=(_)
        end

        sig { returns(Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
            .returns(Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol)
        end
        def type=(_)
        end

        sig { returns(T.nilable(String)) }
        def subtype
        end

        sig { params(_: String).returns(String) }
        def subtype=(_)
        end

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
        def self.new(token:, amount:, created:, detailed_results:, effective_date:, memo:, result:, type:, subtype: nil)
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
            T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol) }

          APPROVED =
            T.let(:APPROVED, Lithic::Models::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol)

          class << self
            sig do
              override
                .returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event::DetailedResult::TaggedSymbol])
            end
            def values
            end
          end
        end

        module Result
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationTransaction::Event::Result) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol) }

          APPROVED = T.let(:APPROVED, Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event::Result::TaggedSymbol]) }
            def values
            end
          end
        end

        module Type
          extend Lithic::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationTransaction::Event::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol) }

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

          class << self
            sig { override.returns(T::Array[Lithic::Models::ManagementOperationTransaction::Event::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationTransaction::Result) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ManagementOperationTransaction::Result::TaggedSymbol]) }
          def values
          end
        end
      end

      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationTransaction::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol) }

        PENDING = T.let(:PENDING, Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol)
        REVERSED = T.let(:REVERSED, Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol)
        CANCELED = T.let(:CANCELED, Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ManagementOperationTransaction::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
