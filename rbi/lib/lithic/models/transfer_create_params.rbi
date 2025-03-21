# typed: strong

module Lithic
  module Models
    class TransferCreateParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Amount to be transferred in the currency’s smallest unit (e.g., cents for USD).
      #   This should always be a positive value.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # Globally unique identifier for the financial account or card that will send the
      #   funds. Accepted type dependent on the program's use case.
      sig { returns(String) }
      def from
      end

      sig { params(_: String).returns(String) }
      def from=(_)
      end

      # Globally unique identifier for the financial account or card that will receive
      #   the funds. Accepted type dependent on the program's use case.
      sig { returns(String) }
      def to
      end

      sig { params(_: String).returns(String) }
      def to=(_)
      end

      # Customer-provided token that will serve as an idempotency token. This token will
      #   become the transaction token.
      sig { returns(T.nilable(String)) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Optional descriptor for the transfer.
      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: String).returns(String) }
      def memo=(_)
      end

      sig do
        params(
          amount: Integer,
          from: String,
          to: String,
          token: String,
          memo: String,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
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
