# typed: strong

module Lithic
  module Models
    class ResponderEndpointStatus < Lithic::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Lithic::Internal::AnyHash) }

      # True if the instance has an endpoint enrolled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enrolled

      sig { params(enrolled: T::Boolean).void }
      attr_writer :enrolled

      # The URL of the currently enrolled endpoint or null.
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      sig do
        params(enrolled: T::Boolean, url: T.nilable(String)).returns(
          T.attached_class
        )
      end
      def self.new(
        # True if the instance has an endpoint enrolled.
        enrolled: nil,
        # The URL of the currently enrolled endpoint or null.
        url: nil
      )
      end

      sig { override.returns({ enrolled: T::Boolean, url: T.nilable(String) }) }
      def to_hash
      end
    end
  end
end
