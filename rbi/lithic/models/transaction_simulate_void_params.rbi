# typed: strong

module Lithic
  module Models
    class TransactionSimulateVoidParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::TransactionSimulateVoidParams,
            Lithic::Internal::AnyHash
          )
        end

      # The transaction token returned from the /v1/simulate/authorize response.
      sig { returns(String) }
      attr_accessor :token

      # Amount (in cents) to void. Typically this will match the amount in the original
      # authorization, but can be less. Applies to authorization reversals only. An
      # authorization expiry will always apply to the full pending amount.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { params(amount: Integer).void }
      attr_writer :amount

      # Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`.
      #
      # - `AUTHORIZATION_EXPIRY` indicates authorization has expired and been reversed
      #   by Lithic.
      # - `AUTHORIZATION_REVERSAL` indicates authorization was reversed by the merchant.
      sig do
        returns(
          T.nilable(Lithic::TransactionSimulateVoidParams::Type::OrSymbol)
        )
      end
      attr_reader :type

      sig do
        params(type: Lithic::TransactionSimulateVoidParams::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          token: String,
          amount: Integer,
          type: Lithic::TransactionSimulateVoidParams::Type::OrSymbol,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The transaction token returned from the /v1/simulate/authorize response.
        token:,
        # Amount (in cents) to void. Typically this will match the amount in the original
        # authorization, but can be less. Applies to authorization reversals only. An
        # authorization expiry will always apply to the full pending amount.
        amount: nil,
        # Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`.
        #
        # - `AUTHORIZATION_EXPIRY` indicates authorization has expired and been reversed
        #   by Lithic.
        # - `AUTHORIZATION_REVERSAL` indicates authorization was reversed by the merchant.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            token: String,
            amount: Integer,
            type: Lithic::TransactionSimulateVoidParams::Type::OrSymbol,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Type of event to simulate. Defaults to `AUTHORIZATION_REVERSAL`.
      #
      # - `AUTHORIZATION_EXPIRY` indicates authorization has expired and been reversed
      #   by Lithic.
      # - `AUTHORIZATION_REVERSAL` indicates authorization was reversed by the merchant.
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::TransactionSimulateVoidParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZATION_EXPIRY =
          T.let(
            :AUTHORIZATION_EXPIRY,
            Lithic::TransactionSimulateVoidParams::Type::TaggedSymbol
          )
        AUTHORIZATION_REVERSAL =
          T.let(
            :AUTHORIZATION_REVERSAL,
            Lithic::TransactionSimulateVoidParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::TransactionSimulateVoidParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
