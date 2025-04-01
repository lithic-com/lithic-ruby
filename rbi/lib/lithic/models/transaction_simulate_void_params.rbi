# typed: strong

module Lithic
  module Models
    class TransactionSimulateVoidParams < Lithic::BaseModel
      extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # The transaction token returned from the /v1/simulate/authorize response.
      sig { returns(String) }
      attr_accessor :token

      # Amount (in cents) to void. Typically this will match the amount in the original
      #   authorization, but can be less.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { params(amount: Integer).void }
      attr_writer :amount

      # Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`.
      #
      #   - `AUTHORIZATION_EXPIRY` indicates authorization has expired and been reversed
      #     by Lithic.
      #   - `AUTHORIZATION_REVERSAL` indicates authorization was reversed by the merchant.
      sig { returns(T.nilable(Lithic::Models::TransactionSimulateVoidParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Lithic::Models::TransactionSimulateVoidParams::Type::OrSymbol).void }
      attr_writer :type

      sig do
        params(
          token: String,
          amount: Integer,
          type: Lithic::Models::TransactionSimulateVoidParams::Type::OrSymbol,
          request_options: T.any(Lithic::RequestOptions, Lithic::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(token:, amount: nil, type: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              token: String,
              amount: Integer,
              type: Lithic::Models::TransactionSimulateVoidParams::Type::OrSymbol,
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
      module Type
        extend Lithic::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Lithic::Models::TransactionSimulateVoidParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Lithic::Models::TransactionSimulateVoidParams::Type::TaggedSymbol) }

        AUTHORIZATION_EXPIRY =
          T.let(:AUTHORIZATION_EXPIRY, Lithic::Models::TransactionSimulateVoidParams::Type::TaggedSymbol)
        AUTHORIZATION_REVERSAL =
          T.let(:AUTHORIZATION_REVERSAL, Lithic::Models::TransactionSimulateVoidParams::Type::TaggedSymbol)

        sig { override.returns(T::Array[Lithic::Models::TransactionSimulateVoidParams::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
