# typed: strong

module Lithic
  module Models
    class ExternalResource < Lithic::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Lithic::ExternalResource, Lithic::Internal::AnyHash)
        end

      # Token identifying the external resource
      sig { returns(String) }
      attr_accessor :external_resource_token

      # Type of external resource associated with the management operation
      sig { returns(Lithic::ExternalResourceType::TaggedSymbol) }
      attr_accessor :external_resource_type

      # Token identifying the external resource sub-resource
      sig { returns(T.nilable(String)) }
      attr_reader :external_resource_sub_token

      sig { params(external_resource_sub_token: String).void }
      attr_writer :external_resource_sub_token

      # External resource associated with the management operation
      sig do
        params(
          external_resource_token: String,
          external_resource_type: Lithic::ExternalResourceType::OrSymbol,
          external_resource_sub_token: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Token identifying the external resource
        external_resource_token:,
        # Type of external resource associated with the management operation
        external_resource_type:,
        # Token identifying the external resource sub-resource
        external_resource_sub_token: nil
      )
      end

      sig do
        override.returns(
          {
            external_resource_token: String,
            external_resource_type: Lithic::ExternalResourceType::TaggedSymbol,
            external_resource_sub_token: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
