# frozen_string_literal: true

module Lithic
  module Models
    class DisputeInitiateEvidenceUploadParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute [r] filename
      #   Filename of the evidence.
      #
      #   @return [String, nil]
      optional :filename, String

      # @!parse
      #   # @return [String]
      #   attr_writer :filename

      # @!parse
      #   # @param filename [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(filename: nil, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
