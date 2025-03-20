# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      class V2DraftParams < Lithic::BaseModel
        # @!parse
        #   extend Lithic::RequestParameters::Converter
        include Lithic::RequestParameters

        # @!attribute parameters
        #   Parameters for the Auth Rule
        #
        #   @return [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, nil]
        optional :parameters, union: -> { Lithic::Models::AuthRules::V2DraftParams::Parameters }, nil?: true

        # @!parse
        #   # @param parameters [Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams, nil]
        #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(parameters: nil, request_options: {}, **) = super

        # def initialize: (Hash | Lithic::BaseModel) -> void

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Union

          variant -> { Lithic::Models::AuthRules::ConditionalBlockParameters }

          variant -> { Lithic::Models::AuthRules::VelocityLimitParams }

          # @!parse
          #   class << self
          #     # @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams)]
          #     def variants; end
          #   end
        end
      end
    end
  end
end
