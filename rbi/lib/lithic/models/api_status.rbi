# typed: strong

module Lithic
  module Models
    class APIStatus < Lithic::BaseModel
      sig { returns(T.nilable(String)) }
      def message
      end

      sig { params(_: String).returns(String) }
      def message=(_)
      end

      sig { params(message: String).returns(T.attached_class) }
      def self.new(message: nil)
      end

      sig { override.returns({message: String}) }
      def to_hash
      end
    end
  end
end
