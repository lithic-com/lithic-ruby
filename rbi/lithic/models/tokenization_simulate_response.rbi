# typed: strong

module Lithic
  module Models
    class TokenizationSimulateResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::Models::TokenizationSimulateResponse,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Lithic::Tokenization])) }
      attr_reader :data

      sig { params(data: T::Array[Lithic::Tokenization::OrHash]).void }
      attr_writer :data

      sig do
        params(data: T::Array[Lithic::Tokenization::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: T::Array[Lithic::Tokenization] }) }
      def to_hash
      end
    end
  end
end
