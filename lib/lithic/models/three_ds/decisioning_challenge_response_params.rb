# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      class DecisioningChallengeResponseParams < Lithic::Models::ThreeDS::ChallengeResponse
        # @!parse
        #   extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # @!parse
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
