# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Disputes#delete_evidence
    class DisputeDeleteEvidenceParams < Lithic::BaseModel
      # @!parse
      #   extend Lithic::Type::RequestParameters::Converter
      include Lithic::RequestParameters

      # @!attribute dispute_token
      #
      #   @return [String]
      required :dispute_token, String

      # @!parse
      #   # @param dispute_token [String]
      #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(dispute_token:, request_options: {}, **) = super

      # def initialize: (Hash | Lithic::BaseModel) -> void
    end
  end
end
