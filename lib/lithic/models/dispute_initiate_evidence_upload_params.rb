# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Disputes#initiate_evidence_upload
    class DisputeInitiateEvidenceUploadParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute filename
      #   Filename of the evidence.
      #
      #   @return [String, nil]
      optional :filename, String

      # @!method initialize(filename: nil, request_options: {})
      #   @param filename [String] Filename of the evidence.
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
