# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Tokenizations#create
    class TokenizationCreateParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute card_token
      #
      #   @return [String]
      required :card_token, String

      # @!attribute agent_token
      #   Globally unique identifier for the active agent configured for your program
      #
      #   @return [String]
      required :agent_token, String

      # @!attribute type
      #   Type of tokenization to create
      #
      #   @return [Symbol, Lithic::Models::TokenizationCreateParams::Type]
      required :type, enum: -> { Lithic::TokenizationCreateParams::Type }

      # @!method initialize(card_token:, agent_token:, type:, request_options: {})
      #   @param card_token [String]
      #
      #   @param agent_token [String] Globally unique identifier for the active agent configured for your program
      #
      #   @param type [Symbol, Lithic::Models::TokenizationCreateParams::Type] Type of tokenization to create
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Type of tokenization to create
      module Type
        extend Lithic::Internal::Type::Enum

        AGENT = :AGENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
