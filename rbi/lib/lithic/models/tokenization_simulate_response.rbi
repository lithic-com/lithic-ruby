# typed: strong

module Lithic
  module Models
    class TokenizationSimulateResponse < Lithic::BaseModel
      sig { returns(T.nilable(T::Array[Lithic::Models::Tokenization])) }
      def data
      end

      sig { params(_: T::Array[Lithic::Models::Tokenization]).returns(T::Array[Lithic::Models::Tokenization]) }
      def data=(_)
      end

      sig { params(data: T::Array[Lithic::Models::Tokenization]).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({data: T::Array[Lithic::Models::Tokenization]}) }
      def to_hash
      end
    end
  end
end
