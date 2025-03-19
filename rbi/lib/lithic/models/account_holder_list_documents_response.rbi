# typed: strong

module Lithic
  module Models
    class AccountHolderListDocumentsResponse < Lithic::BaseModel
      sig { returns(T.nilable(T::Array[Lithic::Models::Document])) }
      def data
      end

      sig { params(_: T::Array[Lithic::Models::Document]).returns(T::Array[Lithic::Models::Document]) }
      def data=(_)
      end

      sig { params(data: T::Array[Lithic::Models::Document]).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({data: T::Array[Lithic::Models::Document]}) }
      def to_hash
      end
    end
  end
end
