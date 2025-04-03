# typed: strong

module Lithic
  module Models
    class AccountHolderListDocumentsResponse < Lithic::Internal::Type::BaseModel
      sig { returns(T.nilable(T::Array[Lithic::Models::Document])) }
      attr_reader :data

      sig { params(data: T::Array[T.any(Lithic::Models::Document, Lithic::Internal::AnyHash)]).void }
      attr_writer :data

      sig do
        params(data: T::Array[T.any(Lithic::Models::Document, Lithic::Internal::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({data: T::Array[Lithic::Models::Document]}) }
      def to_hash
      end
    end
  end
end
