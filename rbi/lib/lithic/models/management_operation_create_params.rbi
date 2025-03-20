# typed: strong

module Lithic
  module Models
    class ManagementOperationCreateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Lithic::Models::ManagementOperationCreateParams::Category::OrSymbol) }
      def category
      end

      sig do
        params(_: Lithic::Models::ManagementOperationCreateParams::Category::OrSymbol)
          .returns(Lithic::Models::ManagementOperationCreateParams::Category::OrSymbol)
      end
      def category=(_)
      end

      sig { returns(Lithic::Models::ManagementOperationCreateParams::Direction::OrSymbol) }
      def direction
      end

      sig do
        params(_: Lithic::Models::ManagementOperationCreateParams::Direction::OrSymbol)
          .returns(Lithic::Models::ManagementOperationCreateParams::Direction::OrSymbol)
      end
      def direction=(_)
      end

      sig { returns(Date) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      sig { returns(Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol) }
      def event_type
      end

      sig do
        params(_: Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
          .returns(Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
      end
      def event_type=(_)
      end

      sig { returns(String) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      sig { returns(T.nilable(String)) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: String).returns(String) }
      def memo=(_)
      end

      sig { returns(T.nilable(String)) }
      def subtype
      end

      sig { params(_: String).returns(String) }
      def subtype=(_)
      end

      sig { returns(T.nilable(String)) }
      def user_defined_id
      end

      sig { params(_: String).returns(String) }
      def user_defined_id=(_)
      end

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
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
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
          T.let(:MANAGEMENT_FEE, Lithic::Models::ManagementOperationCreateParams::Category::OrSymbol)
        MANAGEMENT_DISPUTE =
          T.let(:MANAGEMENT_DISPUTE, Lithic::Models::ManagementOperationCreateParams::Category::OrSymbol)
        MANAGEMENT_REWARD =
          T.let(:MANAGEMENT_REWARD, Lithic::Models::ManagementOperationCreateParams::Category::OrSymbol)
        MANAGEMENT_ADJUSTMENT =
          T.let(:MANAGEMENT_ADJUSTMENT, Lithic::Models::ManagementOperationCreateParams::Category::OrSymbol)
      end

      module Direction
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationCreateParams::Direction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationCreateParams::Direction::TaggedSymbol) }

        CREDIT = T.let(:CREDIT, Lithic::Models::ManagementOperationCreateParams::Direction::OrSymbol)
        DEBIT = T.let(:DEBIT, Lithic::Models::ManagementOperationCreateParams::Direction::OrSymbol)
      end

      module EventType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ManagementOperationCreateParams::EventType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ManagementOperationCreateParams::EventType::TaggedSymbol) }

        CASH_BACK = T.let(:CASH_BACK, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        CURRENCY_CONVERSION =
          T.let(:CURRENCY_CONVERSION, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        INTEREST = T.let(:INTEREST, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        LATE_PAYMENT = T.let(:LATE_PAYMENT, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        BILLING_ERROR =
          T.let(:BILLING_ERROR, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        PROVISIONAL_CREDIT =
          T.let(:PROVISIONAL_CREDIT, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        LOSS_WRITE_OFF =
          T.let(:LOSS_WRITE_OFF, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        CASH_BACK_REVERSAL =
          T.let(:CASH_BACK_REVERSAL, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        CURRENCY_CONVERSION_REVERSAL =
          T.let(:CURRENCY_CONVERSION_REVERSAL, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        INTEREST_REVERSAL =
          T.let(:INTEREST_REVERSAL, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        LATE_PAYMENT_REVERSAL =
          T.let(:LATE_PAYMENT_REVERSAL, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        BILLING_ERROR_REVERSAL =
          T.let(:BILLING_ERROR_REVERSAL, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        PROVISIONAL_CREDIT_REVERSAL =
          T.let(:PROVISIONAL_CREDIT_REVERSAL, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        RETURNED_PAYMENT =
          T.let(:RETURNED_PAYMENT, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
        RETURNED_PAYMENT_REVERSAL =
          T.let(:RETURNED_PAYMENT_REVERSAL, Lithic::Models::ManagementOperationCreateParams::EventType::OrSymbol)
      end
    end
  end
end
