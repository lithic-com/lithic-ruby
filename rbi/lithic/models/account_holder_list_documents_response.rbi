# typed: strong

module Lithic
  module Models
    class AccountHolderListDocumentsResponse < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      sig { returns(T.nilable(T::Array[Lithic::Document])) }
      attr_reader :data

      sig { params(data: T::Array[Lithic::Document::OrHash]).void }
      attr_writer :data

      sig do
        params(data: T::Array[Lithic::Document::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: T::Array[Lithic::Document] }) }
      def to_hash
      end
    end
  end
end
