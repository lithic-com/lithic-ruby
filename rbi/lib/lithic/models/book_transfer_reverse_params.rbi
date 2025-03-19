# typed: strong

module Lithic
  module Models
    class BookTransferReverseParams < Lithic::BaseModel
      extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # Optional descriptor for the reversal.
      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: String).returns(String) }
      def memo=(_)
      end

      sig do
        params(memo: String, request_options: T.any(Lithic::RequestOptions, T::Hash[Symbol, T.anything]))
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
