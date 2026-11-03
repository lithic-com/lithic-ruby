# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#submit_tfa
    class TokenizationSubmitTfaParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute tokenization_token
      #
      #   @return [String]
      required :tokenization_token, String

      # @!attribute value
      #   One-time authentication code received by the cardholder, including any leading
      #   zeros
      #
      #   @return [String]
      required :value, String

      # @!method initialize(tokenization_token:, value:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Lithic::Models::TokenizationSubmitTfaParams} for more details.
      #
      #   @param tokenization_token [String]
      #
      #   @param value [String] One-time authentication code received by the cardholder, including any leading z
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
