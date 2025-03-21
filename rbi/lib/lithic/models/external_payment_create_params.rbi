# typed: strong

module Lithic
  module Models
    class ExternalPaymentCreateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Lithic::Models::ExternalPaymentCreateParams::Category::OrSymbol) }
      def category
      end

      sig do
        params(_: Lithic::Models::ExternalPaymentCreateParams::Category::OrSymbol)
          .returns(Lithic::Models::ExternalPaymentCreateParams::Category::OrSymbol)
      end
      def category=(_)
      end

      sig { returns(Date) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      sig { returns(String) }
      def financial_account_token
      end

      sig { params(_: String).returns(String) }
      def financial_account_token=(_)
      end

      sig { returns(Lithic::Models::ExternalPaymentCreateParams::PaymentType::OrSymbol) }
      def payment_type
      end

      sig do
        params(_: Lithic::Models::ExternalPaymentCreateParams::PaymentType::OrSymbol)
          .returns(Lithic::Models::ExternalPaymentCreateParams::PaymentType::OrSymbol)
      end
      def payment_type=(_)
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

      sig { returns(T.nilable(Lithic::Models::ExternalPaymentCreateParams::ProgressTo::OrSymbol)) }
      def progress_to
      end

      sig do
        params(_: Lithic::Models::ExternalPaymentCreateParams::ProgressTo::OrSymbol)
          .returns(Lithic::Models::ExternalPaymentCreateParams::ProgressTo::OrSymbol)
      end
      def progress_to=(_)
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
          category: Lithic::Models::ExternalPaymentCreateParams::Category::OrSymbol,
          effective_date: Date,
          financial_account_token: String,
          payment_type: Lithic::Models::ExternalPaymentCreateParams::PaymentType::OrSymbol,
          token: String,
          memo: String,
          progress_to: Lithic::Models::ExternalPaymentCreateParams::ProgressTo::OrSymbol,
          user_defined_id: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        category:,
        effective_date:,
        financial_account_token:,
        payment_type:,
        token: nil,
        memo: nil,
        progress_to: nil,
        user_defined_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              category: Lithic::Models::ExternalPaymentCreateParams::Category::OrSymbol,
              effective_date: Date,
              financial_account_token: String,
              payment_type: Lithic::Models::ExternalPaymentCreateParams::PaymentType::OrSymbol,
              token: String,
              memo: String,
              progress_to: Lithic::Models::ExternalPaymentCreateParams::ProgressTo::OrSymbol,
              user_defined_id: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Category
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentCreateParams::Category) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalPaymentCreateParams::Category::TaggedSymbol) }

        EXTERNAL_WIRE =
          T.let(:EXTERNAL_WIRE, Lithic::Models::ExternalPaymentCreateParams::Category::TaggedSymbol)
        EXTERNAL_ACH = T.let(:EXTERNAL_ACH, Lithic::Models::ExternalPaymentCreateParams::Category::TaggedSymbol)
        EXTERNAL_CHECK =
          T.let(:EXTERNAL_CHECK, Lithic::Models::ExternalPaymentCreateParams::Category::TaggedSymbol)
        EXTERNAL_TRANSFER =
          T.let(:EXTERNAL_TRANSFER, Lithic::Models::ExternalPaymentCreateParams::Category::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalPaymentCreateParams::Category::TaggedSymbol]) }
          def values
          end
        end
      end

      module PaymentType
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentCreateParams::PaymentType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalPaymentCreateParams::PaymentType::TaggedSymbol) }

        DEPOSIT = T.let(:DEPOSIT, Lithic::Models::ExternalPaymentCreateParams::PaymentType::TaggedSymbol)
        WITHDRAWAL = T.let(:WITHDRAWAL, Lithic::Models::ExternalPaymentCreateParams::PaymentType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalPaymentCreateParams::PaymentType::TaggedSymbol]) }
          def values
          end
        end
      end

      module ProgressTo
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentCreateParams::ProgressTo) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Lithic::Models::ExternalPaymentCreateParams::ProgressTo::TaggedSymbol) }

        SETTLED = T.let(:SETTLED, Lithic::Models::ExternalPaymentCreateParams::ProgressTo::TaggedSymbol)
        RELEASED = T.let(:RELEASED, Lithic::Models::ExternalPaymentCreateParams::ProgressTo::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Lithic::Models::ExternalPaymentCreateParams::ProgressTo::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
