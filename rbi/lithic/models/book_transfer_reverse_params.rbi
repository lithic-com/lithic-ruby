# typed: strong

module Lithic
  module Models
    class BookTransferReverseParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Lithic::BookTransferReverseParams, Lithic::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :book_transfer_token

      # Optional descriptor for the reversal.
      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig do
        params(
          book_transfer_token: String,
          memo: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        book_transfer_token:,
        # Optional descriptor for the reversal.
        memo: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            book_transfer_token: String,
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
