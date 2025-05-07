# typed: strong

module Lithic
  module Models
    class BookTransferReverseParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # Optional descriptor for the reversal.
      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig do
        params(
          memo: String,
          request_options: Lithic::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Optional descriptor for the reversal.
        memo: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { memo: String, request_options: Lithic::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
