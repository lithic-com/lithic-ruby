# typed: strong

module Lithic
  module Models
    class TokenizationSimulateResponse < Lithic::BaseModel
      sig { returns(T.nilable(T::Array[Lithic::Models::Tokenization])) }
      attr_reader :data

      sig { params(data: T::Array[T.any(Lithic::Models::Tokenization, Lithic::Util::AnyHash)]).void }
      attr_writer :data

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
