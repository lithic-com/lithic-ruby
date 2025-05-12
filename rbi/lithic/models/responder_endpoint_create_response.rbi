# typed: strong

module Lithic
  module Models
    class ResponderEndpointCreateResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::Models::ResponderEndpointCreateResponse,
            Lithic::Internal::AnyHash
          )
        end

      # True if the endpoint was enrolled successfully.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enrolled

      sig { params(enrolled: T::Boolean).void }
      attr_writer :enrolled

      sig { params(enrolled: T::Boolean).returns(T.attached_class) }
      def self.new(
        # True if the endpoint was enrolled successfully.
        enrolled: nil
      )
      end

      sig { override.returns({ enrolled: T::Boolean }) }
      def to_hash
      end
    end
  end
end
