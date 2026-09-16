# typed: strong

module Lithic
  module Models
    class PaymentRetryParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::PaymentRetryParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :payment_token

      # Settlement speed to retry the payment at. Defaults to the original payment's
      # method. An `ACH_SAME_DAY` retry is rejected if the payment is for $1,000,000.00
      # or more, or if it is submitted after the same day ACH cutoff
      sig { returns(T.nilable(Lithic::PaymentRetryParams::Method::OrSymbol)) }
      attr_reader :method_

      sig { params(method_: Lithic::PaymentRetryParams::Method::OrSymbol).void }
      attr_writer :method_

      sig do
        params(
          payment_token: String,
          method_: Lithic::PaymentRetryParams::Method::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        payment_token:,
        # Settlement speed to retry the payment at. Defaults to the original payment's
        # method. An `ACH_SAME_DAY` retry is rejected if the payment is for $1,000,000.00
        # or more, or if it is submitted after the same day ACH cutoff
        method_: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            payment_token: String,
            method_: Lithic::PaymentRetryParams::Method::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Settlement speed to retry the payment at. Defaults to the original payment's
      # method. An `ACH_SAME_DAY` retry is rejected if the payment is for $1,000,000.00
      # or more, or if it is submitted after the same day ACH cutoff
      module Method
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Lithic::PaymentRetryParams::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH_NEXT_DAY =
          T.let(:ACH_NEXT_DAY, Lithic::PaymentRetryParams::Method::TaggedSymbol)
        ACH_SAME_DAY =
          T.let(:ACH_SAME_DAY, Lithic::PaymentRetryParams::Method::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Lithic::PaymentRetryParams::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
