# typed: strong

module Lithic
  module Models
    class BookTransferReverseParams < Lithic::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # Optional descriptor for the reversal.
      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig do
        params(memo: String, request_options: T.any(Lithic::RequestOptions, Lithic::Internal::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(memo: nil, request_options: {})
      end

      sig { override.returns({memo: String, request_options: Lithic::RequestOptions}) }
      def to_hash
      end
    end
  end
end
