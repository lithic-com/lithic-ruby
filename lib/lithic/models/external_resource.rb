# frozen_string_literal: true

module Lithic
  module Models
    class ExternalResource < Lithic::Internal::Type::BaseModel
      # @!attribute external_resource_token
      #   Token identifying the external resource
      #
      #   @return [String]
      required :external_resource_token, String

      # @!attribute external_resource_type
      #   Type of external resource associated with the management operation
      #
      #   @return [Symbol, Lithic::Models::ExternalResourceType]
      required :external_resource_type, enum: -> { Lithic::ExternalResourceType }

      # @!attribute external_resource_sub_token
      #   Token identifying the external resource sub-resource
      #
      #   @return [String, nil]
      optional :external_resource_sub_token, String

      # @!method initialize(external_resource_token:, external_resource_type:, external_resource_sub_token: nil)
      #   External resource associated with the management operation
      #
      #   @param external_resource_token [String] Token identifying the external resource
      #
      #   @param external_resource_type [Symbol, Lithic::Models::ExternalResourceType] Type of external resource associated with the management operation
      #
      #   @param external_resource_sub_token [String] Token identifying the external resource sub-resource
    end
  end
end
