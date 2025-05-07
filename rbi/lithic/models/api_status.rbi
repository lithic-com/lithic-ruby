# typed: strong

module Lithic
  module Models
    class APIStatus < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig { params(message: String).returns(T.attached_class) }
      def self.new(message: nil)
      end

      sig { override.returns({ message: String }) }
      def to_hash
      end
    end
  end
end
