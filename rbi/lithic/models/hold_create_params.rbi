# typed: strong

module Lithic
  module Models
    class HoldCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::HoldCreateParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :financial_account_token

      # Amount to hold in cents
      sig { returns(Integer) }
      attr_accessor :amount

      # Customer-provided token for idempotency. Becomes the hold token.
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # When the hold should auto-expire
      sig { returns(T.nilable(Time)) }
      attr_reader :expiration_datetime

      sig { params(expiration_datetime: Time).void }
      attr_writer :expiration_datetime

      # Reason for the hold
      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # User-provided identifier for the hold
      sig { returns(T.nilable(String)) }
      attr_reader :user_defined_id

      sig { params(user_defined_id: String).void }
      attr_writer :user_defined_id

      sig do
        params(
          financial_account_token: String,
          amount: Integer,
          token: String,
          expiration_datetime: Time,
          memo: T.nilable(String),
          user_defined_id: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        financial_account_token:,
        # Amount to hold in cents
        amount:,
        # Customer-provided token for idempotency. Becomes the hold token.
        token: nil,
        # When the hold should auto-expire
        expiration_datetime: nil,
        # Reason for the hold
        memo: nil,
        # User-provided identifier for the hold
        user_defined_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            financial_account_token: String,
            amount: Integer,
            token: String,
            expiration_datetime: Time,
            memo: T.nilable(String),
            user_defined_id: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
