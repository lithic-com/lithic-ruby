# typed: strong

module Lithic
  module Models
    class TransactionSimulateReturnParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::TransactionSimulateReturnParams,
            Lithic::Internal::AnyHash
          )
        end

      # Amount (in cents) to authorize.
      sig { returns(Integer) }
      attr_accessor :amount

      # Merchant descriptor.
      sig { returns(String) }
      attr_accessor :descriptor

      # Sixteen digit card number.
      sig { returns(String) }
      attr_accessor :pan

      # 3-character alphabetic ISO 4217 currency code for the cardholder billing amount.
      # Permitted values are USD, GBP, EUR and CAD, and any other ISO 4217 code returns
      # a 422. Defaults to USD
      sig { returns(T.nilable(String)) }
      attr_reader :billing_currency

      sig { params(billing_currency: String).void }
      attr_writer :billing_currency

      # 3-character alphabetic ISO 4217 currency code for the settlement amount.
      # Permitted values are USD, GBP, EUR and CAD, and any other ISO 4217 code returns
      # a 422. Defaults to the value of billing_currency
      sig { returns(T.nilable(String)) }
      attr_reader :settlement_currency

      sig { params(settlement_currency: String).void }
      attr_writer :settlement_currency

      sig do
        params(
          amount: Integer,
          descriptor: String,
          pan: String,
          billing_currency: String,
          settlement_currency: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount (in cents) to authorize.
        amount:,
        # Merchant descriptor.
        descriptor:,
        # Sixteen digit card number.
        pan:,
        # 3-character alphabetic ISO 4217 currency code for the cardholder billing amount.
        # Permitted values are USD, GBP, EUR and CAD, and any other ISO 4217 code returns
        # a 422. Defaults to USD
        billing_currency: nil,
        # 3-character alphabetic ISO 4217 currency code for the settlement amount.
        # Permitted values are USD, GBP, EUR and CAD, and any other ISO 4217 code returns
        # a 422. Defaults to the value of billing_currency
        settlement_currency: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            descriptor: String,
            pan: String,
            billing_currency: String,
            settlement_currency: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
