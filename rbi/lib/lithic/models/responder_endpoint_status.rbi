# typed: strong

module Lithic
  module Models
    class ResponderEndpointStatus < Lithic::BaseModel
      # True if the instance has an endpoint enrolled.
      sig { returns(T.nilable(T::Boolean)) }
      def enrolled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def enrolled=(_)
      end

      # The URL of the currently enrolled endpoint or null.
      sig { returns(T.nilable(String)) }
      def url
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def url=(_)
      end

      sig { params(enrolled: T::Boolean, url: T.nilable(String)).returns(T.attached_class) }
      def self.new(enrolled: nil, url: nil)
      end

      sig { override.returns({enrolled: T::Boolean, url: T.nilable(String)}) }
      def to_hash
      end
    end
  end
end
