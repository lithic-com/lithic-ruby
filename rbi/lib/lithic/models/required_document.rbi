# typed: strong

module Lithic
  module Models
    class RequiredDocument < Lithic::BaseModel
      # Globally unique identifier for an entity.
      sig { returns(String) }
      def entity_token
      end

      sig { params(_: String).returns(String) }
      def entity_token=(_)
      end

      # rovides the status reasons that will be satisfied by providing one of the valid
      #   documents.
      sig { returns(T::Array[String]) }
      def status_reasons
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def status_reasons=(_)
      end

      # A list of valid documents that will satisfy the KYC requirements for the
      #   specified entity.
      sig { returns(T::Array[String]) }
      def valid_documents
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def valid_documents=(_)
      end

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
