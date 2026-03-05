# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::FundingEvents#retrieve
    class FundingEventRetrieveParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute funding_event_token
      #
      #   @return [String]
      required :funding_event_token, String

      # @!method initialize(funding_event_token:, request_options: {})
      #   @param funding_event_token [String]
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
