# typed: strong

module Lithic
  module Models
    class RequiredDocument < Lithic::Internal::Type::BaseModel
      # Globally unique identifier for an entity.
      sig { returns(String) }
      attr_accessor :entity_token

      # rovides the status reasons that will be satisfied by providing one of the valid
      #   documents.
      sig { returns(T::Array[String]) }
      attr_accessor :status_reasons

      # A list of valid documents that will satisfy the KYC requirements for the
      #   specified entity.
      sig { returns(T::Array[String]) }
      attr_accessor :valid_documents

      sig do
        params(entity_token: String, status_reasons: T::Array[String], valid_documents: T::Array[String])
          .returns(T.attached_class)
      end
      def self.new(entity_token:, status_reasons:, valid_documents:)
      end

      sig do
        override
          .returns({
                     entity_token: String,
                     status_reasons: T::Array[String],
                     valid_documents: T::Array[String]
                   })
      end
      def to_hash
      end
    end
  end
end
