# frozen_string_literal: true

module Lithic
  module Models
    module AuthRules
      module V2
        # @see Lithic::Resources::AuthRules::V2::Backtests#retrieve
        class BacktestRetrieveParams < Lithic::Internal::Type::BaseModel
          # @!parse
          #   extend Lithic::Internal::Type::RequestParameters::Converter
          include Lithic::Internal::Type::RequestParameters

          # @!attribute auth_rule_token
          #
          #   @return [String]
          required :auth_rule_token, String

          # @!parse
          #   # @param auth_rule_token [String]
          #   # @param request_options [Lithic::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(auth_rule_token:, request_options: {}, **) = super

          # def initialize: (Hash | Lithic::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
