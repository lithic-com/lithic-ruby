# typed: strong

module Lithic
  module Models
    class TransactionSimulateVoidParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # The transaction token returned from the /v1/simulate/authorize response.
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      # Amount (in cents) to void. Typically this will match the amount in the original
      #   authorization, but can be less.
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`.
      #
      #   - `AUTHORIZATION_EXPIRY` indicates authorization has expired and been reversed
      #     by Lithic.
      #   - `AUTHORIZATION_REVERSAL` indicates authorization was reversed by the merchant.
      sig { returns(T.nilable(Symbol)) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
          token: String,
          amount: Integer,
          type: Symbol,
          request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(token:, amount: nil, type: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            token: String,
            amount: Integer,
            type: Symbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`.
      #
      #   - `AUTHORIZATION_EXPIRY` indicates authorization has expired and been reversed
      #     by Lithic.
      #   - `AUTHORIZATION_REVERSAL` indicates authorization was reversed by the merchant.
      class Type < Lithic::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        AUTHORIZATION_EXPIRY = :AUTHORIZATION_EXPIRY
        AUTHORIZATION_REVERSAL = :AUTHORIZATION_REVERSAL
      end
    end
  end
end
