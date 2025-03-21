# typed: strong

module Lithic
  module Models
    class TokenizationSimulateResponse < Lithic::BaseModel
      sig { returns(T.nilable(T::Array[Lithic::Models::Tokenization])) }
      def data
      end

      sig do
        params(_: T::Array[T.any(Lithic::Models::Tokenization, Lithic::Util::AnyHash)])
          .returns(T::Array[T.any(Lithic::Models::Tokenization, Lithic::Util::AnyHash)])
      end
      def data=(_)
      end

      sig do
        params(data: T::Array[T.any(Lithic::Models::Tokenization, Lithic::Util::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({data: T::Array[Lithic::Models::Tokenization]}) }
      def to_hash
      end
    end
  end
end
