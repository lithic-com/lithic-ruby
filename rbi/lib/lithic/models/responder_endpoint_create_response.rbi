# typed: strong

module Lithic
  module Models
    class ResponderEndpointCreateResponse < Lithic::BaseModel
      # True if the endpoint was enrolled successfully.
      sig { returns(T.nilable(T::Boolean)) }
      def enrolled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def enrolled=(_)
      end

      sig { params(enrolled: T::Boolean).returns(T.attached_class) }
      def self.new(enrolled: nil)
      end

      sig { override.returns({enrolled: T::Boolean}) }
      def to_hash
      end
    end
  end
end
