# typed: strong

module Lithic
  module Models
    class ResponderEndpointCreateResponse < Lithic::Internal::Type::BaseModel
      # True if the endpoint was enrolled successfully.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enrolled

      sig { params(enrolled: T::Boolean).void }
      attr_writer :enrolled

      sig { params(enrolled: T::Boolean).returns(T.attached_class) }
      def self.new(enrolled: nil); end

      sig { override.returns({enrolled: T::Boolean}) }
      def to_hash; end
    end
  end
end
