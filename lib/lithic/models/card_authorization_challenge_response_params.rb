# frozen_string_literal: true

module Lithic
  module Models
    # @see Lithic::Resources::CardAuthorizations#challenge_response
    class CardAuthorizationChallengeResponseParams < Lithic::Internal::Type::BaseModel
      extend Lithic::Internal::Type::RequestParameters::Converter
      include Lithic::Internal::Type::RequestParameters

      # @!attribute event_token
      #
      #   @return [String]
      required :event_token, String

      # @!attribute response
      #   Whether the cardholder has approved or declined the issued challenge
      #
      #   @return [Symbol, Lithic::Models::CardAuthorizationChallengeResponseParams::Response]
      required :response, enum: -> { Lithic::CardAuthorizationChallengeResponseParams::Response }

      # @!method initialize(event_token:, response:, request_options: {})
      #   @param event_token [String]
      #
      #   @param response [Symbol, Lithic::Models::CardAuthorizationChallengeResponseParams::Response] Whether the cardholder has approved or declined the issued challenge
      #
      #   @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]

      # Whether the cardholder has approved or declined the issued challenge
      module Response
        extend Lithic::Internal::Type::Enum

        APPROVE = :APPROVE
        DECLINE = :DECLINE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
