# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::NetworkPrograms#retrieve
    class NetworkProgramRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute network_program_token
      #
      #   @return [String]
      required :network_program_token, String

      # @!method initialize(network_program_token:, request_options: {})
      #   @param network_program_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
