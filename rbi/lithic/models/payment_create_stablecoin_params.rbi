# typed: strong

module Lithic
  module Models
    class PaymentCreateStablecoinParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Lithic::PaymentCreateStablecoinParams,
            Lithic::Internal::AnyHash
          )
        end

      # Payout amount in cents
      sig { returns(Integer) }
      attr_accessor :amount

      # Token of the blockchain recipient to send the payout to. The recipient must be
      # in the `ENABLED` verification state
      sig { returns(String) }
      attr_accessor :blockchain_recipient_token

      # Token of the financial account the payout is funded from
      sig { returns(String) }
      attr_accessor :financial_account_token

      # Direction of the payment. Stablecoin supports payouts only
      sig { returns(Lithic::PaymentCreateStablecoinParams::Type::OrSymbol) }
      attr_accessor :type

      # Customer-provided token that will serve as an idempotency token. This token will
      # become the transaction token
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # Optional hold to settle when this payout is initiated
      sig { returns(T.nilable(Lithic::PaymentCreateStablecoinParams::Hold)) }
      attr_reader :hold

      sig do
        params(hold: Lithic::PaymentCreateStablecoinParams::Hold::OrHash).void
      end
      attr_writer :hold

      # Memo recorded on the payout. Defaults to `Stablecoin payout on <chain>` when
      # omitted
      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig do
        params(
          amount: Integer,
          blockchain_recipient_token: String,
          financial_account_token: String,
          type: Lithic::PaymentCreateStablecoinParams::Type::OrSymbol,
          token: String,
          hold: Lithic::PaymentCreateStablecoinParams::Hold::OrHash,
          memo: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Payout amount in cents
        amount:,
        # Token of the blockchain recipient to send the payout to. The recipient must be
        # in the `ENABLED` verification state
        blockchain_recipient_token:,
        # Token of the financial account the payout is funded from
        financial_account_token:,
        # Direction of the payment. Stablecoin supports payouts only
        type:,
        # Customer-provided token that will serve as an idempotency token. This token will
        # become the transaction token
        token: nil,
        # Optional hold to settle when this payout is initiated
        hold: nil,
        # Memo recorded on the payout. Defaults to `Stablecoin payout on <chain>` when
        # omitted
        memo: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            blockchain_recipient_token: String,
            financial_account_token: String,
            type: Lithic::PaymentCreateStablecoinParams::Type::OrSymbol,
            token: String,
            hold: Lithic::PaymentCreateStablecoinParams::Hold,
            memo: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Direction of the payment. Stablecoin supports payouts only
      module Type
        extend Lithic::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Lithic::PaymentCreateStablecoinParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT =
          T.let(
            :PAYMENT,
            Lithic::PaymentCreateStablecoinParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Lithic::PaymentCreateStablecoinParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Hold < Lithic::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Lithic::PaymentCreateStablecoinParams::Hold,
              Lithic::Internal::AnyHash
            )
          end

        # Token of the hold to settle when this payout is initiated
        sig { returns(String) }
        attr_accessor :token

        # Optional hold to settle when this payout is initiated
        sig { params(token: String).returns(T.attached_class) }
        def self.new(
          # Token of the hold to settle when this payout is initiated
          token:
        )
        end

        sig { override.returns({ token: String }) }
        def to_hash
        end
      end
    end
  end
end
