# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Disputes#delete_evidence
    class DisputeDeleteEvidenceParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute dispute_token
      #
      #   @return [String]
      required :dispute_token, String

      # @!method initialize(dispute_token:, request_options: {})
      #   @param dispute_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
