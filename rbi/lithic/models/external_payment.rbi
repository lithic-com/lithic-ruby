# typed: strong

module Lithic
  module Models
    class ExternalPayment < Lithic::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :token

      sig { returns(Lithic::Models::ExternalPayment::Category::TaggedSymbol) }
      attr_accessor :category

      sig { returns(Time) }
      attr_accessor :created

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(T::Array[Lithic::Models::ExternalPayment::Event]) }
      attr_accessor :events

      sig { returns(String) }
      attr_accessor :financial_account_token

      sig { returns(Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol) }
      attr_accessor :payment_type

      sig { returns(Integer) }
      attr_accessor :pending_amount

      sig { returns(Lithic::Models::ExternalPayment::Result::TaggedSymbol) }
      attr_accessor :result

      sig { returns(Integer) }
      attr_accessor :settled_amount

      sig { returns(Lithic::Models::ExternalPayment::Status::TaggedSymbol) }
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
          category: Lithic::Models::ExternalPayment::Category::OrSymbol,
          created: Time,
          currency: String,
          events: T::Array[T.any(Lithic::Models::ExternalPayment::Event, Lithic::Internal::AnyHash)],
          financial_account_token: String,
          payment_type: Lithic::Models::ExternalPayment::PaymentType::OrSymbol,
          pending_amount: Integer,
          result: Lithic::Models::ExternalPayment::Result::OrSymbol,
          settled_amount: Integer,
          status: Lithic::Models::ExternalPayment::Status::OrSymbol,
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
      ); end
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
      def to_hash; end

      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXTERNAL_WIRE = T.let(:EXTERNAL_WIRE, Lithic::Models::ExternalPayment::Category::TaggedSymbol)
        EXTERNAL_ACH = T.let(:EXTERNAL_ACH, Lithic::Models::ExternalPayment::Category::TaggedSymbol)
        EXTERNAL_CHECK = T.let(:EXTERNAL_CHECK, Lithic::Models::ExternalPayment::Category::TaggedSymbol)
        EXTERNAL_TRANSFER = T.let(:EXTERNAL_TRANSFER, Lithic::Models::ExternalPayment::Category::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalPayment::Category::TaggedSymbol]) }
        def self.values; end
      end

      class Event < Lithic::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :token

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :created

        sig { returns(T::Array[Lithic::Models::ExternalPayment::Event::DetailedResult::TaggedSymbol]) }
        attr_accessor :detailed_results

        sig { returns(Date) }
        attr_accessor :effective_date

        sig { returns(String) }
        attr_accessor :memo

        sig { returns(Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol) }
        attr_accessor :result

        sig { returns(Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol) }
        attr_accessor :type

        sig do
          params(
            token: String,
            amount: Integer,
            created: Time,
            detailed_results: T::Array[Lithic::Models::ExternalPayment::Event::DetailedResult::OrSymbol],
            effective_date: Date,
            memo: String,
            result: Lithic::Models::ExternalPayment::Event::Result::OrSymbol,
            type: Lithic::Models::ExternalPayment::Event::Type::OrSymbol
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
        def to_hash; end

        module DetailedResult
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::Event::DetailedResult) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED = T.let(:APPROVED, Lithic::Models::ExternalPayment::Event::DetailedResult::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::ExternalPayment::Event::DetailedResult::TaggedSymbol]) }
          def self.values; end
        end

        module Result
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::Event::Result) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED = T.let(:APPROVED, Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol)
          DECLINED = T.let(:DECLINED, Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol)

          sig { override.returns(T::Array[Lithic::Models::ExternalPayment::Event::Result::TaggedSymbol]) }
          def self.values; end
        end

        module Type
          extend Lithic::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::Event::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

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

          sig { override.returns(T::Array[Lithic::Models::ExternalPayment::Event::Type::TaggedSymbol]) }
          def self.values; end
        end
      end

      module PaymentType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::PaymentType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEPOSIT = T.let(:DEPOSIT, Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol)
        WITHDRAWAL = T.let(:WITHDRAWAL, Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalPayment::PaymentType::TaggedSymbol]) }
        def self.values; end
      end

      module Result
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::Result) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED = T.let(:APPROVED, Lithic::Models::ExternalPayment::Result::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ExternalPayment::Result::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalPayment::Result::TaggedSymbol]) }
        def self.values; end
      end

      module Status
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPayment::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:PENDING, Lithic::Models::ExternalPayment::Status::TaggedSymbol)
        SETTLED = T.let(:SETTLED, Lithic::Models::ExternalPayment::Status::TaggedSymbol)
        DECLINED = T.let(:DECLINED, Lithic::Models::ExternalPayment::Status::TaggedSymbol)
        REVERSED = T.let(:REVERSED, Lithic::Models::ExternalPayment::Status::TaggedSymbol)
        CANCELED = T.let(:CANCELED, Lithic::Models::ExternalPayment::Status::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalPayment::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
