# typed: strong

module Lithic
  module Models
    class CardProvisionResponse < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Lithic::Models::CardProvisionResponse,
            Lithic::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :provisioning_payload

      sig { params(provisioning_payload: String).void }
      attr_writer :provisioning_payload

      sig { params(provisioning_payload: String).returns(T.attached_class) }
      def self.new(provisioning_payload: nil)
      end

      sig { override.returns({ provisioning_payload: String }) }
      def to_hash
      end
    end
  end
end
