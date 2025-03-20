# typed: strong

module Lithic
  module Models
    class ExternalPayment < Lithic::BaseModel
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      sig { returns(Lithic::Models::ExternalPayment::Category::TaggedSymbol) }
      def category
      end

      sig do
        params(_: Lithic::Models::ExternalPayment::Category::TaggedSymbol)
          .returns(Lithic::Models::ExternalPayment::Category::TaggedSymbol)
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

      sig { returns(T::Array[Lithic::Models::ExternalPayment::Event]) }
      def events
      end

      sig do
        params(_: T::Array[Lithic::Models::ExternalPayment::Event])
          .returns(T::Array[Lithic::Models::ExternalPayment::Event])
      end
      def events=(_)
      end

      sig { returns(String) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      sig { returns(Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol) }
      def payment_type
      end

      sig do
        params(_: Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol)
          .returns(Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol)
      end
      def payment_type=(_)
      end

      sig { returns(Integer) }
      def pending_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def pending_amount=(_)
      end

      sig { returns(Lithic::Models::ExternalPayment::Result::TaggedSymbol) }
      def result
      end

      sig do
        params(_: Lithic::Models::ExternalPayment::Result::TaggedSymbol)
          .returns(Lithic::Models::ExternalPayment::Result::TaggedSymbol)
      end
      def result=(_)
      end

      sig { returns(Integer) }
      def settled_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def settled_amount=(_)
      end

      sig { returns(Lithic::Models::ExternalPayment::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Lithic::Models::ExternalPayment::Status::TaggedSymbol)
          .returns(Lithic::Models::ExternalPayment::Status::TaggedSymbol)
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
          category: Lithic::Models::ExternalPayment::Category::TaggedSymbol,
          created: Time,
          currency: String,
          events: T::Array[Lithic::Models::ExternalPayment::Event],
          financial_account_token: String,
          payment_type: Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol,
          pending_amount: Integer,
          result: Lithic::Models::ExternalPayment::Result::TaggedSymbol,
          settled_amount: Integer,
          status: Lithic::Models::ExternalPayment::Status::TaggedSymbol,
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
        events:,
        financial_account_token:,
        payment_type:,
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
              category: Lithic::Models::ExternalPayment::Category::TaggedSymbol,
              created: Time,
              currency: String,
              events: T::Array[Lithic::Models::ExternalPayment::Event],
              financial_account_token: String,
              payment_type: Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol,
              pending_amount: Integer,
              result: Lithic::Models::ExternalPayment::Result::TaggedSymbol,
              settled_amount: Integer,
              status: Lithic::Models::ExternalPayment::Status::TaggedSymbol,
              updated: Time,
              user_defined_id: String
            }
          )
      end
      def to_hash
      end

      module Category
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::ExternalPayment::Category::TaggedSymbol) }

        EXTERNAL_WIRE = T.let(:EXTERNAL_WIRE, Lithic::Models::ExternalPayment::Category::TaggedSymbol)
        EXTERNAL_ACH = T.let(:EXTERNAL_ACH, Lithic::Models::ExternalPayment::Category::TaggedSymbol)
        EXTERNAL_CHECK = T.let(:EXTERNAL_CHECK, Lithic::Models::ExternalPayment::Category::TaggedSymbol)
        EXTERNAL_TRANSFER = T.let(:EXTERNAL_TRANSFER, Lithic::Models::ExternalPayment::Category::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalPayment::Category::TaggedSymbol]) }
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

        sig { returns(T::Array[Lithic::Models::ExternalPayment::Event::DetailedResult::TaggedSymbol]) }
        def detailed_results
        end

        sig do
          params(_: T::Array[Lithic::Models::ExternalPayment::Event::DetailedResult::TaggedSymbol])
            .returns(T::Array[Lithic::Models::ExternalPayment::Event::DetailedResult::TaggedSymbol])
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

        sig { returns(Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol) }
        def result
        end

        sig do
          params(_: Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol)
            .returns(Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol)
        end
        def result=(_)
        end

        sig { returns(Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
            .returns(Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
        end
        def type=(_)
        end

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            detailed_results: T::Array[Lithic::Models::ExternalPayment::Event::DetailedResult::TaggedSymbol],
            effective_date: Date,
            memo: String,
            result: Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol,
            type: Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(token:, amount:, created:, detailed_results:, effective_date:, memo:, result:, type:)
        end

        sig do
          override
            .returns(
              {
                token: String,
                amount: Integer,
                created: Time,
                detailed_results: T::Array[Lithic::Models::ExternalPayment::Event::DetailedResult::TaggedSymbol],
                effective_date: Date,
                memo: String,
                result: Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol,
                type: Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        module DetailedResult
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::Event::DetailedResult) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Lithic::Models::ExternalPayment::Event::DetailedResult::TaggedSymbol) }

          APPROVED = T.let(:APPROVED, Lithic::Models::ExternalPayment::Event::DetailedResult::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::ExternalPayment::Event::DetailedResult::TaggedSymbol]) }
            def values
            end
          end
        end

        module Result
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::Event::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol) }

          APPROVED = T.let(:APPROVED, Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol]) }
            def values
            end
          end
        end

        module Type
          extend Lithic::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol) }

          EXTERNAL_WIRE_INITIATED =
            T.let(:EXTERNAL_WIRE_INITIATED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_CANCELED =
            T.let(:EXTERNAL_WIRE_CANCELED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_SETTLED =
            T.let(:EXTERNAL_WIRE_SETTLED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_REVERSED =
            T.let(:EXTERNAL_WIRE_REVERSED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_WIRE_RELEASED =
            T.let(:EXTERNAL_WIRE_RELEASED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_INITIATED =
            T.let(:EXTERNAL_ACH_INITIATED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_CANCELED =
            T.let(:EXTERNAL_ACH_CANCELED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_SETTLED =
            T.let(:EXTERNAL_ACH_SETTLED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_REVERSED =
            T.let(:EXTERNAL_ACH_REVERSED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_ACH_RELEASED =
            T.let(:EXTERNAL_ACH_RELEASED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_INITIATED =
            T.let(:EXTERNAL_TRANSFER_INITIATED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_CANCELED =
            T.let(:EXTERNAL_TRANSFER_CANCELED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_SETTLED =
            T.let(:EXTERNAL_TRANSFER_SETTLED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_REVERSED =
            T.let(:EXTERNAL_TRANSFER_REVERSED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_TRANSFER_RELEASED =
            T.let(:EXTERNAL_TRANSFER_RELEASED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_INITIATED =
            T.let(:EXTERNAL_CHECK_INITIATED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_CANCELED =
            T.let(:EXTERNAL_CHECK_CANCELED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_SETTLED =
            T.let(:EXTERNAL_CHECK_SETTLED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_REVERSED =
            T.let(:EXTERNAL_CHECK_REVERSED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)
          EXTERNAL_CHECK_RELEASED =
            T.let(:EXTERNAL_CHECK_RELEASED, Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      module PaymentType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::PaymentType) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol) }

        DEPOSIT = T.let(:DEPOSIT, Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol)
        WITHDRAWAL = T.let(:WITHDRAWAL, Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol]) }
          def values
          end
        end
      end

      module Result
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::ExternalPayment::Result::TaggedSymbol) }

        APPROVED = T.let(:APPROVED, Lithic::Models::ExternalPayment::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ExternalPayment::Result::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalPayment::Result::TaggedSymbol]) }
          def values
          end
        end
      end

      module Status
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Lithic::Models::ExternalPayment::Status::TaggedSymbol) }

        PENDING = T.let(:PENDING, Lithic::Models::ExternalPayment::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::ExternalPayment::Status::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ExternalPayment::Status::TaggedSymbol)
        REVERSED = T.let(:REVERSED, Lithic::Models::ExternalPayment::Status::TaggedSymbol)
        CANCELED = T.let(:CANCELED, Lithic::Models::ExternalPayment::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalPayment::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
