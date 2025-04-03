# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      # @see Lithic::Resources::AuthRules::V2#draft
      class V2DraftParams < Lithic::Internal::Type::BaseModel
        # @!parse
        #   extend Lithic::Internal::Type::RequestParameters::Converter
        include Lithic::Internal::Type::RequestParameters

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

        # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void

        # Parameters for the Auth Rule
        module Parameters
          extend Lithic::Internal::Type::Union

          variant -> { Lithic::Models::AuthRules::ConditionalBlockParameters }

          variant -> { Lithic::Models::AuthRules::VelocityLimitParams }

          # @!parse
          #   # @return [Array(Lithic::Models::AuthRules::ConditionalBlockParameters, Lithic::Models::AuthRules::VelocityLimitParams)]
          #   def self.variants; end
        end
      end
    end
  end
end
