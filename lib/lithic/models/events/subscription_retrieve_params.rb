# frozen_string_literal: true

module Lithic
  module Models
    module Events
      # @see Lithic::Resources::Events::Subscriptions#retrieve
      class SubscriptionRetrieveParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

        # @!parse
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
