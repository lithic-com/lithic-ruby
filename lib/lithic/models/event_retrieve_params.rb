# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::Events#retrieve
    class EventRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute event_token
      #
      #   @return [String]
      required :event_token, String

      # @!method initialize(event_token:, request_options: {})
      #   @param event_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
