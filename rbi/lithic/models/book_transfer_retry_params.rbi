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

      # Globally unique identifier for the retry.
      sig { returns(String) }
      attr_accessor :retry_token

      sig do
        params(
          retry_token: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Globally unique identifier for the retry.
        retry_token:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { retry_token: String, request_options: Lithic::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
