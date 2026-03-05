# typed: strong

module Lithic
  module Models
    class BookTransferRetryParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::BookTransferRetryParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :book_transfer_token

      # Customer-provided token that will serve as an idempotency token. This token will
      # become the transaction token.
      sig { returns(String) }
      attr_accessor :retry_token

      sig do
        params(
          book_transfer_token: String,
          retry_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        book_transfer_token:,
        # Customer-provided token that will serve as an idempotency token. This token will
        # become the transaction token.
        retry_token:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            book_transfer_token: String,
            retry_token: String,
            request_options: Lithic::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
