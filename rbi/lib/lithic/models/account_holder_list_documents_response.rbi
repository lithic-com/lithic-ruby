# typed: strong

module Lithic
  module Models
    class AccountHolderListDocumentsResponse < Lithic::BaseModel
      sig { returns(T.nilable(T::Array[Lithic::Models::Document])) }
      attr_reader :data

      sig { params(data: T::Array[T.any(Lithic::Models::Document, Lithic::Util::AnyHash)]).void }
      attr_writer :data

      sig { params(data: T::Array[T.any(Lithic::Models::Document, Lithic::Util::AnyHash)]).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({data: T::Array[Lithic::Models::Document]}) }
      def to_hash
      end
    end
  end
end
