# typed: strong

module Lithic
  module Models
    class TransferCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
      #   This should always be a positive value.
      sig { returns(Integer) }
      attr_accessor :amount

      # Globally unique identifier for the financial account or card that will send the
      #   funds. Accepted type dependent on the program's use case.
      sig { returns(String) }
      attr_accessor :from

      # Globally unique identifier for the financial account or card that will receive
      #   the funds. Accepted type dependent on the program's use case.
      sig { returns(String) }
      attr_accessor :to

      # Customer-provided token that will serve as an idempotency token. This token will
      #   become the transaction token.
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # Optional descriptor for the transfer.
      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig do
        params(
          amount: Integer,
          from: String,
          to: String,
          token: String,
          memo: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(amount:, from:, to:, token: nil, memo: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              from: String,
              to: String,
              token: String,
              memo: String,
              request_options: Lithic::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
