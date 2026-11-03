# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#select_tfa_method
    class TokenizationSelectTfaMethodParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute tokenization_token
      #
      #   @return [String]
      required :tokenization_token, String

      # @!attribute method_
      #   An available method from the tokenization's list of tfa_methods
      #
      #   @return [Symbol, Lithic::Models::TokenizationSelectTfaMethodParams::Method]
      required :method_, enum: -> { Lithic::TokenizationSelectTfaMethodParams::Method }, api_name: :method

      # @!method initialize(tokenization_token:, method_:, request_options: {})
      #   @param tokenization_token [String]
      #
      #   @param method_ [Symbol, Lithic::Models::TokenizationSelectTfaMethodParams::Method] An available method from the tokenization's list of tfa_methods
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # An available method from the tokenization's list of tfa_methods
      module Method
        extend Lithic::Internal::Type::Enum

        SMS = :SMS
        EMAIL = :EMAIL

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
