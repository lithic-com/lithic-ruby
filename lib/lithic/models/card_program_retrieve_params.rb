# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::CardPrograms#retrieve
    class CardProgramRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute card_program_token
      #
      #   @return [String]
      required :card_program_token, String

      # @!method initialize(card_program_token:, request_options: {})
      #   @param card_program_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
