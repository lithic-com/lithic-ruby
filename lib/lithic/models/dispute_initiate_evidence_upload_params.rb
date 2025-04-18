# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Disputes#initiate_evidence_upload
    class DisputeInitiateEvidenceUploadParams < Lithic::Internal::Type::BaseModel
      # @!parse
      #   extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute [r] filename
      #   Filename of the evidence.
      #
      #   @return [String, nil]
      optional :filename, String

      # @!parse
      #   # @return [String]
      #   attr_writer :filename

      # @!method initialize(filename: nil, request_options: {})
      #   @param filename [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
