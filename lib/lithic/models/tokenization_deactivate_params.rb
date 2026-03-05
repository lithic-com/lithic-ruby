# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#deactivate
    class TokenizationDeactivateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute tokenization_token
      #
      #   @return [String]
      required :tokenization_token, String

      # @!method initialize(tokenization_token:, request_options: {})
      #   @param tokenization_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
