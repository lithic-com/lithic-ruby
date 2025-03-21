# typed: strong

module Lithic
  module Models
    class ManagementOperationCreateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Lithic::Models::ManagementOperationCreateParams::Category::OrSymbol) }
      attr_accessor :category

      sig { returns(Lithic::Models::ManagementOperationCreateParams::Direction::OrSymbol) }
      attr_accessor :direction

      sig { returns(Date) }
      attr_accessor :effective_date

      sig { returns(Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol) }
      attr_accessor :event_type

      sig { returns(String) }
      attr_accessor :financial_account_token

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig { returns(T.nilable(String)) }
      attr_reader :subtype

      sig { params(subtype: String).void }
      attr_writer :subtype

      sig { returns(T.nilable(String)) }
      attr_reader :user_defined_id

      sig { params(user_defined_id: String).void }
      attr_writer :user_defined_id

      sig do
        params(
          amount: Integer,
          category: Lithic::Models::ManagementOperationCreateParams::Category::OrSymbol,
          direction: Lithic::Models::ManagementOperationCreateParams::Direction::OrSymbol,
          effective_date: Date,
          event_type: Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol,
          financial_account_token: String,
          token: String,
          memo: String,
          subtype: String,
          user_defined_id: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        category:,
        direction:,
        effective_date:,
        event_type:,
        financial_account_token:,
        token: nil,
        memo: nil,
        subtype: nil,
        user_defined_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              category: Lithic::Models::ManagementOperationCreateParams::Category::OrSymbol,
              direction: Lithic::Models::ManagementOperationCreateParams::Direction::OrSymbol,
              effective_date: Date,
              event_type: Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol,
              financial_account_token: String,
              token: String,
              memo: String,
              subtype: String,
              user_defined_id: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Category
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationCreateParams::Category) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationCreateParams::Category::TaggedSymbol) }

        MANAGEMENT_FEE =
          T.let(:MANAGEMENT_FEE, Lithic::Models::ManagementOperationCreateParams::Category::TaggedSymbol)
        MANAGEMENT_DISPUTE =
          T.let(:MANAGEMENT_DISPUTE, Lithic::Models::ManagementOperationCreateParams::Category::TaggedSymbol)
        MANAGEMENT_REWARD =
          T.let(:MANAGEMENT_REWARD, Lithic::Models::ManagementOperationCreateParams::Category::TaggedSymbol)
        MANAGEMENT_ADJUSTMENT =
          T.let(:MANAGEMENT_ADJUSTMENT, Lithic::Models::ManagementOperationCreateParams::Category::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ManagementOperationCreateParams::Category::TaggedSymbol]) }
          def values
          end
        end
      end

      module Direction
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationCreateParams::Direction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationCreateParams::Direction::TaggedSymbol) }

        CREDIT = T.let(:CREDIT, Lithic::Models::ManagementOperationCreateParams::Direction::TaggedSymbol)
        DEBIT = T.let(:DEBIT, Lithic::Models::ManagementOperationCreateParams::Direction::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ManagementOperationCreateParams::Direction::TaggedSymbol]) }
          def values
          end
        end
      end

      module EventType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationCreateParams::EventType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol) }

        CASH_BACK = T.let(:CASH_BACK, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol)
        CURRENCY_CONVERSION =
          T.let(:CURRENCY_CONVERSION, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol)
        INTEREST = T.let(:INTEREST, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol)
        LATE_PAYMENT =
          T.let(:LATE_PAYMENT, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol)
        BILLING_ERROR =
          T.let(:BILLING_ERROR, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol)
        PROVISIONAL_CREDIT =
          T.let(:PROVISIONAL_CREDIT, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol)
        LOSS_WRITE_OFF =
          T.let(:LOSS_WRITE_OFF, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol)
        CASH_BACK_REVERSAL =
          T.let(:CASH_BACK_REVERSAL, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol)
        CURRENCY_CONVERSION_REVERSAL =
          T.let(
            :CURRENCY_CONVERSION_REVERSAL,
            Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        INTEREST_REVERSAL =
          T.let(:INTEREST_REVERSAL, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol)
        LATE_PAYMENT_REVERSAL =
          T.let(:LATE_PAYMENT_REVERSAL, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol)
        BILLING_ERROR_REVERSAL =
          T.let(:BILLING_ERROR_REVERSAL, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol)
        PROVISIONAL_CREDIT_REVERSAL =
          T.let(
            :PROVISIONAL_CREDIT_REVERSAL,
            Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol
          )
        RETURNED_PAYMENT =
          T.let(:RETURNED_PAYMENT, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol)
        RETURNED_PAYMENT_REVERSAL =
          T.let(
            :RETURNED_PAYMENT_REVERSAL,
            Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol
          )

        class << self
          sig { override.returns(T::Array[Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
