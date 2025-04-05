# frozen_string_literal: true

module Lithic
  module Models
    module Events
      # @see Lithic::Resources::Events::EventSubscriptions#resend
      class EventSubscriptionResendParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!attribute event_token
        #
        #   @return [String]
        required :event_token, String

        # @!parse
        #   # @param event_token [String]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(event_token:, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
      end
    end
  end
end
