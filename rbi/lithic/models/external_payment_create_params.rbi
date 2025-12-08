# typed: strong

module Lithic
  module Models
    class ExternalPaymentCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::ExternalPaymentCreateParams, Lithic::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Lithic::ExternalPaymentCreateParams::Category::OrSymbol) }
      attr_accessor :category

      sig { returns(Date) }
      attr_accessor :effective_date

      sig { returns(String) }
      attr_accessor :financial_account_token

      sig do
        returns(Lithic::ExternalPaymentCreateParams::PaymentType::OrSymbol)
      end
      attr_accessor :payment_type

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig do
        returns(
          T.nilable(Lithic::ExternalPaymentCreateParams::ProgressTo::OrSymbol)
        )
      end
      attr_reader :progress_to

      sig do
        params(
          progress_to: Lithic::ExternalPaymentCreateParams::ProgressTo::OrSymbol
        ).void
      end
      attr_writer :progress_to

      sig { returns(T.nilable(String)) }
      attr_reader :user_defined_id

      sig { params(user_defined_id: String).void }
      attr_writer :user_defined_id

      sig do
        params(
          amount: Integer,
          category: Lithic::ExternalPaymentCreateParams::Category::OrSymbol,
          effective_date: Date,
          financial_account_token: String,
          payment_type:
            Lithic::ExternalPaymentCreateParams::PaymentType::OrSymbol,
          token: String,
          memo: String,
          progress_to:
            Lithic::ExternalPaymentCreateParams::ProgressTo::OrSymbol,
          user_defined_id: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
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
        override.returns(
          {
            amount: Integer,
            category: Lithic::ExternalPaymentCreateParams::Category::OrSymbol,
            effective_date: Date,
            financial_account_token: String,
            payment_type:
              Lithic::ExternalPaymentCreateParams::PaymentType::OrSymbol,
            token: String,
            memo: String,
            progress_to:
              Lithic::ExternalPaymentCreateParams::ProgressTo::OrSymbol,
            user_defined_id: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Category
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ExternalPaymentCreateParams::Category)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXTERNAL_WIRE =
          T.let(
            :EXTERNAL_WIRE,
            Lithic::ExternalPaymentCreateParams::Category::TaggedSymbol
          )
        EXTERNAL_ACH =
          T.let(
            :EXTERNAL_ACH,
            Lithic::ExternalPaymentCreateParams::Category::TaggedSymbol
          )
        EXTERNAL_CHECK =
          T.let(
            :EXTERNAL_CHECK,
            Lithic::ExternalPaymentCreateParams::Category::TaggedSymbol
          )
        EXTERNAL_FEDNOW =
          T.let(
            :EXTERNAL_FEDNOW,
            Lithic::ExternalPaymentCreateParams::Category::TaggedSymbol
          )
        EXTERNAL_RTP =
          T.let(
            :EXTERNAL_RTP,
            Lithic::ExternalPaymentCreateParams::Category::TaggedSymbol
          )
        EXTERNAL_TRANSFER =
          T.let(
            :EXTERNAL_TRANSFER,
            Lithic::ExternalPaymentCreateParams::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ExternalPaymentCreateParams::Category::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module PaymentType
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ExternalPaymentCreateParams::PaymentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEPOSIT =
          T.let(
            :DEPOSIT,
            Lithic::ExternalPaymentCreateParams::PaymentType::TaggedSymbol
          )
        WITHDRAWAL =
          T.let(
            :WITHDRAWAL,
            Lithic::ExternalPaymentCreateParams::PaymentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ExternalPaymentCreateParams::PaymentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module ProgressTo
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::ExternalPaymentCreateParams::ProgressTo)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SETTLED =
          T.let(
            :SETTLED,
            Lithic::ExternalPaymentCreateParams::ProgressTo::TaggedSymbol
          )
        RELEASED =
          T.let(
            :RELEASED,
            Lithic::ExternalPaymentCreateParams::ProgressTo::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Lithic::ExternalPaymentCreateParams::ProgressTo::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
