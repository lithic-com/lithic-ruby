# frozen_string_literal: true

module Lithic
  module Models
    module ThreeDS
      class DecisioningSimulateChallengeParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # @!attribute [r] token
        #   A unique token returned as part of a /v1/three_ds_authentication/simulate call
        #     that responded with a CHALLENGE_REQUESTED status.
        #
        #   @return [String, nil]
        optional :token, String

        # @!parse
        #   # @return [String]
        #   attr_writer :token

        # @!parse
        #   # @param token [String]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(token: nil, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void
      end
    end
  end
end
