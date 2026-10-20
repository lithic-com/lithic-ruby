# typed: strong

module Lithic
  module Models
    class IPRangeRetrieveResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::Models::IPRangeRetrieveResponse,
            Lithic::Internal::AnyHash
          )
        end

      # IP ranges that responder requests are sent from, in CIDR notation
      sig { returns(T::Array[String]) }
      attr_accessor :responders

      # Date and time the IP ranges were last changed
      sig { returns(Time) }
      attr_accessor :updated

      sig do
        params(responders: T::Array[String], updated: Time).returns(
          T.attached_class
        )
      end
      def self.new(
        # IP ranges that responder requests are sent from, in CIDR notation
        responders:,
        # Date and time the IP ranges were last changed
        updated:
      )
      end

      sig { override.returns({ responders: T::Array[String], updated: Time }) }
      def to_hash
      end
    end
  end
end
