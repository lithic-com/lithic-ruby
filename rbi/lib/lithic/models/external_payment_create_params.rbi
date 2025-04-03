# typed: strong

module Lithic
  module Models
    class ExternalPaymentCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Lithic::Models::ExternalPaymentCreateParams::Category::OrSymbol) }
      attr_accessor :category

      sig { returns(Date) }
      attr_accessor :effective_date

      sig { returns(String) }
      attr_accessor :financial_account_token

      sig { returns(Lithic::Models::ExternalPaymentCreateParams::PaymentType::OrSymbol) }
      attr_accessor :payment_type

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig { returns(T.nilable(Lithic::Models::ExternalPaymentCreateParams::ProgressTo::OrSymbol)) }
      attr_reader :progress_to

      sig { params(progress_to: Lithic::Models::ExternalPaymentCreateParams::ProgressTo::OrSymbol).void }
      attr_writer :progress_to

      sig { returns(T.nilable(String)) }
      attr_reader :user_defined_id

      sig { params(user_defined_id: String).void }
      attr_writer :user_defined_id

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
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
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
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentCreateParams::Category) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::ExternalPaymentCreateParams::Category::TaggedSymbol) }

        EXTERNAL_WIRE =
          T.let(:EXTERNAL_WIRE, Lithic::Models::ExternalPaymentCreateParams::Category::TaggedSymbol)
        EXTERNAL_ACH = T.let(:EXTERNAL_ACH, Lithic::Models::ExternalPaymentCreateParams::Category::TaggedSymbol)
        EXTERNAL_CHECK =
          T.let(:EXTERNAL_CHECK, Lithic::Models::ExternalPaymentCreateParams::Category::TaggedSymbol)
        EXTERNAL_TRANSFER =
          T.let(:EXTERNAL_TRANSFER, Lithic::Models::ExternalPaymentCreateParams::Category::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalPaymentCreateParams::Category::TaggedSymbol]) }
        def self.values
        end
      end

      module PaymentType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentCreateParams::PaymentType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::ExternalPaymentCreateParams::PaymentType::TaggedSymbol) }

        DEPOSIT = T.let(:DEPOSIT, Lithic::Models::ExternalPaymentCreateParams::PaymentType::TaggedSymbol)
        WITHDRAWAL = T.let(:WITHDRAWAL, Lithic::Models::ExternalPaymentCreateParams::PaymentType::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalPaymentCreateParams::PaymentType::TaggedSymbol]) }
        def self.values
        end
      end

      module ProgressTo
        extend Lithic::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::ExternalPaymentCreateParams::ProgressTo) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::ExternalPaymentCreateParams::ProgressTo::TaggedSymbol) }

        SETTLED = T.let(:SETTLED, Lithic::Models::ExternalPaymentCreateParams::ProgressTo::TaggedSymbol)
        RELEASED = T.let(:RELEASED, Lithic::Models::ExternalPaymentCreateParams::ProgressTo::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::ExternalPaymentCreateParams::ProgressTo::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
