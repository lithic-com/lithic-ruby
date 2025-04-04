# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Disputes#retrieve_evidence
    class DisputeRetrieveEvidenceParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute dispute_token
      #
      #   @return [String]
      required :dispute_token, String

      # @!parse
      #   # @param dispute_token [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(dispute_token:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
    end
  end
end
