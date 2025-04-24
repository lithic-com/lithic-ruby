# frozen_string_literal: true

module Lithic
  module Models
    class RequiredDocument < Lithic::Internal::Type::BaseModel
      # @!attribute entity_token
      #   Globally unique identifier for an entity.
      #
      #   @return [String]
      required :entity_token, String

      # @!attribute status_reasons
      #   rovides the status reasons that will be satisfied by providing one of the valid
      #   documents.
      #
      #   @return [Array<String>]
      required :status_reasons, Lithic::Internal::Type::ArrayOf[String]

      # @!attribute valid_documents
      #   A list of valid documents that will satisfy the KYC requirements for the
      #   specified entity.
      #
      #   @return [Array<String>]
      required :valid_documents, Lithic::Internal::Type::ArrayOf[String]

      # @!method initialize(entity_token:, status_reasons:, valid_documents:)
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::RequiredDocument} for more details.
      #
      #   @param entity_token [String] Globally unique identifier for an entity.
      #
      #   @param status_reasons [Array<String>] rovides the status reasons that will be satisfied by providing one of the valid
      #   ...
      #
      #   @param valid_documents [Array<String>] A list of valid documents that will satisfy the KYC requirements for the specifi
      #   ...
    end
  end
end
